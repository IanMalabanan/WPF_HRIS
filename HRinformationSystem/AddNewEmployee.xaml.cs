
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Validation;
using System.Data.SqlClient;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Linq.Expressions;
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
using Telerik.Windows.Controls;
using Telerik.Windows.Controls.GridView;

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for AddNewEmployee.xaml
    /// </summary>
    public partial class AddNewEmployee : Window
    {
        HRISEntities db = new HRISEntities();
        public AddNewEmployee()
        {
            InitializeComponent();

            bindCombo();

            getBatchNum();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            bindDependents();
            bindWorkExp();
        }

        private void bindCombo()
        {
            Department.ItemsSource = db.t_Department.Where(p => p.DeptName != "--").ToList();
            ShuttleDestination.ItemsSource = db.t_ShuttleDestination.ToList();
            CivilStatus.ItemsSource = db.t_CivilStatus.ToList();
            Nationality.ItemsSource = db.t_Nationality.ToList();
            HeightUnit.ItemsSource = db.t_HeightUnit.ToList();
            WeightUnit.ItemsSource = db.t_WeightUnit.ToList();
            Sex.ItemsSource = db.t_Sex.ToList();
            Nationality.ItemsSource = db.t_Nationality.ToList();
            EmploymentStatus.ItemsSource = db.t_EmpStatus.ToList().OrderBy(i => i.Description);
            Religion.ItemsSource = db.t_Religion.ToList().OrderBy(i => i.Description);
            CountryName.ItemsSource = db.t_Country.ToList();
            PermanentCountryName.ItemsSource = db.t_Country.ToList();
            HighestEducationalAttainment.ItemsSource = db.t_EducationalAttainment.ToList();

            //((GridViewComboBoxColumn)this.gridDependent.Columns["Relationship"]).ItemsSource = db.t_DependentRelation.ToList();


        }

        private void bindDependents()
        {
            ((GridViewComboBoxColumn)this.gridDependent.Columns["Relationship"]).ItemsSource = db.t_DependentRelation.ToList();
            gridDependent.ItemsSource = db.t_TempEmpDependents.Where(p => p.EmpID == adminusers.Text).ToList();
        }

        private void bindWorkExp()
        {
            gridWorkExp.ItemsSource = db.t_TempEmpWorkExp.Where(p => p.EmpID == adminusers.Text).ToList();
        }


        private void Department_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Section.ItemsSource = db.t_DepartmentalSection.Where(p => p.DeptCode == Department.SelectedValue.ToString() && p.SectName != "--").ToList();
            Position.ItemsSource = db.t_Position.Where(p => p.DeptCode == Department.SelectedValue.ToString() && p.Description != "--").ToList();
        }


        void getBatchNum()
        {
            var items = db.t_EmpMaster.OrderByDescending(p => p.SerialID).Take(1);
            foreach (var item in items)
            {

                if (DateTime.Now.Month.ToString() != item.HireDate.ToString())
                {
                    BatchNo.Text = (Convert.ToInt32(item.BatchNo + 1).ToString());
                }
                else
                {
                    BatchNo.Text = item.BatchNo.ToString().Trim();
                }
            }
        }


        public Int32 GetAge(DateTime dateOfBirth)
        {
            var today = DateTime.Today;

            var a = (today.Year * 100 + today.Month) * 100 + today.Day;
            var b = (dateOfBirth.Year * 100 + dateOfBirth.Month) * 100 + dateOfBirth.Day;

            return (a - b) / 10000;
        }

        private void BirthDate_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (!String.IsNullOrEmpty(BirthDate.DateTimeText))
            {
                DateTime dt = Convert.ToDateTime(BirthDate.DateTimeText);
                Age.Text = GetAge(Convert.ToDateTime(dt.Date.ToString("dd-MMM-yyyy"))).ToString();
            }
        }


        //private static byte[] fileUpload;
        //private static string Picture_Filename;
        //string name = string.Empty;
        //string sourceFile = string.Empty;
        //string destFile = string.Empty;

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
            //OpenFileDialog op = new OpenFileDialog();
            //op.Title = "Select a picture";
            //op.Filter = "All supported graphics|*.jpg;*.jpeg;*.png|" +
            //  "JPEG (*.jpg;*.jpeg)|*.jpg;*.jpeg|" +
            //  "Portable Network Graphic (*.png)|*.png";
            //if (op.ShowDialog() == true)
            //{
            //    EmpPicture.Source = new BitmapImage(new Uri(op.FileName));


            //    //Initialize a file stream to read the image file
            //    FileStream fs = new FileStream(op.FileName, FileMode.Open, FileAccess.Read);

            //    //Initialize a byte array with size of stream
            //    byte[] imgByteArr = new byte[fs.Length];

            //    //Read data from the file stream and put into the byte array
            //    fs.Read(imgByteArr, 0, Convert.ToInt32(fs.Length));
            //    //MessageBox.Show(imgByteArr.ToString());
            //    fileUpload = imgByteArr;
            //    //file upload save as byte

            //    string attchment = Regex.Replace(System.IO.Path.GetFileName(op.FileName), @"\s", string.Empty);

            //    Picture_Filename = attchment;

            //    name = System.IO.Path.GetFileName(Picture_Filename);

            //    sourceFile = System.IO.Path.Combine(op.FileName);

            //    destFile = System.IO.Path.Combine(@"\\skpi-wpcs\c$\SKPI_System_Files\HRiS\", Picture_Filename);

            //}
        }


        private void CountryName_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ProvName.ItemsSource = db.t_Province.Where(p => p.CountryID.ToString() == CountryName.SelectedValue.ToString()).ToList();
        }

        private void PermanentCountryName_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            PermanentProvName.ItemsSource = db.t_Province.Where(p => p.CountryID.ToString() == PermanentCountryName.SelectedValue.ToString()).ToList();
        }

        private void ProvName_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (ProvName.SelectedIndex == -1)
            {
                CityName.SelectedIndex = -1;
            }
            else
            {
                CityName.ItemsSource = db.t_City.Where(p => p.CountryID.ToString() == CountryName.SelectedValue.ToString() && p.ProvID.ToString() == ProvName.SelectedValue.ToString()).ToList();
            }
        }

        private void PermanentProvName_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (PermanentProvName.SelectedIndex == -1)
            {
                PermanentCityName.SelectedIndex = -1;
            }
            else
            {
                PermanentCityName.ItemsSource = db.t_City.Where(p => p.CountryID.ToString() == PermanentCountryName.SelectedValue.ToString() && p.ProvID.ToString() == PermanentProvName.SelectedValue.ToString()).ToList();
            }
        }

        private void setpermanent_Click(object sender, RoutedEventArgs e)
        {
            if (setpermanent.IsChecked == true)
            {
                PermanentCountryName.Text = CountryName.Text;
                PermanentProvName.Text = ProvName.Text;
                PermanentCityName.Text = CityName.Text;
                PermanentStreet.Text = Street.Text;
            }
            else
            {
                PermanentCountryName.SelectedValue = -1;
                PermanentProvName.SelectedValue = -1;
                PermanentCityName.SelectedValue = -1;
                PermanentStreet.Text = "";
            }
        }

        void cancelbutton()
        {
            string sMessageBoxText = "Do you want to cancel?";
            string sCaption = "Cancel?";

            MessageBoxButton btnMessageBox = MessageBoxButton.YesNo;
            MessageBoxImage icnMessageBox = MessageBoxImage.Warning;

            MessageBoxResult rsltMessageBox = MessageBox.Show(sMessageBoxText, sCaption, btnMessageBox, icnMessageBox);

            switch (rsltMessageBox)
            {
                case MessageBoxResult.Yes:
                    removeTempDependents();
                    removeTempExperience();

                    this.Close();
                    EmployeeList EmployeeList = new EmployeeList();
                    EmployeeList.ShowDialog();


                    break;

                case MessageBoxResult.No:
                    /* ... */
                    break;

            }
        }

        private void RadButton_Click(object sender, RoutedEventArgs e)
        {
            cancelbutton();
        }

        //public DataSet  createID()
        //{
        //    string query = "declare @lastcount int =" ;

        //            query += "case when (select count(*) from t_EmpMaster) = 0 then";
        //            query +="(select count(*) + 1 from t_EmpMaster)";
        //            query += "else";
        //            query +="(select Top 1 SerialID from t_EmpMaster order by SerialID desc) + 1";
        //            query +="end";
        //            query +="select Top 1 (case 	when convert(smallint, @lastcount) > 0 and convert(smallint, @lastcount) <= 9 then '0000' + @lastcount";
        //            query +="when convert(smallint, @lastcount) >= 10 and convert(smallint, @lastcount) <= 99 then'000' + @lastcount";
        //            query +="when convert(smallint, @lastcount) >= 100 and convert(smallint, @lastcount) <= 999 then '00' + @lastcount";
        //            query +="when convert(smallint, @lastcount) >= 1000 and convert(smallint, @lastcount) <= 9999 then '0' + @lastcount";
        //            query +="else";
        //            query +="@lastcount";
        //            query +="end) as idcounter from t_EmpMaster";


        //    SqlCommand cmd = new SqlCommand(query);

        //    cmd.CommandType = CommandType.Text;

        //    return SqlHelper.ExecuteDataSet("constr", cmd);

        //}

        //public DataTable Counter()
        //{
        //    return createID().Tables[0];
        //}

        string NewEmpID;

        int SerialNo;

        public void createID()
        {
            String sDate = BirthDate.DateTimeText;

            DateTime datevalue = (Convert.ToDateTime(sDate.ToString()));

            String dy = datevalue.Day.ToString().PadLeft(2, '0');

            String mn = string.Empty;

            if (datevalue.Month >= 1 && datevalue.Month <= 9)
            {
                mn = "0" + datevalue.Month.ToString();
            }
            else
            {
                mn = datevalue.Month.ToString();
            }

            String yy = datevalue.Year.ToString();

            string empbday = dy + mn + yy.Substring(yy.Length - 2);

            var items = db.t_EmpMaster.OrderByDescending(s => s.SerialID).FirstOrDefault();

            SerialNo = items.SerialID + 1;

            NewEmpID = empbday + "-" + SerialNo;
        }

        private void finish_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                createID();

                SaveMasterData();
                SaveEmpAddress();
                SaveEducationalBG();
                SaveDependents();
                SaveWorkExp();

                MessageBox.Show("success");
                this.Close();
                EmployeeList EmployeeList = new EmployeeList();
                EmployeeList.ShowDialog();

            }
            catch (DbEntityValidationException ex)
            {
                string errorMessages = string.Join("; ", ex.EntityValidationErrors.SelectMany(x => x.ValidationErrors).Select(x => x.ErrorMessage));
                throw new DbEntityValidationException(errorMessages);
            }


        }


        string depName;
        string depBirthDate = "01-01-2020";
        string depRelationship;
        string depOccupation;
        string depMaidenName;

        string depName2;
        string depBirthDate2 = "01-01-2020";
        string depRelationship2;
        string depOccupation2;
        string depMaidenName2;
        private void gridDependent_AddingNewDataItem(object sender, Telerik.Windows.Controls.GridView.GridViewAddingNewEventArgs e)
        {
            try
            {
                var depen = new t_TempEmpDependents();
                depen.EmpID = adminusers.Text;
                depen.Name = depName;
                depen.BirthDate = Convert.ToDateTime(depBirthDate);
                depen.Relationship = depRelationship;
                depen.Occupation = depOccupation;
                depen.MaidenName = depMaidenName;
                depen.LastUpdate = DateTime.Now;
                e.NewObject = depen;
                db.t_TempEmpDependents.Add(depen);

            }
            catch { }
        }

        private void gridDependent_RowEditEnded(object sender, GridViewRowEditEndedEventArgs e)
        {
            if (e.EditAction == GridViewEditAction.Cancel)
            {
                return;
            }
            if (e.EditOperationType == GridViewEditOperationType.Insert)
            {
                try
                {
                    db.SaveChanges();
                    bindDependents();
                }
                catch { }

            }
            else if (e.EditOperationType == GridViewEditOperationType.Edit)
            {
                try
                {
                    foreach (var data in gridDependent.SelectedItems)
                    {
                        t_TempEmpDependents myData = data as t_TempEmpDependents;
                        depName = myData.Name;
                        depBirthDate = Convert.ToString(myData.BirthDate);
                        depRelationship = myData.Relationship;
                        depOccupation = myData.Occupation;
                        depMaidenName = myData.MaidenName;

                        t_TempEmpDependents dep = db.t_TempEmpDependents.First(p => p.EmpID == adminusers.Text);
                        dep.Name = depName;
                        dep.BirthDate = Convert.ToDateTime(depBirthDate);
                        dep.Relationship = depRelationship;
                        dep.Occupation = depOccupation;
                        dep.MaidenName = depMaidenName;

                        db.SaveChanges();
                        bindDependents();
                    }
                }
                catch { }
            }



            ////try
            ////{
            //foreach (var data in gridDependent.SelectedItems)
            //{
            //    //t_TempEmpDependents myData = data as t_TempEmpDependents;
            //    //depName = myData.Name;
            //    ////depBirthDate = Convert.ToString(myData.BirthDate);
            //    //depRelationship = myData.Relationship;
            //    //depOccupation = myData.Occupation;
            //    //depMaidenName = myData.MaidenName;

            //    t_TempEmpDependents dep = db.t_TempEmpDependents.First(p => p.EmpID == adminusers.Text);
            //    dep.Name = depName;
            //    //dep.BirthDate = Convert.ToDateTime(depBirthDate);
            //    dep.Relationship = depRelationship;
            //    dep.Occupation = depOccupation;
            //    dep.MaidenName = depMaidenName;
            //    db.SaveChanges();

            //}
            ////}
            ////catch { }


        }

        private void gridDependent_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            try
            {
                if (e.Key == Key.Delete)
                {
                    foreach (var data in gridDependent.SelectedItems)
                    {
                        t_TempEmpDependents myData = data as t_TempEmpDependents;
                        var delete = db.t_TempEmpDependents.Where(p => p.EmpID == adminusers.Text && p.Name == myData.Name).FirstOrDefault();
                        db.t_TempEmpDependents.Remove(delete);
                        db.SaveChanges();
                    }
                }
                else { return; }
            }
            catch { }
        }


        void removeTempDependents()
        {
            db.t_TempEmpDependents.RemoveRange(db.t_TempEmpDependents.Where(x => x.EmpID == adminusers.Text));
            db.SaveChanges();
        }

        void removeTempExperience()
        {
            db.t_TempEmpWorkExp.RemoveRange(db.t_TempEmpWorkExp.Where(x => x.EmpID == adminusers.Text));
            db.SaveChanges();
        }

        private void gridWorkExp_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            try
            {
                if (e.Key == Key.Delete)
                {
                    foreach (var data in gridWorkExp.SelectedItems)
                    {
                        t_TempEmpWorkExp myData = data as t_TempEmpWorkExp;
                        var delete = db.t_TempEmpWorkExp.Where(p => p.EmpID == adminusers.Text && p.CompanyName == myData.CompanyName).FirstOrDefault();
                        db.t_TempEmpWorkExp.Remove(delete);
                        db.SaveChanges();
                    }
                }
                else { return; }
            }
            catch { }
        }

        string compName;
        string compAddress;
        string compFrom = "01-01-2020";
        string compTo = "01-01-2020";
        string compPosition;
        string compName2;
        string compAddress2;
        string compFrom2 = "01-01-2020";
        string compTo2 = "01-01-2020";
        string compPosition2;
        private void gridWorkExp_AddingNewDataItem(object sender, GridViewAddingNewEventArgs e)
        {
            try
            {
                var work = new t_TempEmpWorkExp();
                work.EmpID = adminusers.Text;
                work.CompanyName = compName;
                work.CompanyAddress = compAddress;
                work.DateFrom = Convert.ToDateTime(compFrom); ;
                work.DateTo = Convert.ToDateTime(compTo); ;
                work.Position = compPosition;
                work.LastUpdate = DateTime.Now;
                e.NewObject = work;
                db.t_TempEmpWorkExp.Add(work);

            }
            catch { }
        }

        private void gridWorkExp_RowEditEnded(object sender, GridViewRowEditEndedEventArgs e)
        {
            if (e.EditAction == GridViewEditAction.Cancel)
            {
                return;
            }
            if (e.EditOperationType == GridViewEditOperationType.Insert)
            {
                try
                {
                    db.SaveChanges();
                    bindWorkExp();
                }
                catch { }

            }
            else if (e.EditOperationType == GridViewEditOperationType.Edit)
            {
                try
                {
                    foreach (var data in gridWorkExp.SelectedItems)
                    {
                        t_TempEmpWorkExp myData = data as t_TempEmpWorkExp;
                        compName = myData.CompanyName;
                        compAddress = myData.CompanyAddress;
                        compPosition = myData.Position;
                        compFrom = Convert.ToString(myData.DateFrom);
                        compTo = Convert.ToString(myData.DateTo);


                        t_TempEmpWorkExp workexp = db.t_TempEmpWorkExp.First(p => p.EmpID == adminusers.Text);
                        workexp.CompanyName = compName;
                        workexp.CompanyAddress = compAddress;
                        workexp.Position = compPosition;
                        workexp.DateFrom = Convert.ToDateTime(compFrom);
                        workexp.DateTo = Convert.ToDateTime(compTo);

                        db.SaveChanges();
                        bindWorkExp();
                    }
                }
                catch { }
            }
        }

        private void SaveMasterData()
        {
            t_EmpMaster empdata = new t_EmpMaster();
            empdata.SerialID = SerialNo;
            empdata.BatchNo = Convert.ToInt32(BatchNo.Text);
            empdata.EmpID = NewEmpID;
            empdata.ProximityCardID = ProximityCardID.Text;
            empdata.LastName = LastName.Text;
            empdata.FirstName = FirstName.Text;
            empdata.MiddleName = MiddleName.Text;
            empdata.Phone = Phone.Text;
            empdata.Mobile = Mobile.Text;
            empdata.Sex = Sex.SelectedValue.ToString();
            empdata.BirthDate = Convert.ToDateTime(BirthDate.DateTimeText);
            empdata.HireDate = Convert.ToDateTime(HireDate.DateTimeText);
            empdata.EmploymentStatus = EmploymentStatus.SelectedValue.ToString();
            empdata.Nationality = Nationality.SelectedValue.ToString();
            empdata.Religion = Religion.SelectedValue.ToString();
            empdata.CivilStatus = CivilStatus.SelectedValue.ToString();
            empdata.Position = Position.SelectedValue.ToString();
            empdata.Department = Department.SelectedValue.ToString();
            empdata.Section = Section.SelectedValue.ToString();
            empdata.SSSno = SSSno.Text;
            empdata.PHno = PHno.Text;
            empdata.PagIbigNo = PagIbigNo.Text;
            empdata.TIN = TIN.Text;
            empdata.EmailAddress = EmailAddress.Text;
            empdata.ContactPerson = ContactPerson.Text;
            empdata.ContactPhone = ContactPhone.Text;
            empdata.ContactAddress = ContactAddress.Text;
            empdata.Height = Height.Text;
            empdata.HeightUnit = HeightUnit.SelectedValue.ToString();
            empdata.Weight = Weight.Text;
            empdata.WeightUnit = WeightUnit.Text;
            if (!EndOfWork.SelectedDate.HasValue)
            {
                empdata.EndOfWork = null;
            }
            else
            {
                empdata.EndOfWork = Convert.ToDateTime(EndOfWork.DateTimeText);
            }
            empdata.LoaforManagerApproval = false;
            empdata.IsDeleted = false;
            empdata.firstevaluation = false;
            empdata.secondevaluation = false;
            empdata.thirdevaluation = false;
            empdata.InitialEntryBy = adminusers.Text;
            empdata.InitialEntryDate = DateTime.Now;
            empdata.ShuttleDestination = Convert.ToInt32(ShuttleDestination.SelectedValue.ToString());
            empdata.HighestEducationalAttainment = HighestEducationalAttainment.SelectedValue.ToString();
            empdata.IDissued = Convert.ToBoolean(IDissued.IsChecked);
            empdata.AppointmentPaperIssued = Convert.ToBoolean(AppointmentPaperIssued.IsChecked);

            empdata.EmpPicture = data;
            //_maindata.InitialEntryBy = adminusers.Text;

            db.t_EmpMaster.Add(empdata);
            db.SaveChanges();

        }

        private void SaveEducationalBG()
        {
            t_EmpEducationalBackground educ = new t_EmpEducationalBackground();
            educ.EmpID = NewEmpID;
            educ.ElementarySchool = ElementarySchool.Text;
            educ.ElementaryAddress = ElementaryAddress.Text;
            educ.ElementaryYear = ElementaryYear.Text;
            educ.SecondarySchool = SecondarySchool.Text;
            educ.SecondaryAddress = SecondaryAddress.Text;
            educ.SecondaryYear = SecondaryYear.Text;
            educ.TertiarySchool = TertiarySchool.Text;
            educ.TertiaryAddress = TertiaryAddress.Text;
            educ.TertiaryCourse = TertiaryCourse.Text;
            educ.TertiaryYear = TertiaryYear.Text;
            educ.VocationalSchool = VocationalSchool.Text;
            educ.VocationalCourse = VocationalCourse.Text;
            educ.VocationalAddress = VocationalAddress.Text;
            educ.VocationalYear = VocationalYear.Text;
            educ.PostGraduateSchool = PostGraduatedSchool.Text;
            educ.PostGraduateCourse = PostGraduatedCourse.Text;
            educ.PostGraduateAddress = PostGraduatedAddress.Text;
            educ.PostGraduateYear = PostGraduatedYear.Text;
            educ.IsLicensed = Convert.ToBoolean(IsLicensed.IsChecked);
            educ.LastUpdate = DateTime.Now;

            db.t_EmpEducationalBackground.Add(educ);
            db.SaveChanges();

        }

        private void SaveEmpAddress()
        {
            t_EmpAddress address = new t_EmpAddress();
            address.EmpID = NewEmpID;
            address.PresCountryID = Convert.ToInt32(CountryName.SelectedValue.ToString());
            address.PresProvinceID = Convert.ToInt32(ProvName.SelectedValue.ToString());
            address.PresCityID = Convert.ToInt32(CityName.SelectedValue.ToString());
            address.PresStreet = Street.Text;

            if (setpermanent.IsChecked == true)
            {
                address.PermCountryID = Convert.ToInt32(CountryName.SelectedValue.ToString());
                address.PermProvinceID = Convert.ToInt32(ProvName.SelectedValue.ToString());
                address.PermCityID = Convert.ToInt32(CityName.SelectedValue.ToString());
                address.PermStreet = Street.Text;
            }
            else
            {
                address.PermCountryID = Convert.ToInt32(PermanentCountryName.SelectedValue.ToString());
                address.PermProvinceID = Convert.ToInt32(PermanentProvName.SelectedValue.ToString());
                address.PermCityID = Convert.ToInt32(PermanentCityName.SelectedValue.ToString());
                address.PermStreet = PermanentStreet.Text;
            }

            address.LastUpdate = DateTime.Now;

            db.t_EmpAddress.Add(address);
            db.SaveChanges();
        }

        private void SaveDependents()
        {
            try
            {
                foreach (var xe in db.t_TempEmpDependents.Where(p => p.EmpID == adminusers.Text))
                {
                    depName2 = xe.Name;
                    depBirthDate2 = Convert.ToString(xe.BirthDate);
                    depRelationship2 = xe.Relationship;
                    depOccupation2 = xe.Occupation;
                    depMaidenName2 = xe.MaidenName;

                    var newdep = new t_EmpDependents();
                    newdep.EmpID = NewEmpID;
                    newdep.Name = depName2;
                    newdep.BirthDate = Convert.ToDateTime(depBirthDate2);
                    newdep.Relationship = depRelationship2;
                    newdep.Occupation = depOccupation2;
                    newdep.MaidenName = depMaidenName2;
                    newdep.LastUpdate = DateTime.Now;
                    db.t_EmpDependents.Add(newdep);



                }

                db.SaveChanges();
                removeTempDependents();
            }
            catch { }
        }

        private void SaveWorkExp()
        {
            try
            {
                foreach (var xe in db.t_TempEmpWorkExp.Where(p => p.EmpID == adminusers.Text))
                {
                    compName2 = xe.CompanyName;
                    compAddress2 = xe.CompanyAddress;
                    compPosition2 = xe.Position;
                    compFrom2 = Convert.ToString(xe.DateFrom);
                    compTo2 = Convert.ToString(xe.DateTo);

                    var newexp = new t_EmpWorkExperience();
                    newexp.EmpID = NewEmpID;
                    newexp.CompanyName = compName2;
                    newexp.CompanyAddress = compAddress2;
                    newexp.Position = compPosition2;
                    newexp.DateFrom = Convert.ToDateTime(compFrom2);
                    newexp.DateTo = Convert.ToDateTime(compTo2); ;
                    newexp.LastUpdate = DateTime.Now;
                    db.t_EmpWorkExperience.Add(newexp);

                }
                db.SaveChanges();
                removeTempExperience();
            }
            catch { }
        }

        private void Page0_Loaded(object sender, RoutedEventArgs e)
        {
            this.myradwizard.Next += myradwizard_Next;
        }

        private void myradwizard_Next(object sender, NavigationButtonsEventArgs e)
        {
            if (this.myradwizard.SelectedPage == Page0) // Check if this is the desired page
            {
                if (LastName.Text == "")
                {
                    errormessage.Text = "Last Name cannot be empty";
                    LastName.Focus();
                    myradwizard.SelectedPage = Page1;

                }
                else if (FirstName.Text == "")
                {
                    errormessage.Text = "First Name cannot be empty";
                    FirstName.Focus();
                    myradwizard.SelectedPage = Page1;
                }
                else if (CityName.SelectedValue == null || PermanentCityName.SelectedValue == null)
                {
                    errormessage.Text = "Please complete address";
                    myradwizard.SelectedPage = Page1;
                }
                else if (ContactPerson.Text == "")
                {
                    errormessage.Text = "Contact Person cannot be empty";
                    ContactPerson.Focus();
                    myradwizard.SelectedPage = Page1;
                }
                else if (ContactPhone.Text == "")
                {
                    errormessage.Text = "Contact Phone cannot be empty";
                    ContactPhone.Focus();
                    myradwizard.SelectedPage = Page1;
                }
                else if (ContactAddress.Text == "")
                {
                    errormessage.Text = "Contact Address cannot be empty";
                    ContactAddress.Focus();
                    myradwizard.SelectedPage = Page1;
                }
                else if (BirthDate.DateTimeText == "")
                {
                    errormessage.Text = "BirthDay cannot be empty";
                    BirthDate.Focus();
                    myradwizard.SelectedPage = Page1;
                }
                else if (CivilStatus.SelectedValue == null)
                {
                    errormessage.Text = "Please select Civil Status";
                    CivilStatus.Focus();
                    myradwizard.SelectedPage = Page1;
                }
                else if (Nationality.SelectedValue == null)
                {
                    errormessage.Text = "Please select Nationality";
                    Nationality.Focus();
                    myradwizard.SelectedPage = Page1;
                }
                else if (Religion.SelectedValue == null)
                {
                    errormessage.Text = "Please select Religion";
                    Religion.Focus();
                    myradwizard.SelectedPage = Page1;
                }
                else if (Sex.SelectedValue == null)
                {
                    errormessage.Text = "Please select Gender";
                    Sex.Focus();
                    myradwizard.SelectedPage = Page1;
                }
                else if (HireDate.DateTimeText == "")
                {
                    errormessage.Text = "Please select Hire Date";
                    HireDate.Focus();
                    myradwizard.SelectedPage = Page1;
                }

                else if (Department.SelectedValue == null)
                {
                    errormessage.Text = "Please select Department";
                    Department.Focus();
                    myradwizard.SelectedPage = Page1;
                }
                else if (Section.SelectedValue == null)
                {
                    errormessage.Text = "Please select Section";
                    Section.Focus();
                    myradwizard.SelectedPage = Page1;
                }
                else if (Position.SelectedValue == null)
                {
                    errormessage.Text = "Please select Position";
                    Position.Focus();
                    myradwizard.SelectedPage = Page1;
                }
                else if (EmploymentStatus.SelectedValue == null)
                {
                    errormessage.Text = "Please select Employee Status";
                    EmploymentStatus.Focus();
                    myradwizard.SelectedPage = Page1;
                }

                if (EmailAddress.Text.Length == 0)
                {

                }
                else
                {
                    if (!Regex.IsMatch(EmailAddress.Text, @"^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"))
                    {
                        errormessage.Text = "Please enter a valid email.";
                        EmailAddress.Select(0, EmailAddress.Text.Length);
                        EmailAddress.Focus();
                        myradwizard.SelectedPage = Page1;

                    }
                    else { }
                }

            }
        }






    }
}
