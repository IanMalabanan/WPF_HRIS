
using System;
using System.Collections.Generic;
using System.Configuration;
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

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for CreateEmpoyeeID.xaml
    /// </summary>
    public partial class CreateEmpoyeeID : Window
    {
        HRISEntities db = new HRISEntities();
        public CreateEmpoyeeID()
        {
            InitializeComponent();
            GEtEmpData();
            binddatagrid();
        }

        void GEtEmpData()
        {
            using (HRISEntities db = new HRISEntities())
            {
               
                var res = from a in db.t_EmpMaster
                          from b in db.t_Department
                          from c in db.t_DepartmentalSection
                          from d in db.t_Position
                          where a.Department == b.DeptCode && a.Department == c.DeptCode && a.Section == c.SectCode && a.Department == d.DeptCode && a.Position == d.Code && a.IsDeleted == false
                          orderby a.SerialID descending
                          select new { a.EmpPicture, a.EmpID, Fullname = (a.LastName + ", " + a.FirstName + " " + a.MiddleName.Substring(0,1) + "."), b.DeptName, c.SectName, d.Description };

                EmpName.ItemsSource = res.ToList();

              
            }
        }

        private void EmpName_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            getEmployeeEBG();
        }

        private static byte[] empimage;
        int BatchNo;
        string EmpID = string.Empty;
        string FirstName = string.Empty;
        string MiddleName = string.Empty;
        string LastName = string.Empty;
        string SSSno = string.Empty;
        string TIN = string.Empty;
        string ContactPerson = string.Empty;
        string ContactAddress = string.Empty;
        string ContactPhone = string.Empty;
        string Dept = string.Empty;

        public void getEmployeeEBG()
        {
            try
            {
                var selectQuery = from a in db.t_EmpMaster
                                  from b in db.t_Department
                                  from c in db.t_DepartmentalSection
                                  from d in db.t_Position
                                  where a.Department == b.DeptCode && a.Department == c.DeptCode && a.Section == c.SectCode && a.Department == d.DeptCode && a.Position == d.Code && a.EmpID == EmpName.SelectedValue

                                  select new { a.EmpPicture, a.EmpID, Fullname = (a.LastName + ", " + a.FirstName + " " + a.MiddleName.Substring(0, 1) + "."), b.DeptName, d.Description,
                                                a.FirstName,a.MiddleName,a.LastName,a.SSSno,a.TIN,a.ContactPerson,a.ContactPhone,a.ContactAddress,a.BatchNo};

                foreach (var item in selectQuery)
                {
                    EmpFName.Text = item.Fullname;
                    Position.Text = item.Description;
                    Department.Text = "(" + item.DeptName + ")";
                    employeeID.Text = item.EmpID;
                    BatchNo = item.BatchNo;
                    EmpID = item.EmpID;
                    FirstName = item.FirstName;
                    MiddleName = item.MiddleName;
                    LastName = item.LastName;
                    Dept = item.DeptName;
                    SSSno = item.SSSno;
                    TIN = item.TIN;
                    ContactPerson = item.ContactPerson;
                    ContactAddress = item.ContactAddress;
                    ContactPhone = item.ContactPhone;

                    empimage = item.EmpPicture;

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

                    EmpImage.Source = bi;


                }
            }
            catch { }
            }

        private void RadButton_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(EmpName.Text))
            {
                MessageBox.Show("Please Select Employee");
            }
            else
            {
                try
                {
                    t_EmpPrintID EmpforID = new t_EmpPrintID();
                    EmpforID.BatchNo = Convert.ToInt32(BatchNo);
                    EmpforID.EmpID = EmpID.ToString();
                    EmpforID.EmployeeName = EmpFName.Text;
                    EmpforID.Department = '('+ Dept.ToString() +')';
                    EmpforID.Position = Position.Text;
                    EmpforID.SSSno = SSSno.ToString();
                    EmpforID.TIN = TIN.ToString();
                    EmpforID.ContactPerson = ContactPerson.ToString();
                    EmpforID.ContactAddress = ContactAddress.ToString();
                    EmpforID.ContactPhone = ContactPhone.ToString();
                    EmpforID.Barcode = '*' + EmpID.ToString() +'*';
                    EmpforID.EmpPicture = empimage;
                    db.t_EmpPrintID.Add(EmpforID);
                    db.SaveChanges();
                    binddatagrid();

                    EmpName.Text = string.Empty;
                    //EmpName.SelectedIndex = -1;
                    EmpImage.Source = null;
                    EmpFName.Text = "";
                    Position.Text = "";
                    Department.Text = "";
                    employeeID.Text = "";
                }
                catch
                {
                    MessageBox.Show("Already Exist");
                }
            }
        }

        private void binddatagrid()
        {
            gridEmpforID.ItemsSource = db.t_EmpPrintID.ToList();

        }

        private void gridEmpforID_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Delete)
            {

                string sMessageBoxText = "Do you want to continue?";
                string sCaption = "Delete Employee";

                MessageBoxButton btnMessageBox = MessageBoxButton.YesNo;
                MessageBoxImage icnMessageBox = MessageBoxImage.Warning;

                MessageBoxResult rsltMessageBox = MessageBox.Show(sMessageBoxText, sCaption, btnMessageBox, icnMessageBox);

                switch (rsltMessageBox)
                {
                    case MessageBoxResult.Yes:
                        foreach (var data in gridEmpforID.SelectedItems)
                        {
                            t_EmpPrintID myData = data as t_EmpPrintID;
                            var deleteuser = db.t_EmpPrintID.Where(EmpID => EmpID.EmpID == myData.EmpID).FirstOrDefault();
                            db.t_EmpPrintID.Remove(deleteuser);
                            db.SaveChanges();
                        }
                        break;

                    case MessageBoxResult.No:
                        /* ... */
                        break;
                }
            }

            else
            {
                return;
            }
        }

        void ClearEmp()
        {
            var all = from c in db.t_EmpPrintID select c;
            db.t_EmpPrintID.RemoveRange(all);
            db.SaveChanges();
            binddatagrid();
        }

        private void RadButton_Click_1(object sender, RoutedEventArgs e)
        {
            ClearEmp();
        }

        private void RadButton_Click_2(object sender, RoutedEventArgs e)
        {
            ClearEmp();
            this.Close();
        }

        private void RadButton_Click_3(object sender, RoutedEventArgs e)
        {
            IDPrintPreview PrintPreview = new IDPrintPreview();
            PrintPreview.ShowDialog();
        }

        
    }
}
