
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Configuration;

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for EmployeeEducationalBG.xaml
    /// </summary>
    public partial class EmployeeEducationalBG : UserControl
    {
        HRISEntities db = new HRISEntities();

        t_EmpEducationalBackground r = new t_EmpEducationalBackground();

        public EmployeeEducationalBG()
        {
            InitializeComponent();
        }

        public void getEmployeeEBG()
        {
            //t_EmpEducationalBackground educ = new t_EmpEducationalBackground();
            var selectQuery = db.t_EmpEducationalBackground.Where(x => x.EmpID == EmpID.Text);

            foreach (var item in selectQuery)
            {
                t_EmpEducationalBackground myData = item as t_EmpEducationalBackground;
                ElementarySchool.Text = myData.ElementarySchool;
                ElementaryAddress.Text = myData.ElementaryAddress;

                ElementaryYear.Text = myData.ElementaryYear;
                SecondarySchool.Text = myData.SecondarySchool;
                SecondaryAddress.Text = myData.SecondaryAddress;
                SecondaryYear.Text = myData.SecondaryYear;
                TertiarySchool.Text = myData.TertiarySchool;
                TertiaryAddress.Text = myData.TertiaryAddress;
                TertiaryCourse.Text = myData.TertiaryCourse;
                TertiaryYear.Text = myData.TertiaryYear;

                VocationalSchool.Text = myData.VocationalSchool;
                VocationalAddress.Text = myData.VocationalAddress;
                VocationalCourse.Text = myData.VocationalCourse;
                VocationalYear.Text = myData.VocationalYear;

                PostGraduateSchool.Text = myData.PostGraduateSchool;
                PostGraduateAddress.Text = myData.PostGraduateAddress;
                PostGraduateCourse.Text = myData.PostGraduateCourse;
                IsLicensed.IsChecked = Convert.ToBoolean(myData.IsLicensed);
                PostGraduateYear.Text = myData.PostGraduateYear;
            }
        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            getEmployeeEBG();
        }

        private void btnedit_Click(object sender, RoutedEventArgs e)
        {
            btncancel.Visibility = Visibility.Visible;
            btnedit.Visibility = Visibility.Hidden;
            btnsave.IsEnabled = true;
            EmpBackEduc.IsEnabled = true;
        }

        private void btncancel_Click(object sender, RoutedEventArgs e)
        {
            btncancel.Visibility = Visibility.Hidden;
            btnedit.Visibility = Visibility.Visible;
            btnsave.IsEnabled = false;
            EmpBackEduc.IsEnabled = false;
            getEmployeeEBG();
        }

        private void btnsave_Click(object sender, RoutedEventArgs e)
        {
            //MessageBox.Show(EmpID.Text);
            string empid = EmpID.Text.Trim();

            string query = "if exists(select * from [dbo].[t_EmpEducationalBackground] where empid = '" + empid + "') " +
                "begin " +
                "UPDATE [dbo].[t_EmpEducationalBackground] " +
                "SET " +
                " [ElementarySchool] = '" + ElementarySchool.Text + "' " +
                ",[ElementaryAddress] = '" + ElementaryAddress.Text + "' " +
                ",[ElementaryYear] = '" + ElementaryYear.Text + "' " +
                ",[SecondarySchool] = '" + SecondarySchool.Text + "' " +
                ",[SecondaryAddress] = '" + SecondaryAddress.Text + "'" +
                ",[SecondaryYear] = '" + SecondaryYear.Text + "'" +
                ",[TertiarySchool] = '" + TertiarySchool.Text + "' " +
                ",[TertiaryAddress] = '" + TertiaryAddress.Text + "' " +
                ",[TertiaryYear] = '" + TertiaryYear.Text + "' " +
                ",[TertiaryCourse] = '" + TertiaryCourse.Text + "' " +
                ",[VocationalSchool] = '" + VocationalSchool.Text + "' " +
                ",[VocationalAddress] = '" + VocationalAddress.Text + "' " +
                ",[VocationalYear] = '" + VocationalYear.Text + "'" +
                ",[VocationalCourse] = '" + VocationalCourse.Text + "' " +
                ",[PostGraduateSchool] = '" + PostGraduateSchool.Text + "' " +
                ",[PostGraduateAddress] = '" + PostGraduateAddress.Text + "' " +
                ",[PostGraduateYear] = '" + PostGraduateYear.Text + "' " +
                ",[PostGraduateCourse] = '" + PostGraduateCourse.Text + "' " +
                ",[IsLicensed] = @IsLicensed " +
                "where empid = '" + empid + "' " +
                "end " +
                "else " +
                "begin " +
                "INSERT INTO [dbo].[t_EmpEducationalBackground]" +
                  "([EmpID] " +
                  ",[ElementarySchool]" +
                  ",[ElementaryAddress]" +
                  ",[ElementaryYear]" +
                  ",[SecondarySchool]" +
                  ",[SecondaryAddress]" +
                  ",[SecondaryYear]" +
                  ",[TertiarySchool]" +
                  ",[TertiaryAddress]" +
                  ",[TertiaryYear]" +
                  ",[TertiaryCourse]" +
                  ",[VocationalSchool]" +
                  ",[VocationalAddress]" +
                  ",[VocationalYear]" +
                  ",[VocationalCourse]" +
                  ",[PostGraduateSchool]" +
                  ",[PostGraduateAddress]" +
                  ",[PostGraduateYear]" +
                  ",[PostGraduateCourse]" +
                  ",[IsLicensed])" +
                  "values('" + empid + "'" +
                  ",'" + ElementarySchool.Text + "'" +
                  ",'" + ElementaryAddress.Text + "'" +
                  ",'" + ElementaryYear.Text + "'" +
                  ",'" + SecondarySchool.Text + "'" +
                  ",'" + SecondaryAddress.Text + "'" +
                  ",'" + SecondaryYear.Text + "'" +
                  ",'" + TertiarySchool.Text + "'" +
                  ",'" + TertiaryAddress.Text + "'" +
                  ",'" + TertiaryYear.Text + "'" +
                  ",'" + TertiaryCourse.Text + "'" +
                  ",'" + VocationalSchool.Text + "'" +
                  ",'" + VocationalAddress.Text + "'" +
                  ",'" + VocationalYear.Text + "'" +
                  ",'" + VocationalCourse.Text + "'" +
                  ",'" + PostGraduateSchool.Text + "'" +
                  ",'" + PostGraduateAddress.Text + "'" +
                  ",'" + PostGraduateYear.Text + "'" +
                  ",'" + PostGraduateCourse.Text + "'" +
                  ",@IsLicensed" +
                  ") " +
                "end ";

            SqlCommand cmd = new SqlCommand(query);
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Parameters.AddWithValue("@IsLicensed", Convert.ToBoolean(IsLicensed.IsChecked));
            SqlHelper.ExecuteNonQuery(ConfigurationManager.ConnectionStrings["HRIS"].ConnectionString, cmd);

            getEmployeeEBG();

            //var educ = db.t_EmpEducationalBackground.Where(x => x.EmpID == empid).FirstOrDefault();

            //if (educ != null) // update
            //{
            //    educ.ElementarySchool = ElementarySchool.Text;
            //    educ.ElementaryAddress = ElementaryAddress.Text;
            //    educ.ElementaryYear = ElementaryYear.Text;
            //educ.SecondarySchool = SecondarySchool.Text;
            //educ.SecondaryAddress = SecondaryAddress.Text;
            //educ.SecondaryYear = SecondaryYear.Text;
            //educ.TertiarySchool = TertiarySchool.Text;
            //educ.TertiaryAddress = TertiaryAddress.Text;
            //educ.TertiaryCourse = TertiaryCourse.Text;
            //educ.TertiaryYear = TertiaryYear.Text;
            //educ.VocationalSchool = VocationalSchool.Text;
            //educ.VocationalAddress = VocationalAddress.Text;
            //educ.VocationalCourse = VocationalCourse.Text;
            //educ.VocationalYear = VocationalYear.Text;
            //educ.PostGraduateSchool = PostGraduateSchool.Text;
            //educ.PostGraduateAddress = PostGraduateAddress.Text;
            //educ.PostGraduateCourse = PostGraduateCourse.Text;
            //educ.IsLicensed = Convert.ToBoolean(IsLicensed.IsChecked);
            //educ.PostGraduateYear = PostGraduateYear.Text;

            //db.Entry(educ).State = EntityState.Modified;
            //}
            //else //insert
            //{
            //    t_EmpEducationalBackground r = new t_EmpEducationalBackground()
            //    {
            //        EmpID = EmpID.Text,
            //        ElementarySchool = ElementarySchool.Text,
            //        ElementaryAddress = ElementaryAddress.Text,
            //        ElementaryYear = ElementaryYear.Text,
            //        SecondarySchool = SecondarySchool.Text,
            //        SecondaryAddress = SecondaryAddress.Text,
            //        SecondaryYear = SecondaryYear.Text,
            //        TertiarySchool = TertiarySchool.Text,
            //        TertiaryAddress = TertiaryAddress.Text,
            //        TertiaryCourse = TertiaryCourse.Text,
            //        TertiaryYear = TertiaryYear.Text,
            //        VocationalSchool = VocationalSchool.Text,
            //        VocationalAddress = VocationalAddress.Text,
            //        VocationalCourse = VocationalCourse.Text,
            //        VocationalYear = VocationalYear.Text,
            //        PostGraduateSchool = PostGraduateSchool.Text,
            //        PostGraduateAddress = PostGraduateAddress.Text,
            //        PostGraduateCourse = PostGraduateCourse.Text,
            //        IsLicensed = Convert.ToBoolean(IsLicensed.IsChecked),
            //        PostGraduateYear = PostGraduateYear.Text
            //    };

            //    db.t_EmpEducationalBackground.Add(r);                
            //}

            //db.SaveChanges();

            btncancel.Visibility = Visibility.Hidden;

            btnedit.Visibility = Visibility.Visible;

            btnsave.IsEnabled = false;

            EmpBackEduc.IsEnabled = false;            

            MessageBox.Show("Saved");
        }

    }
}
