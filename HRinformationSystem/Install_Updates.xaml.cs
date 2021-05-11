using System;
using System.Collections.Generic;
using System.Configuration;
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

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for Install_Updates.xaml
    /// </summary>
    public partial class Install_Updates : Window
    {
        HRISEntities db = new HRISEntities();
        public Install_Updates()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        public string sourcewithFileName, source;
        public string systemname = ConfigurationManager.AppSettings["HRinformationSystem"].ToString();

        public void VerifyIfUpdated()
        {
            //string version = Assembly.GetExecutingAssembly().GetName().Version.ToString();
            //int versionnumber = Convert.ToInt32(version.Replace("1.0.0.", ""));
            //int VersionFromSQL = 0;

            //    var selectQuery = db.tblSystemVersions.Where(i => i.SystemName == systemname);

            //    foreach (var item in selectQuery)
            //    {
            //        VersionFromSQL = item.SystemVersion;
            //    }

            //    if (VersionFromSQL == versionnumber)
            //    {
                    this.Hide();
                    UserLogin login = new UserLogin();
                    login.Show();
            //    }
        }


        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            try
            {
                var selectupdate = db.tblSystemFiles.Where(i => i.SystemName == systemname);

                foreach (var item in selectupdate)
                {
                    sourcewithFileName = item.SourceUpdateFolder.ToString().Trim() + @"\" + item.FileName.ToString().Trim();

                    if (File.Exists(ConfigurationManager.AppSettings["HRinformationSystemPath64Bit"] + item.FileName.ToString().Trim()))
                    {
                        source = ConfigurationManager.AppSettings["HRinformationSystemPath64Bit"];
                        string x64 = source + item.FileName.ToString().Trim();

                        if(File.Exists(source + "X_" + item.FileName.ToString().Trim()))
                        {
                            GC.Collect();
                            GC.WaitForPendingFinalizers();
                            File.Delete(source + "X_" + item.FileName.ToString().Trim());
                        }

                        GC.Collect();
                        GC.WaitForPendingFinalizers();
                        File.Move(x64, source + "X_" + item.FileName.ToString().Trim());
                        GC.Collect();
                        GC.WaitForPendingFinalizers();
                        File.Copy(sourcewithFileName, x64, true);

                    }
                    else
                    {

                        source = ConfigurationManager.AppSettings["HRinformationSystemPath32Bit"]; ;
                        string x32 = source + item.FileName.ToString().Trim();
                        if (File.Exists(source + "X_" + item.FileName.ToString().Trim()))
                        {
                            GC.Collect();
                            GC.WaitForPendingFinalizers();
                            File.Delete(source + "X_" + item.FileName.ToString().Trim());
                        }
                        GC.Collect();
                        GC.WaitForPendingFinalizers();
                        File.Move(x32, source + "X_" + item.FileName.ToString().Trim());
                        GC.Collect();
                        GC.WaitForPendingFinalizers();
                        File.Copy(sourcewithFileName, x32, true);
                    }

                }

                MessageBoxResult result = MessageBox.Show("System Successfully Updated!", "Notification", MessageBoxButton.OK, MessageBoxImage.Information);
                switch (result)
                {
                    case MessageBoxResult.OK:
                        Application.Current.Shutdown();
                        break;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            string msg = "There's a newer version available.                    ";
            msg += "\"" + "Click Install Updates" + "\"";
            msg += " to download the files and update the system. You must restart the system " +
            "after downloading & installing the updates.";
            lblText.Text = msg;
            VerifyIfUpdated();
        }
    }
}
