using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for EnablePaySlipViewing.xaml
    /// </summary>
    public partial class EnablePaySlipViewing : Window
    {
        public static string _monthYear, gross, net, deduct, basic;

        public EnablePaySlipViewing()
        {
            InitializeComponent();

            LoadFields();
        }

        private void LoadFields()
        {
            cboCutOff.Items.Clear();
            cboCutOff.Items.Add("1st Quincena");
            cboCutOff.Items.Add("2nd Quincena");


            for (int i = 0; i < 12; i++)
            {
                cboMonth.Items.Insert(i, CultureInfo.CurrentUICulture.DateTimeFormat.MonthNames[i]);
            }

            //cboMonth.Items.Insert(12, "13th Month");

            //cboMonth.SelectedIndex = DateTime.Today.Month - 1;

            for (int i = DateTime.Now.Year; i >= DateTime.Now.Year - 4; i--)
            {
                cboYear.Items.Add(i);
            }

            cboYear.SelectedItem = Convert.ToString(DateTime.Today.Year);

        }

        private String ConcatenanteMonthYear()
        {
            string sYear;
            string sMonth;
            Int16 iMonth;

            sYear = cboYear.Text;
            iMonth = Convert.ToInt16(cboMonth.SelectedIndex + 1);

            switch (iMonth)
            {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    {
                        sMonth = "0" + iMonth.ToString();
                        break;
                    }
                default:
                    {
                        sMonth = iMonth.ToString();
                        break;
                    }
            }

            _monthYear = sMonth + sYear;

            return _monthYear;
        }
    }
}
