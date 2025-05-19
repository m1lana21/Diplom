using CloudinaryDotNet;
using CloudinaryDotNet.Actions;
using Firebase.Auth;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

public class CloudinaryService
{
    private static readonly Lazy<Cloudinary> _cloudinary = new Lazy<Cloudinary>(() =>
    {
        var account = new Account(
            "dvvm0d1y1",
            "334742253437171",
            "17UZNYZSgl-YYrXWkFXpQF-RF3c"
        );
        return new Cloudinary(account) { Api = { Secure = true } };
    });

    public static Cloudinary Instance => _cloudinary.Value;

    public async Task<List<CloudinaryFile>> GetUserFilesAsync(string userId)
    {
        try
        {
            var files = new List<CloudinaryFile>();

            // Получаем изображения
            var imagesResult = await Instance.ListResourcesAsync(new ListResourcesParams
            {
                Type = "upload",
                ResourceType = ResourceType.Image,
                MaxResults = 100
            });

            foreach (var resource in imagesResult.Resources
                .Where(r => r.PublicId.StartsWith($"users/{userId}/")))
            {
                files.Add(new CloudinaryFile
                {
                    Filename = Path.GetFileName(resource.PublicId),
                    PublicId = resource.PublicId,
                    Url = resource.SecureUrl.ToString()
                });
            }

            // Получаем PDF-файлы
            var pdfsResult = await Instance.ListResourcesAsync(new ListResourcesParams
            {
                Type = "upload",
                ResourceType = ResourceType.Raw,
                MaxResults = 100
            });

            foreach (var resource in pdfsResult.Resources
                .Where(r => r.PublicId.StartsWith($"users/{userId}/")))
            {
                files.Add(new CloudinaryFile
                {
                    Filename = Path.GetFileName(resource.PublicId),
                    PublicId = resource.PublicId,
                    Url = resource.SecureUrl.ToString()
                });
            }

            return files.OrderByDescending(f => f.Filename).ToList();
        }
        catch (Exception ex)
        {
            throw new Exception($"Ошибка при получении файлов: {ex.Message}");
        }
    }

    public async Task DeleteFileAsync(string publicId, string userId)
    {
        try
        {
            var resourceType = publicId.Contains($"users/{userId}/")
                ? ResourceType.Raw
                : ResourceType.Image;

            var result = await Instance.DestroyAsync(new DeletionParams(publicId)
            {
                ResourceType = resourceType
            });

            if (result.Result != "ok")
                throw new Exception(result.Error?.Message ?? "Неизвестная ошибка");
        }
        catch (Exception ex)
        {
            throw new Exception($"Ошибка при удалении файла: {ex.Message}");
        }
    }
}

public class CloudinaryFile
{
    public string Filename { get; set; }
    public string PublicId { get; set; }
    public string Url { get; set; }
}