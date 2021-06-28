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
    /// Interaction logic for EmployeePersonalinfo.xaml
    /// </summary>
    public partial class EmployeePersonalinfo : UserControl
    {
        HRISEntities db = new HRISEntities();
        public EmployeePersonalinfo()
        {
            InitializeComponent();
            bindCombo();
        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                getpersonalinfo();

                //age();
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

        private void dept()
        {
            if (Department.SelectedValue != null)
            {
                Section.ItemsSource = db.t_DepartmentalSection.Where(p => p.DeptCode == Department.SelectedValue.ToString() && p.SectName != "--").ToList();
                Position.ItemsSource = db.t_Position.Where(p => p.DeptCode == Department.SelectedValue.ToString() && p.Description != "--").ToList();
            }
            else { }
        }


        private static byte[] empimage;

        private void getpersonalinfo()
        {
            t_EmpMaster empdata = new t_EmpMaster();

            var selectQuery = db.t_EmpMaster.Where(x => x.EmpID == EmpID.Text);

            foreach (var item in selectQuery)
            {
                t_EmpMaster myData = item as t_EmpMaster;
                EmpID.Text = myData.EmpID;
                BatchNo.Text = Convert.ToString(myData.BatchNo);
                ProximityCardID.Text = myData.ProximityCardID;

                //MessageBox.Show(myData.ProximityCardID);

                LastName.Text = myData.LastName;

                FirstName.Text = myData.FirstName;

                MiddleName.Text = myData.MiddleName;

                Mobile.Text = myData.Mobile;

                Phone.Text = myData.Phone;

                EmailAddress.Text = myData.EmailAddress;

                ContactPerson.Text = myData.ContactPerson;

                ContactPhone.Text = myData.ContactPhone;

                ContactAddress.Text = myData.ContactAddress;
                //EducAttainment.SelectedValue = myData.HighestEducationalAttainment;

                BirthDate.SelectedDate = Convert.ToDateTime(myData.BirthDate);

                HireDate.SelectedDate = Convert.ToDateTime(myData.HireDate);

                if (myData.EndOfWork.HasValue)
                {
                    EndDate.SelectedDate = Convert.ToDateTime(myData.EndOfWork);
                }
                else
                {
                    EndDate.SelectedDate = null;
                }                

                SSSno.Text = myData.SSSno;

                TIN.Text = myData.TIN;

                PHno.Text = myData.PHno;

                PagIbigNo.Text = myData.PagIbigNo;

                HeightUnit.SelectedValue = myData.HeightUnit;

                WeightUnit.SelectedValue = myData.WeightUnit;

                Weight.Text = myData.Weight;

                Height.Text = myData.Height;

                IDissued.IsChecked = myData.IDissued;

                AppointmentPaperIssued.IsChecked = myData.AppointmentPaperIssued;

                CivilStatus.SelectedValue = myData.CivilStatus;

                Nationality.SelectedValue = myData.Nationality;

                ShuttleDestination.SelectedValue = myData.ShuttleDestination;

                Religion.SelectedValue = myData.Religion;

                Sex.SelectedValue = myData.Sex;

                Department.SelectedValue = myData.Department;
                //get sect&pos
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

        private void getemployeeaddress()
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

        private void PresentCountry()
        {
            if (CountryName.SelectedValue != null)
            {
                ProvName.SelectedIndex = -1;
                CityName.SelectedIndex = -1;
                ProvName.ItemsSource = db.t_Province.Where(p => p.CountryID.ToString() == CountryName.SelectedValue.ToString()).ToList();
            }
            else { }
        }

        private void PermanenttCountry()
        {
            if (PermanentCountryName.SelectedValue != null)
            {
                PermanentProvName.SelectedIndex = -1;
                PermanentCityName.SelectedIndex = -1;
                PermanentProvName.ItemsSource = db.t_Province.Where(p => p.CountryID.ToString() == PermanentCountryName.SelectedValue.ToString()).ToList();
            }
            else { }
        }

        private void PresentProvince()
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
                PermanentCityName.ItemsSource = db.t_City.Where(p => p.CountryID.ToString() == PermanentCountryName.SelectedValue.ToString()
                && p.ProvID.ToString() == PermanentProvName.SelectedValue.ToString()).ToList();
            }
            else { }
        }

        private void CountryName_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            PresentCountry();
        }

        private void PermanentCountryName_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            PermanenttCountry();
        }

        private void ProvName_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            PresentProvince();
        }

        private void PermanentProvName_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            PermanentProvince();
        }

        public byte[] data;

        private void Load_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Microsoft.Win32.OpenFileDialog dlg = new Microsoft.Win32.OpenFileDialog();
                dlg.Title = "Select a picture";
                dlg.Filter = "All supported graphics|*.jpg;*.jpeg;*.png|" +
                  "JPEG (*.jpg;*.jpeg)|*.jpg;*.jpeg|" +
                  "Portable Network Graphic (*.png)|*.png";
                dlg.ShowDialog();

                FileStream fs = new FileStream(dlg.FileName, FileMode.Open,
                FileAccess.Read);

                data = new byte[fs.Length];
                fs.Read(data, 0, System.Convert.ToInt32(fs.Length));

                fs.Close();


                ImageSourceConverter imgs = new ImageSourceConverter();
                EmpPicture.SetValue(System.Windows.Controls.Image.SourceProperty, imgs.
                ConvertFromString(dlg.FileName.ToString()));
            }
            catch { }

        }

        private void bindCombo()
        {
            Department.ItemsSource = db.t_Department.Where(p => p.DeptName != "--").ToList();
            ShuttleDestination.ItemsSource = db.t_ShuttleDestination.ToList();
            CivilStatus.ItemsSource = db.t_CivilStatus.ToList();
            //EducAttainment.ItemsSource = db.t_EducationalAttainment.ToList();
            Nationality.ItemsSource = db.t_Nationality.ToList();
            Sex.ItemsSource = db.t_Sex.ToList();
            HeightUnit.ItemsSource = db.t_HeightUnit.ToList();
            WeightUnit.ItemsSource = db.t_WeightUnit.ToList();
            Nationality.ItemsSource = db.t_Nationality.ToList();
            EmploymentStatus.ItemsSource = db.t_EmpStatus.ToList().OrderBy(i => i.Description);
            Religion.ItemsSource = db.t_Religion.ToList().OrderBy(i => i.Description);
            CountryName.ItemsSource = db.t_Country.ToList();
            PermanentCountryName.ItemsSource = db.t_Country.ToList();
        }

        private void Department_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            dept();
        }

        private void Department_MouseDown(object sender, MouseButtonEventArgs e)
        {
            Section.SelectedIndex = -1;
            Position.SelectedIndex = -1;
        }

        private void btnedit_Click(object sender, RoutedEventArgs e)
        {
            btncancel.Visibility = Visibility.Visible;
            btnedit.Visibility = Visibility.Hidden;
            btnsave.IsEnabled = true;
            EmpData.IsEnabled = true;
            EmpData2.IsEnabled = true;
        }

        private void btncancel_Click(object sender, RoutedEventArgs e)
        {
            btncancel.Visibility = Visibility.Hidden;
            btnedit.Visibility = Visibility.Visible;
            btnsave.IsEnabled = false;
            EmpData.IsEnabled = false;
            EmpData2.IsEnabled = false;

            try
            {
                getpersonalinfo();
            }
            catch { }
            getemployeeaddress();
        }
        
        private void BirthDate_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (!String.IsNullOrEmpty(BirthDate.DateTimeText))
            {
                DateTime dt = Convert.ToDateTime(BirthDate.DateTimeText);
                Age.Text = GetAge(Convert.ToDateTime(dt.Date.ToString("dd-MMM-yyyy"))).ToString();
            }
        }

        private void btnsave_Click(object sender, RoutedEventArgs e)
        {
            var r = db.t_EmpMaster.SingleOrDefault(b => b.EmpID == EmpID.Text);
            if (r != null)
            {
                r.LastName = string.IsNullOrEmpty(LastName.Text) ? DBNull.Value.ToString() : LastName.Text;

                r.FirstName = string.IsNullOrEmpty(FirstName.Text) ? DBNull.Value.ToString() : FirstName.Text;

                r.MiddleName = string.IsNullOrEmpty(MiddleName.Text) ? DBNull.Value.ToString() : MiddleName.Text;

                r.Mobile = string.IsNullOrEmpty(Mobile.Text) ? DBNull.Value.ToString() : Mobile.Text;

                r.Phone = string.IsNullOrEmpty(Phone.Text) ? DBNull.Value.ToString() : Phone.Text;

                r.EmailAddress = string.IsNullOrEmpty(EmailAddress.Text) ? DBNull.Value.ToString() : EmailAddress.Text;

                r.ContactPerson = string.IsNullOrEmpty(ContactPerson.Text) ? DBNull.Value.ToString() : ContactPerson.Text;

                r.ContactAddress = string.IsNullOrEmpty(ContactAddress.Text) ? DBNull.Value.ToString() : ContactAddress.Text;

                r.ContactPhone = string.IsNullOrEmpty(ContactPhone.Text) ? DBNull.Value.ToString() : ContactPhone.Text;

                r.AppointmentPaperIssued = Convert.ToBoolean(AppointmentPaperIssued.IsChecked);

                r.IDissued = Convert.ToBoolean(IDissued.IsChecked);

                r.CivilStatus = string.IsNullOrEmpty(CivilStatus.SelectedValue.ToString()) ? DBNull.Value.ToString() : CivilStatus.SelectedValue.ToString();

                r.SSSno = string.IsNullOrEmpty(SSSno.Text) ? DBNull.Value.ToString() : SSSno.Text;

                r.PHno = string.IsNullOrEmpty(PHno.Text) ? DBNull.Value.ToString() :PHno.Text;

                r.TIN = string.IsNullOrEmpty(TIN.Text) ? DBNull.Value.ToString() : TIN.Text;

                r.PagIbigNo = string.IsNullOrEmpty(PagIbigNo.Text) ? DBNull.Value.ToString() : PagIbigNo.Text;

                r.BatchNo = Convert.ToInt32(BatchNo.Text);

                r.ProximityCardID = string.IsNullOrEmpty(ProximityCardID.Text) ? DBNull.Value.ToString() :ProximityCardID.Text;

                if (HireDate.SelectedDate.HasValue)
                {
                    r.HireDate = HireDate.SelectedDate.Value;//Convert.ToDateTime(EndDate.DateTimeText);
                }
                else { r.HireDate = null; }

                if (BirthDate.SelectedDate.HasValue)
                {
                    r.BirthDate = BirthDate.SelectedDate.Value;//Convert.ToDateTime(EndDate.DateTimeText);
                }
                else { r.BirthDate = null; }

                r.Height = string.IsNullOrEmpty(Height.Text.Trim()) ? DBNull.Value.ToString() : Height.Text.Trim();

                r.Weight = string.IsNullOrEmpty(Weight.Text.Trim()) ? DBNull.Value.ToString() : Weight.Text.Trim();

                r.WeightUnit = string.IsNullOrEmpty(WeightUnit.SelectedValue.ToString().Trim()) ? DBNull.Value.ToString() 
                    : WeightUnit.SelectedValue.ToString().Trim();

                r.HeightUnit = string.IsNullOrEmpty(HeightUnit.SelectedValue.ToString().Trim()) ? DBNull.Value.ToString() 
                    : HeightUnit.SelectedValue.ToString().Trim();

                r.Religion = string.IsNullOrEmpty(Religion.SelectedValue.ToString().Trim()) ? DBNull.Value.ToString() 
                    : Religion.SelectedValue.ToString().Trim();

                r.Sex = string.IsNullOrEmpty(Sex.SelectedValue.ToString().Trim()) ? DBNull.Value.ToString() 
                    : Sex.SelectedValue.ToString().Trim();

                r.Nationality = string.IsNullOrEmpty(Nationality.SelectedValue.ToString().Trim()) ? DBNull.Value.ToString() 
                    : Nationality.SelectedValue.ToString().Trim();

                if (ShuttleDestination.SelectedIndex != -1)
                {
                    r.ShuttleDestination = Convert.ToInt32(ShuttleDestination.SelectedValue.ToString());
                }
                else { }

                if (EndDate.SelectedDate.HasValue)
                {
                    r.EndOfWork = EndDate.SelectedDate.Value;//Convert.ToDateTime(EndDate.DateTimeText);
                }
                else { r.EndOfWork = null; }

                r.Department = string.IsNullOrEmpty(Department.SelectedValue.ToString().Trim()) ? DBNull.Value.ToString() 
                    : Department.SelectedValue.ToString();

                r.Section = string.IsNullOrEmpty(Section.SelectedValue.ToString().Trim()) ? DBNull.Value.ToString().Trim() 
                    : Section.SelectedValue.ToString();

                r.Position = string.IsNullOrEmpty(Position.SelectedValue.ToString()) ? DBNull.Value.ToString() 
                    : Position.SelectedValue.ToString();

                r.EmploymentStatus = string.IsNullOrEmpty(EmploymentStatus.SelectedValue.ToString()) ? DBNull.Value.ToString() 
                    : EmploymentStatus.SelectedValue.ToString();

                if (data != null)
                {
                    r.EmpPicture = data;
                }
                else { }

                db.SaveChanges();

                btncancel.Visibility = Visibility.Hidden;
                btnedit.Visibility = Visibility.Visible;
                btnsave.IsEnabled = false;
                EmpData.IsEnabled = false;
                EmpData2.IsEnabled = false;

                getpersonalinfo();
                MessageBox.Show("Updated!");
                
            }
        }
    }
}
