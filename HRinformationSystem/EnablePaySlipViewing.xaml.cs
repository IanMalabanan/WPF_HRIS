using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

        HRISEntities dbcontext = new HRISEntities();

        public EnablePaySlipViewing()
        {
            InitializeComponent();

            LoadFields();
        }

        private void BtnActivate_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Do you want to save the record?",
                    "Confirmation", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
            {
                ActivatePayslipViewing();

                //int i = Convert.ToInt32(cboMonth.SelectedIndex + 1);

                //switch (i)
                //{
                //    case int n when (n >= 1 && n <= 9):
                //       MessageBox.Show("1-9");
                //        break;

                //    default:
                //        MessageBox.Show("10-12") ;
                //        break;
                //}
            }
            else
            {
                e.Handled = true;
            }
        }

        private void ActivatePayslipViewing()
        {
            string query = "update [dbo].[ViewPayslipLockCutOff] set [MonthYear]=@MonthYear, [CutOff]=@SalType";

            SqlCommand cmd = new SqlCommand(query);

            cmd.Parameters.AddWithValue("@MonthYear", ConcatenanteMonthYear());

            cmd.Parameters.AddWithValue("@SalType", Convert.ToInt16(cboCutOff.SelectedIndex + 1));

            SqlHelper.ExecuteNonQuery("Data Source=" + dbcontext.Database.Connection.DataSource
                + ";Initial Catalog=SKPI_PayrollDB;User ID=sa; Password=P@55w0rd", cmd);

            MessageBox.Show("Successfully Updated");
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
