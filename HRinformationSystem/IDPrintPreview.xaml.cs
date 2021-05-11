using System;
using System.Collections.Generic;
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
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Configuration;
using System.IO;
using System.Reflection;

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for IDPrintPreview.xaml
    /// </summary>
    public partial class IDPrintPreview : Window
    {

        public string filepart = @"file:\";

        public string _path = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().CodeBase).Replace(@"file:\", "")
                     + @"\";

        public string _reportName_Outside = "NewIDCreation.rpt";

        public IDPrintPreview()
        {
            InitializeComponent();
            try
            {
                previewID();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public string LoadReport()
        {
            string report = string.Empty;

            //if (File.Exists(@"C:\Program Files\Sohbi Kohgei\HRinformationSystem\HRiSID.rpt"))
            //{
            //    report = @"C:\Program Files\Sohbi Kohgei\HRinformationSystem\HRiSID.rpt";
            //    //report = ConfigurationManager.AppSettings["DeploymentPath64Bit"];
            //}
            //else if (File.Exists(@"C:\Program Files (x86)\Sohbi Kohgei\HRinformationSystem\HRiSID.rpt"))
            //{
            //report = @"C:\Program Files (x86)\Sohbi Kohgei\HRinformationSystem\HRiSID.rpt";
            //report = ConfigurationManager.AppSettings["DeploymentPath32Bit"];
            //}
            //else
            //{
            //    report = ConfigurationManager.AppSettings["ServerPath"];
            //}

            //string myExeDir = new FileInfo(Assembly.GetEntryAssembly().Location).Directory.ToString();

            //report = myExeDir + @"\HRiSID.rpt";

            //report = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().CodeBase).Replace(@"file:\", "") + @"\NewIDCreation.rpt";

            //if (File.Exists(System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().CodeBase).Replace(filepart, "") + @"\HRiSID.rpt"))
            //{
            //    report = System.IO.Path.GetDirectoryName(System.Reflection.Assembly.GetExecutingAssembly().CodeBase).Replace(filepart, "") + @"\HRiSID.rpt";
            //}
            //else
            //{
            //    report = myExeDir + @"\rptCOE.rpt";
            //}
            return report;
        }


        void previewID()
        {
            try
            {
                CrystalDecisions.CrystalReports.Engine.ReportDocument objReport = new CrystalDecisions.CrystalReports.Engine.ReportDocument();

                CrystalDecisions.Shared.TableLogOnInfos crtableLogoninfos = new CrystalDecisions.Shared.TableLogOnInfos();

                CrystalDecisions.Shared.TableLogOnInfo ConInfo = new CrystalDecisions.Shared.TableLogOnInfo();

                CrystalDecisions.Shared.ConnectionInfo crConnectionInfo = new CrystalDecisions.Shared.ConnectionInfo();

                CrystalDecisions.CrystalReports.Engine.Tables CrTables;

                CrystalDecisions.Shared.ParameterValues crParameterValues = new CrystalDecisions.Shared.ParameterValues();

                CrystalDecisions.Shared.ParameterDiscreteValue crParameterDiscreteValue = new CrystalDecisions.Shared.ParameterDiscreteValue();

                //objReport.Load(LoadReport());

                objReport.Load(_path + _reportName_Outside);

                string sUserID = "sa";

                string sPassword = "P@55w0rd";

                string sServerName = "192.168.1.42";

                string sDatabaseName = "HRIS";


                crConnectionInfo.ServerName = sServerName;

                crConnectionInfo.DatabaseName = sDatabaseName;

                crConnectionInfo.UserID = sUserID;

                crConnectionInfo.Password = sPassword;


                CrTables = objReport.Database.Tables;

                foreach (CrystalDecisions.CrystalReports.Engine.Table CrTable in CrTables)
                {
                    ConInfo = CrTable.LogOnInfo;

                    ConInfo.ConnectionInfo = crConnectionInfo;

                    CrTable.ApplyLogOnInfo(ConInfo);
                }

                reportViewer.ViewerCore.ReportSource = objReport;

                //rekta print
                //objReport.PrintToPrinter(1, true, 0, 0);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }


    }
}
