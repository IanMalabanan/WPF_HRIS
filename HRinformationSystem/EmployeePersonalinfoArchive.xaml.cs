
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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
    /// Interaction logic for EmployeePersonalinfoArchive.xaml
    /// </summary>
    public partial class EmployeePersonalinfoArchive : UserControl
    {
        HRISEntities db = new HRISEntities();
        public EmployeePersonalinfoArchive()
        {
            InitializeComponent();
            bindCombo();
        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                getpersonalinfo();
            }
            catch { }
            getemployeeaddress();
        }

        public Int32 GetAge(DateTime dateOfBirth)
        {
            var today = DateTime.Today;

            var a = (today.Year * 100 + today.Month) * 100 + today.Day;
            var b = (dateOfBirth.Year * 100 + dateOfBirth.Month) * 100 + dateOfBirth.Day;

            return (a - b) / 10000;
        }

        void dept()
        {
            if (Department.SelectedValue != null)
            {
                Section.ItemsSource = db.t_DepartmentalSection.Where(p => p.DeptCode == Department.SelectedValue.ToString() && p.SectName != "--").ToList();
                Position.ItemsSource = db.t_Position.Where(p => p.DeptCode == Department.SelectedValue.ToString() && p.Description != "--").ToList();
            }
            else { }
        }


        private static byte[] empimage;
        void getpersonalinfo()
        {
            t_EmpMaster empdata = new t_EmpMaster();
            var selectQuery = db.t_EmpMaster.Where(x => x.EmpID == EmpID.Text);

            foreach (var item in selectQuery)
            {
                t_EmpMaster myData = item as t_EmpMaster;
                EmpID.Text = myData.EmpID;
                BatchNo.Text = Convert.ToString(myData.BatchNo);
                ProximityCardID.Text = myData.ProximityCardID;
                LastName.Text = myData.LastName;
                FirstName.Text = myData.FirstName;
                MiddleName.Text = myData.MiddleName;
                Mobile.Text = myData.Mobile;
                Phone.Text = myData.Phone;
                EmailAddress.Text = myData.EmailAddress;
                ContactPerson.Text = myData.ContactPerson;
                ContactPhone.Text = myData.ContactPhone;
                ContactAddress.Text = myData.ContactAddress;
                EducAttainment.SelectedValue = myData.HighestEducationalAttainment;
                

                string sqlFormattedDate = myData.EndOfWork.HasValue
                ? myData.EndOfWork.Value.ToString("dd-MM-yyyy")
                : "";

                DateEnd.DateTimeText = sqlFormattedDate;

                if (myData.HireDate.HasValue)
                {
                    HireDate.DateTimeText = myData.HireDate.Value.ToString("dd-MM-yyyy");
                }
                else
                {

                }
                
                SSSno.Text = myData.SSSno;
                TIN.Text = myData.TIN;
                PHno.Text = myData.PHno;
                PagIbigNo.Text = myData.PagIbigNo;

                IDissued.IsChecked = myData.IDissued;
                AppointmentPaperIssued.IsChecked = myData.AppointmentPaperIssued;
                CivilStatus.SelectedValue = myData.CivilStatus;
                ShuttleDestination.SelectedValue = myData.ShuttleDestination;
                Department.SelectedValue = myData.Department;
                dept();


                Section.SelectedValue = myData.Section;
                Position.SelectedValue = myData.Position;
                EmploymentStatus.SelectedValue = myData.EmploymentStatus;





                empimage = myData.EmpPicture;

                MemoryStream strm = new MemoryStream();
                strm.Write(empimage, 0, empimage.Length);
                strm.Position = 0;
                System.Drawing.Image img = System.Drawing.Image.FromStream(strm);
                BitmapImage bi = new BitmapImage();
                bi.BeginInit();
                MemoryStream ms = new MemoryStream();
                img.Save(ms, System.Drawing.Imaging.ImageFormat.Bmp);
                ms.Seek(0, SeekOrigin.Begin);
                bi.StreamSource = ms;
                bi.EndInit();

                EmpPicture.Source = bi;



            }
        }


        void PresentCountry()
        {
            if (CountryName.SelectedValue != null)
            {
                ProvName.SelectedIndex = -1;
                CityName.SelectedIndex = -1;
                ProvName.ItemsSource = db.t_Province.Where(p => p.CountryID.ToString() == CountryName.SelectedValue.ToString()).ToList();
            }
            else { }
        }
        void PermanenttCountry()
        {
            if (PermanentCountryName.SelectedValue != null)
            {
                PermanentProvName.SelectedIndex = -1;
                PermanentCityName.SelectedIndex = -1;
                PermanentProvName.ItemsSource = db.t_Province.Where(p => p.CountryID.ToString() == PermanentCountryName.SelectedValue.ToString()).ToList();
            }
            else { }
        }
        void PresentProvince()
        {
            if (ProvName.SelectedValue != null)
            {
                CityName.ItemsSource = db.t_City.Where(p => p.CountryID.ToString() == CountryName.SelectedValue.ToString() && p.ProvID.ToString() == ProvName.SelectedValue.ToString()).ToList();
            }
            else { }
        }
        void PermanentProvince()
        {
            if (PermanentProvName.SelectedValue != null)
            {
                PermanentCityName.ItemsSource = db.t_City.Where(p => p.CountryID.ToString() == PermanentCountryName.SelectedValue.ToString() && p.ProvID.ToString() == PermanentProvName.SelectedValue.ToString()).ToList();
            }
            else { }
        }

        void getemployeeaddress()
        {
            t_EmpAddress empaddress = new t_EmpAddress();
            var selectQuery = db.t_EmpAddress.Where(x => x.EmpID == EmpID.Text);

            foreach (var item in selectQuery)
            {
                try
                {
                    t_EmpAddress myData = item as t_EmpAddress;
                    CountryName.SelectedValue = myData.PresCountryID;
                    PermanentCountryName.SelectedValue = myData.PermCountryID;
                    PresentCountry();
                    ProvName.SelectedValue = myData.PresProvinceID;
                    PermanenttCountry();
                    PermanentProvName.SelectedValue = myData.PermProvinceID;
                    PresentProvince();
                    CityName.SelectedValue = myData.PresCityID;
                    Street.Text = myData.PresStreet;
                    PermanentCityName.SelectedValue = myData.PermCityID;
                    PermanentProvince();
                    PermanentStreet.Text = myData.PermStreet;
                }
                catch { }


            }

        }

        private void bindCombo()
        {
            Department.ItemsSource = db.t_Department.Where(p => p.DeptName != "--").ToList();
            ShuttleDestination.ItemsSource = db.t_ShuttleDestination.ToList();
            CivilStatus.ItemsSource = db.t_CivilStatus.ToList();
            EducAttainment.ItemsSource = db.t_EducationalAttainment.ToList();
            EmploymentStatus.ItemsSource = db.t_EmpStatus.ToList().OrderBy(i => i.Description);
             CountryName.ItemsSource = db.t_Country.ToList();
            PermanentCountryName.ItemsSource = db.t_Country.ToList();

        }

       
       
        private void btnsave_Click(object sender, RoutedEventArgs e)
        {
           
        }









    }
}
