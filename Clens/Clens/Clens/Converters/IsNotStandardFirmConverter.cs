using System;
using System.Collections.Generic;
using System.Globalization;
using Xamarin.Forms;

namespace Clens.Converters
{
    public class IsNotStandardFirmConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string firm)
            {
                var standardFirms = new List<string>
            {
                "Отменить выбор", "ACUVUE", "Dailies", "Air Optix Aqua", "Biomedics",
                "Proclear", "PureVision", "Biotrue"
            };
                return !standardFirms.Contains(firm);
            }
            return false;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}