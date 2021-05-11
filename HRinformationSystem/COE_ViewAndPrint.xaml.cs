using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
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
using CrystalDecisions.Shared;
using CrystalDecisions.CrystalReports.Engine;

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for COE_ViewAndPrint.xaml
    /// </summary>
    public partial class COE_ViewAndPrint : Window
    {
        public string filepart = @"file:\";

        public string _path = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().CodeBase).Replace(@"file:\", "")
                     + @"\";

        public string _reportName_Outside = "NewCOE.rpt";

        public COE_ViewAndPrint()
        {
            InitializeComponent();
        }

        public string LoadReport()
        {
            string report = string.Empty;

            //string myExeDir = new FileInfo(Assembly.GetEntryAssembly().Location).Directory.ToString();

            //if (File.Exists(@"C:\Program Files (x86)\Sohbi Kohgei\HRInformationSystem\rptCOE.rpt"))
            //{
            //    report = @"C:\Program Files (x86)\Sohbi Kohgei\HRInformationSystem\rptCOE.rpt";
            //}
            //else if (File.Exists(@"C:\Program Files\Sohbi Kohgei\HRInformationSystem\rptCOE.rpt"))
            //{
            //    report = @"C:\Program Files\Sohbi Kohgei\HRInformationSystem\rptCOE.rpt";
            //}
            //if (File.Exists(System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().CodeBase).Replace(filepart, "") + @"\rptCOE.rpt"))
            //{
            //    report = //System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().CodeBase).Replace(filepart, "") + @"\rptCOE.rpt";
            //}
            //else
            //{
            //    report = myExeDir + @"\rptCOE.rpt";
            //}

            report = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().CodeBase).Replace(@"file:\", "") + @"\rptCOE.rpt";

            return report;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                ReportDocument objReport1 = new ReportDocument();

                TableLogOnInfos crtableLogoninfos = new TableLogOnInfos();

                TableLogOnInfo ConInfo = new TableLogOnInfo();

                ConnectionInfo crConnectionInfo = new ConnectionInfo();

                Tables CrTables;

                ParameterFieldDefinitions crParameterFieldDefinitions;

                ParameterFieldDefinition crParameterFieldDefinition;

                ParameterValues crParameterValues = new ParameterValues();

                ParameterDiscreteValue crParameterDiscreteValue = new ParameterDiscreteValue();

                if (File.Exists(_path + _reportName_Outside))
                {
                    objReport1.Load(_path + _reportName_Outside);
                }
                else
                {
                    //objReport1.Load(ClsConfig.LotCardCantierReportPath_Trial + _reportName_Outside);
                }

                string sUserID = "sa";

                string sPassword = "P@55w0rd";

                string sServerName = "192.168.1.42";

                string sDatabaseName = "HRIS";


                crConnectionInfo.ServerName = sServerName;
                crConnectionInfo.DatabaseName = sDatabaseName;
                crConnectionInfo.UserID = sUserID;
                crConnectionInfo.Password = sPassword;

                CrTables = objReport1.Database.Tables;

                foreach (CrystalDecisions.CrystalReports.Engine.Table CrTable in CrTables)
                {
                    ConInfo = CrTable.LogOnInfo;
                    ConInfo.ConnectionInfo = crConnectionInfo;
                    CrTable.ApplyLogOnInfo(ConInfo);
                }

                reportViewer.ViewerCore.ReportSource = objReport1;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
    }
}
