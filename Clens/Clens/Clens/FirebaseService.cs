using Firebase.Database;
using Firebase.Database.Query;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
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

    public async Task<List<HistoryItem>> GetHistoryItems()
    {
        var items = await _firebaseClient
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
        await _firebaseClient.Child("History").Child(item.Id).DeleteAsync();
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
