using System;
using System.Collections.Generic;
using System.Text;

namespace Clens
{
    public interface IPreferenceService
    {
        void SaveStartDate(string date);
        string GetStartDate();
    }

}
