using System;
using System.Collections.Generic;
using System.IO;
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
using System.Reflection;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for COE_Creation.xaml
    /// </summary>
    public partial class COE_Creation : Window
    {
        public static DataGrid gridEmployee;

        public COE_Creation()
        {
            InitializeComponent();
        }


        private void DeleteLogs()
        {
            SqlCommand cmd = new SqlCommand("delete from dbo.t_COETemplateForPrinting");

            cmd.CommandType = CommandType.Text;

            SqlHelper.ExecuteNonQuery(ConfigurationManager.ConnectionStrings["HRIS"].ConnectionString, cmd);
        }

        private void SaveDataForPrinting(string name)
        {
            string body = tbContent.Text.Trim()
                + Environment.NewLine + Environment.NewLine + Environment.NewLine + Environment.NewLine
                + Environment.NewLine + Environment.NewLine +
                tbApprover.Text.Trim().ToUpper() + Environment.NewLine + tbDesignation.Text.Trim();
            ;

            SqlCommand cmd = new SqlCommand("Insert into dbo.t_COETemplateForPrinting(COEBody)values(@body)");

            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@body", body.Replace("\r\n", "<br/>")
                .Replace("@EmployeeName", name)
                .Replace("@CompanyName", tbCompanyName.Text.Trim())
                .Replace("@CompanyAddress", tbCompanyAddress.Text.Trim()));

            SqlHelper.ExecuteNonQuery(ConfigurationManager.ConnectionStrings["HRIS"].ConnectionString, cmd);
        }

        private void SaveTemplate()
        {
            string body = tbContent.Text.Trim();

            SqlCommand cmd = new SqlCommand("if not exists(select * from dbo.t_COEBodyTemplate where COEBodyTemplate = @body)" +
                "begin " +
                "Insert into dbo.t_COEBodyTemplate(TemplateName,CompanyName,CompanyAddress,COEBodyTemplate)" +
                "values('Template ' + (select count(*) + 1 from dbo.t_COEBodyTemplate),@cname,@add,@body) " +
                "end");

            cmd.CommandType = CommandType.Text;

            //cmd.Parameters.AddWithValue("@name", "Template1");

            cmd.Parameters.AddWithValue("@cname", tbCompanyName.Text.Trim());

            cmd.Parameters.AddWithValue("@add", tbCompanyAddress.Text.Trim());

            cmd.Parameters.AddWithValue("@body", body.Replace("\r\n", "<br/>"));

            SqlHelper.ExecuteNonQuery(ConfigurationManager.ConnectionStrings["HRIS"].ConnectionString, cmd);

            MessageBox.Show("Saved");
        }

        private void GetTemplateByName()
        {
            SqlCommand cmd = new SqlCommand("select * from dbo.t_COEBodyTemplate where rtrim(ltrim(TemplateName)) = @name");

            cmd.CommandType = CommandType.Text;

            cmd.Parameters.AddWithValue("@name", cboTemplate.SelectedValue.ToString().Trim());

            foreach (DataRow dr in SqlHelper.ExecuteReader(ConfigurationManager.ConnectionStrings["HRIS"].ConnectionString, cmd).Rows)
            {
                tbCompanyName.Text = dr[2].ToString().Trim();

                tbCompanyAddress.Text = dr[3].ToString().Trim();

                tbContent.Text = dr[4].ToString().Replace("<br/>", "\r\n").Trim();
            }
        }

        private void GetTemplates()
        {
            SqlCommand cmd = new SqlCommand("select TemplateName from dbo.t_COEBodyTemplate");

            cmd.CommandType = CommandType.Text;

            cboTemplate.ItemsSource = SqlHelper.ExecuteReader(ConfigurationManager.ConnectionStrings["HRIS"].ConnectionString, cmd).DefaultView;
        }

        private void GetEmployees()
        {
            SqlCommand cmd = new SqlCommand("GetAllEmployees");

            cmd.CommandType = CommandType.StoredProcedure;

            gridEmployees.ItemsSource = SqlHelper.ExecuteReader(ConfigurationManager.ConnectionStrings["TA3"].ConnectionString, cmd).DefaultView;
        }

        private void GetEmployeesByName()
        {
            SqlCommand cmd = new SqlCommand("GetAllEmployeesByName");

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Name", tbSearchName.Text.Trim());

            gridEmployees.ItemsSource = SqlHelper.ExecuteReader(ConfigurationManager.ConnectionStrings["TA3"].ConnectionString, cmd).DefaultView;
        }

        private void tbSearchName_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                chkSelectAll.IsChecked = false;

                if (tbSearchName.Text.Length > 0)
                {
                    GetEmployeesByName();
                }
                else
                {
                    MessageBox.Show("Must enter a name");
                }
            }
        }

        private void UIElement_OnPreviewMouseWheel(object sender, MouseWheelEventArgs e)
        {
            if (e.Handled)
            {
                e.Handled = true;
                var eventArg = new MouseWheelEventArgs(e.MouseDevice, e.Timestamp, e.Delta);
                eventArg.RoutedEvent = MouseWheelEvent;
                eventArg.Source = sender;
                var parent = ((Control)sender).Parent as UIElement;
                parent?.RaiseEvent(eventArg);
            }
        }

        private void tbSearchName_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (tbSearchName.Text.Length > 0)
                {
                    GetEmployeesByName();
                }
                else { MessageBox.Show("Must enter a name"); }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        private void btnReset_Click(object sender, RoutedEventArgs e)
        {
            GetEmployees();
            tbSearchName.Clear();
        }

        private void chkStateChange_Checked(object sender, RoutedEventArgs e)
        {
            int ctrr = 0;

            if (chkSelectAll.IsChecked == true)
            {
                tbSearchName.Clear();

                DataGrid grid = gridEmployees;

                foreach (DataRowView row in grid.ItemsSource)
                {
                    if (Convert.ToBoolean(((CheckBox)grid.Columns[0].GetCellContent(row)).IsChecked) == true)
                    {
                        ctrr++;
                    }
                }

                lblCheckedCounnt.Content = ctrr.ToString() + " employees selected";
                ctrr = 0;
            }
            else
            {
                lblCheckedCounnt.Content = "0 employees selected";
                ctrr = 0;
            }

            //MessageBox.Show("hahaha");
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            GetEmployees();

            lblNote.Text = "Note: Body text must contain the following words: " + Environment.NewLine +
                "         1.) @CompanyName" + Environment.NewLine +
                "         2.) @EmployeeName" + Environment.NewLine +
                "         3.) @CompanyAddress" + Environment.NewLine + Environment.NewLine +
                "Kindly monitor the body if already have this keywords before saving. Thank you";

            //string content = "This is to certify that the bearer, MR/S. @EmployeeName, is an employee of @CompanyName with office address at @CompanyAddress. S/he bears the Company ID as additonal proof of employment. "; ;

            //content += Environment.NewLine + Environment.NewLine + Environment.NewLine + "Please allow travel of our employee to and from @CompanyName for the purpose of skeleton workforce while Community Quarantine is raised.";

            //content += Environment.NewLine + Environment.NewLine + Environment.NewLine + "This certification shall serve as the employee's Covid 19 pass.";

            //MessageBox.Show(content.Replace(Environment.NewLine, "\r\n"));

            tbContent.Text = "@EmployeeName\r\n@CompanyName\r\n@CompanyAddress";//content;//.Replace(Environment.NewLine, "\r\n");

            GetTemplates();

            lblCheckedCounnt.Content = "0 employees selected";
        }

        private void OnChecked(object sender, RoutedEventArgs e)
        {
            int ctrr = 0;

            DataGrid grid = gridEmployees;

            foreach (DataRowView row in grid.ItemsSource)
            {
                if (Convert.ToBoolean(((CheckBox)grid.Columns[0].GetCellContent(row)).IsChecked) == true)
                {
                    ctrr++;
                }
            }

            //foreach (DataRowView rows in grid.ItemsSource)
            //{
            //    if (Convert.ToBoolean(((CheckBox)grid.Columns[0].GetCellContent(rows)).IsChecked) == false)
            //    {
            //        ctruc++;
            //    }
            //}

            lblCheckedCounnt.Content = ctrr.ToString() + " employees selected";

            ctrr = 0;
        }

        private void OnUnChecked(object sender, RoutedEventArgs e)
        {
            int ctrr = 0;

            //int ctruc = 0;

            DataGrid grid = gridEmployees;

            foreach (DataRowView row in grid.ItemsSource)
            {
                if (Convert.ToBoolean(((CheckBox)grid.Columns[0].GetCellContent(row)).IsChecked) == true)
                {
                    ctrr++;
                }
            }

            //foreach (DataRowView rows in grid.ItemsSource)
            //{
            //    if (Convert.ToBoolean(((CheckBox)grid.Columns[0].GetCellContent(rows)).IsChecked) == false)
            //    {
            //        ctruc++;
            //    }
            //}


            lblCheckedCounnt.Content = ctrr.ToString() + " employees selected";

            ctrr = 0;

            //ctruc = 0;
        }

        private void BtnPrintPreview_Click(object sender, RoutedEventArgs e)
        {
            int ctrr = 0;

            DataGrid grid = gridEmployees;

            foreach (DataRowView row in grid.ItemsSource)
            {
                if (Convert.ToBoolean(((CheckBox)grid.Columns[0].GetCellContent(row)).IsChecked) == true)
                {
                    ctrr++;
                }
            }

            if (ctrr == 0)
            {
                MessageBox.Show("No Selected Employee");
                ctrr = 0;
            }
            else if (tbApprover.Text.Length == 0)
            {
                MessageBox.Show("Approver is a must.");
                ctrr = 0;
            }
            else if (tbDesignation.Text.Length == 0)
            {
                MessageBox.Show("Designation is a must.");
                ctrr = 0;
            }
            else if (!tbContent.Text.Contains("@EmployeeName"))
            {
                MessageBox.Show("Content doesn't have parameter @EmployeeName");
                ctrr = 0;
            }
            else if (!tbContent.Text.Contains("@CompanyName"))
            {
                MessageBox.Show("Content doesn't have parameter @CompanyName");
                ctrr = 0;
            }
            else if (!tbContent.Text.Contains("@CompanyAddress"))
            {
                MessageBox.Show("Content doesn't have parameter @CompanyAddress");
                ctrr = 0;
            }
            else
            {
                DeleteLogs();

                foreach (DataRowView row in gridEmployees.ItemsSource)
                {
                    if (Convert.ToBoolean(((CheckBox)gridEmployees.Columns[0].GetCellContent(row)).IsChecked) == true)
                    {
                        SaveDataForPrinting(row[2].ToString().TrimEnd());
                    }
                }

                COE_ViewAndPrint frm = new COE_ViewAndPrint();

                frm.ShowDialog();

                ctrr = 0;
            }
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            if (!tbContent.Text.Contains("@EmployeeName"))
            {
                MessageBox.Show("Content doesn't have parameter @EmployeeName");
            }
            else if (!tbContent.Text.Contains("@CompanyName"))
            {
                MessageBox.Show("Content doesn't have parameter @CompanyName");
            }
            else if (!tbContent.Text.Contains("@CompanyAddress"))
            {
                MessageBox.Show("Content doesn't have parameter @CompanyAddress");
            }
            else
            {
                SaveTemplate();

                GetTemplates();

                cboTemplate.SelectedIndex = -1;
            }
        }

        private void CboTemplate_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (cboTemplate.SelectedIndex != -1)
            {
                GetTemplateByName();
            }
        }
    }
}
