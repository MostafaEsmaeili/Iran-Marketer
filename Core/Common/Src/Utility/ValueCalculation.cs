using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Common.Utility
{
    public static class ValueCalculation
    {
        public enum DueDatePeriod
        {
            EndOfPeriod = 0,
            BeginOfPeriod = 1
        }
        public static double NPV(double rate, List<double> cashFlows, int type)
        {
            try
            {
                bool flag1 = type < 0;
                bool flag2 = type > 0;
                double max = 1.0;
                double npv = 0.0;
                int temp = 0;
                int upperBound = cashFlows.Count - 1;
                for (int i = 0; i <= upperBound; i++)
                {
                    double cashFlow = cashFlows[i];
                    double maxTemp = max;
                    double rateTemp = rate;
                    double res = maxTemp * rateTemp;
                    max = maxTemp + res;
                    if ((!flag1 || cashFlow <= 0.0) && (!flag2 || cashFlow >= 0.0))
                        npv += cashFlow / max;
                }
                return npv;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        private static double FV(double rate, double nPer, double pmt, double pv = 0.0, DueDatePeriod period = DueDatePeriod.EndOfPeriod)
        {
            double fv;
            if (rate == 0.0)
            {
                fv = -pv - pmt * nPer;
            }
            else
            {
                double factor = period == DueDatePeriod.EndOfPeriod ? 1.0 : 1.0 + rate;
                double pow = Math.Pow(1.0 + rate, nPer);
                fv = -pv * pow - pmt / rate * factor * (pow - 1.0);
            }
            return fv;
        }
        public static double PV(double rate, double nPer, double pmt, double fv = 0.0, DueDatePeriod period = DueDatePeriod.EndOfPeriod)
        {
            double pv;
            if (rate == 0.0)
            {
                pv = -fv - pmt * nPer;
            }
            else
            {
                double factor = period == DueDatePeriod.EndOfPeriod ? 1.0 : 1.0 + rate;
                double pow = Math.Pow(1.0 + rate, nPer);
                pv = -(fv + pmt * factor * ((pow - 1.0) / rate)) / pow;
            }
            return pv;
        }

       
    }
}
