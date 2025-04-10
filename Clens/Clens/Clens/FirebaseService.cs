using Firebase.Database;
using Firebase.Database.Query;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using static Clens.HistoryPage;

public class FirebaseService
{
    private readonly FirebaseClient _firebaseClient;

    public FirebaseService()
    {
        _firebaseClient = new FirebaseClient("https://clensdatabase-default-rtdb.firebaseio.com/");

    }

    public async Task<string> GetUserUidAsync()
    {
        try
        {
            var token = await SecureStorage.GetAsync("UserToken");

            if (string.IsNullOrEmpty(token) || token is null)
            {
                return null;
            }

            var httpClient = new HttpClient();

            var uri = $"https://identitytoolkit.googleapis.com/v1/accounts:lookup?key=AIzaSyBNpyK0Xw_ycD_o8ns7aTkNT6WNXKHUY8s";

            var content = new StringContent(
                JsonConvert.SerializeObject(new { idToken = token }),
                Encoding.UTF8,
                "application/json");

            var response = await httpClient.PostAsync(uri, content);

            if (!response.IsSuccessStatusCode)
            {
                if (response.StatusCode == System.Net.HttpStatusCode.BadRequest)
                {
                    await SecureStorage.SetAsync("UserToken", "");
                    return null;
                }

                var errorContent = await response.Content.ReadAsStringAsync();
                throw new FirebaseAuthException($"Firebase error: {errorContent}");
            }

            var responseString = await response.Content.ReadAsStringAsync();
            var jObject = JObject.Parse(responseString);

            return (string)jObject["users"]?[0]?["localId"];
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"UID request error: {ex.Message}");
            return null;
        }
    }

    public class FirebaseAuthException : Exception
    {
        public FirebaseAuthException(string message) : base(message) { }
    }



    public async Task<List<HistoryItem>> GetHistoryItems()
    {
        string userUid = await GetUserUidAsync();
        var items = await _firebaseClient
        .Child("Users")
        .Child(userUid)
        .Child("History")
        .OnceAsync<HistoryItem>();

        return items.Select(item => new HistoryItem
        {
            Id = item.Key,
            StartDate = item.Object.StartDate,
            EndDate = item.Object.EndDate,
            Type = item.Object.Type
        }).ToList();
    }

    public async Task DeleteHistoryItem(HistoryItem item)
    {
        string userUid = await GetUserUidAsync();
        await _firebaseClient.Child("Users").Child(userUid).Child("History").Child(item.Id).DeleteAsync();
    }

    public IDisposable ListenToHistoryItems(Action<List<HistoryItem>> onUpdated)
    {
        return _firebaseClient
            .Child("History")
            .AsObservable<HistoryItem>()
            .Subscribe(d =>
            {
                var items = GetHistoryItems().Result;
                onUpdated(items);
            });
    }
}
