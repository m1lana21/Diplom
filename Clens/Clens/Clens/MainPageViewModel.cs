using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;

namespace Clens
{
    public class MainPageViewModel
    {
        // Список историй ношения линз
        public ObservableCollection<LensHistory> HistoryItems { get; private set; }

        // Флаг для отображения предупреждения
        private bool _showWarning = false;
        public bool ShowWarning
        {
            get => _showWarning;
            set
            {
                if (_showWarning != value)
                {
                    _showWarning = value;
                    OnPropertyChanged(nameof(ShowWarning));
                }
            }
        }

        // Конструктор для инициализации данных
        public MainPageViewModel()
        {
            GenerateMockData();

            // Проверка наличия переносимых линз
            var overusedCount = HistoryItems.Count(item => item.WearingDuration.Days > GetWearingLimitInDays(item.Type));
            ShowWarning = overusedCount >= 3; // Показывать предупреждение, если переношено больше 3 пар
        }

        // Метод для создания заглушек
        void GenerateMockData()
        {
            HistoryItems = new ObservableCollection<LensHistory>
        {
            new LensHistory { StartDate = DateTime.Now.AddDays(-14), EndDate = DateTime.Now, Type = "2 недели" },
            new LensHistory { StartDate = DateTime.Now.AddDays(-21), EndDate = DateTime.Now, Type = "1 месяц" },
            new LensHistory { StartDate = DateTime.Now.AddDays(-7), EndDate = DateTime.Now.AddDays(7), Type = "2 недели" }, // Заглушка для будущих записей
            new LensHistory { StartDate = DateTime.Now.AddDays(-28), EndDate = DateTime.Now.AddDays(10), Type = "1 месяц" }, // Будущая запись
            new LensHistory { StartDate = DateTime.Now.AddDays(-16), EndDate = DateTime.Now.AddDays(6), Type = "2 недели" } // Будущие записи
        };
        }

        int GetWearingLimitInDays(string type)
        {
            switch (type)
            {
                case "2 недели":
                    return 14;
                case "1 месяц":
                    return 30;
                default:
                    throw new ArgumentException($"Неизвестный тип линз: {type}");
            }
        }

        #region INotifyPropertyChanged Implementation
        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public event PropertyChangedEventHandler PropertyChanged;
        #endregion
    }
}
