using System;
using System.Collections.Generic;
using System.Text;

namespace Clens
{
    public class LensHistory
    {
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string Type { get; set; }
        public string LensesFirm { get; set; }
        public TimeSpan WearingDuration => EndDate - StartDate;
    }
}
