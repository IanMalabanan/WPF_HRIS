
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
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
    /// Interaction logic for Archive.xaml
    /// </summary>
    public partial class Archive : Window
    {
        HRISEntities db = new HRISEntities();
        public Archive()
        {
            InitializeComponent();
        }


        void fillGrid()
        {
            gridActiveFile.ItemsSource = db.t_EmpMaster.Where(e => e.IsDeleted == false).OrderBy(e => e.SerialID);
            gridHistoryFile.ItemsSource = db.t_EmpMaster.Where(e => e.IsDeleted == true).OrderBy(e => e.SerialID);
        }

        //void fillActive()
        //{
        //    //var res = from a in db.t_EmpMaster
        //    //          from b in db.t_Department
        //    //          from c in db.t_DepartmentalSection
        //    //          where a.Department == b.DeptCode && a.Department == c.DeptCode && a.Section == c.SectCode
        //    //          orderby a.SerialID descending
        //    //          select new { a.EmpPicture, a.EmpID, Fullname = (a.LastName + "," + a.FirstName + " " + a.MiddleName.Substring(0, 1) + "."), b.DeptName, c.SectName};
            
        //    //gridActiveFile.ItemsSource = db.t_EmpMaster.ToList();

        //    gridActiveFile.ItemsSource = db.t_EmpMaster.Where(e => e.IsDeleted == false);
        //}

        //void fillHistory()
        //{
        //    //var res = from a in db.t_EmpMasterArchive
        //    //          from b in db.t_Department
        //    //          from c in db.t_DepartmentalSection
        //    //          where a.Department == b.DeptCode && a.Department == c.DeptCode && a.Section == c.SectCode
        //    //          orderby a.SerialID descending
        //    //          select new { a.EmpPicture, a.EmpID, Fullname = (a.LastName + "," + a.FirstName + " " + a.MiddleName.Substring(0, 1) + "."), b.DeptName, c.SectName };
           
        //    //gridHistoryFile.ItemsSource = db.t_EmpMasterArchive.ToList();
        //    gridHistoryFile.ItemsSource = db.t_EmpMaster.Where(e => e.IsDeleted == true);
        //}
       
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            fillGrid();
        }






        private void Button_Click(object sender, RoutedEventArgs e)
        {
            //MessageBox.Show("Confirm?", "Move to Archive",
            //   MessageBoxButton.YesNo, MessageBoxImage.Warning);

            if (MessageBox.Show("Confirm?", "Move to Archive",MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.Yes)
            {
                try
                {
                    t_EmpMaster emp = db.t_EmpMaster.First(p => p.EmpID == EmpIDActive);
                    emp.IsDeleted = true;
                    db.SaveChanges();
                    fillGrid();
                }
                catch { MessageBox.Show("select employee"); }
            }
            else
            {
                
            }

           
            //try
            //{
            //    foreach (var xe in db.t_EmpMaster.Where(p => p.EmpID == EmpIDActive))
            //    {

            //        var newarchive = new t_EmpMasterArchive();

            //        newarchive.BatchNo = xe.BatchNo;
            //        newarchive.SerialID = xe.SerialID;
            //        newarchive.EmpID = xe.EmpID;
            //        newarchive.ProximityCardID = xe.ProximityCardID;
            //        newarchive.LastName = xe.LastName;
            //        newarchive.FirstName = xe.FirstName;
            //        newarchive.MiddleName = xe.MiddleName;
            //        newarchive.Phone = xe.Phone;
            //        newarchive.Mobile = xe.Mobile;
            //        newarchive.Sex = xe.Sex;
            //        newarchive.BirthDate = xe.BirthDate;
            //        newarchive.HireDate = xe.HireDate;
            //        newarchive.EmploymentStatus = xe.EmploymentStatus;
            //        newarchive.Nationality = xe.Nationality;
            //        newarchive.Religion = xe.Religion;
            //        newarchive.CivilStatus = xe.CivilStatus;
            //        newarchive.Position = xe.Position;
            //        newarchive.Department = xe.Department;
            //        newarchive.Section = xe.Section;
            //        newarchive.SSSno = xe.SSSno;
            //        newarchive.PHno = xe.PHno;
            //        newarchive.PagIbigNo = xe.PagIbigNo;
            //        newarchive.TIN = xe.TIN;
            //        newarchive.EmailAddress = xe.EmailAddress;
            //        newarchive.ContactPerson = xe.ContactPerson;
            //        newarchive.ContactPhone = xe.ContactPhone;
            //        newarchive.ContactAddress = xe.ContactAddress;
            //        newarchive.Height = xe.Height;
            //        newarchive.HeightUnit = xe.HeightUnit;
            //        newarchive.Weight = xe.Weight;
            //        newarchive.WeightUnit = xe.WeightUnit;

            //        newarchive.EndOfWork = xe.EndOfWork;

            //        newarchive.ShuttleDestination = xe.ShuttleDestination;
            //        newarchive.HighestEducationalAttainment = xe.HighestEducationalAttainment;
            //        newarchive.IDissued = xe.IDissued;
            //        newarchive.AppointmentPaperIssued = xe.AppointmentPaperIssued;
            //        newarchive.EmpPicture = xe.EmpPicture;
            //        //_maindata.InitialEntryBy = adminusers.Text;

            //        db.t_EmpMasterArchive.Add(newarchive);
                   



            //    }
            //    db.SaveChanges();
            //    removeEmpToActive();

            //    fillActive();
            //    fillHistory();
            //}
            //catch { }
        }


        //void removeEmpToActive()
        //{
        //    db.t_EmpMaster.RemoveRange(db.t_EmpMaster.Where(x => x.EmpID == EmpIDActive));
        //    db.SaveChanges();
        //}


        //void removeEmpToArchive()
        //{
        //    db.t_EmpMasterArchive.RemoveRange(db.t_EmpMasterArchive.Where(x => x.EmpID == EmpIDHistory));
        //    db.SaveChanges();
        //}


        string EmpIDActive;
        string EmpIDHistory;
        private void gridActiveFile_SelectionChanged(object sender, Telerik.Windows.Controls.SelectionChangeEventArgs e)
        {
               foreach (var data in gridActiveFile.SelectedItems)
               {
                 t_EmpMaster myData = data as t_EmpMaster;
                 EmpIDActive = myData.EmpID;
              }
        }

        private void gridHistoryFile_SelectionChanged(object sender, Telerik.Windows.Controls.SelectionChangeEventArgs e)
        {
            //foreach (var data in gridHistoryFile.SelectedItems)
            //{
            //    t_EmpMasterArchive myData = data as t_EmpMasterArchive;
            //    EmpIDHistory = myData.EmpID;
            //}

            foreach (var data in gridHistoryFile.SelectedItems)
            {
                t_EmpMaster myData = data as t_EmpMaster;
                EmpIDHistory = myData.EmpID;
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Confirm?", "Remove from Archive", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.Yes)
            {
                try
                {
                    //t_EmpMaster emp = db.t_EmpMaster.First(p => p.EmpID == EmpIDActive);
                    //emp.IsDeleted = true;
                    //db.SaveChanges();
                    //fillGrid();
                    t_EmpMaster emp = db.t_EmpMaster.First(p => p.EmpID == EmpIDHistory);
                    emp.IsDeleted = false;
                    db.SaveChanges();
                    fillGrid();
                }
                catch { MessageBox.Show("select employee"); }
            }
            else
            {

            }
            
        }

    }
}
