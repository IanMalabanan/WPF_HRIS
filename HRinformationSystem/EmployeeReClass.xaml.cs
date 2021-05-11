
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

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for EmployeeReClass.xaml
    /// </summary>
    public partial class EmployeeReClass : Window
    {
        HRISEntities db = new HRISEntities();
        public EmployeeReClass()
        {
            InitializeComponent();
            getEmp();
            fillcombo();
        }

        void fillcombo()
        {
            DepartmentNew.ItemsSource = db.t_Department.Where(p => p.DeptName != "--").ToList();
            EmployementStatusNew.ItemsSource = db.t_EmpStatus.ToList();
        }

        void getEmp()
        {
            var res = from a in db.t_EmpMaster
                      orderby a.LastName ascending
                      where a.IsDeleted == false
                      select new { a.EmpID, Fullname = (a.LastName + ", " + a.FirstName + " " + a.MiddleName.Substring(0, 1) + ".")};
            EmpName.ItemsSource = res.ToList();
        }


        private static byte[] empimage;
        void GEtEmpDataInfo()
        {
            var res = from a in db.t_EmpMaster
                      from b in db.t_Department
                      from c in db.t_DepartmentalSection
                      from d in db.t_Position
                      from e in db.t_EmpStatus
                      where a.Department == b.DeptCode && a.Department == c.DeptCode && a.Section == c.SectCode && a.Department == d.DeptCode && a.Position == d.Code && a.EmploymentStatus == e.Code && a.EmpID == EmpName.SelectedValue
                      orderby a.SerialID descending
                      select new { a.EmpPicture, a.EmpID, Fullname = (a.LastName + "," + a.FirstName + " " + a.MiddleName.Substring(0, 1) + "."), b.DeptName, c.SectName, d.Description, a.HireDate,EmpStatus=(e.Description) };
            try
            {
                foreach (var item in res)
                {
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
                    position.Text = item.Description;
                    DeptSect.Text = item.DeptName + '/' + item.SectName;
                    idnum.Text = item.EmpID;
                    datehired.Text = item.HireDate.Value.ToString("dd-MMM-yyyy");

                    DepartmentOld.Text = item.DeptName;
                    SectionOld.Text = item.SectName;
                    PositionOld.Text = item.Description;
                    EmployementStatusOld.Text = item.EmpStatus;

                    DepartmentNew.Text = item.DeptName;
                    SectionNew.Text = item.SectName;
                    PositionNew.Text = item.Description;
                    EmployementStatusNew.Text = item.EmpStatus;

                }
            }
            catch { }

        }

        private void EmpName_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            GEtEmpDataInfo();
            DepartmentNew.IsEnabled = true;
            SectionNew.IsEnabled = true;
            PositionNew.IsEnabled = true;
            EmployementStatusNew.IsEnabled = true;
            btnSave.IsEnabled = true;
        }

        private void DepartmentNew_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            SectionNew.ItemsSource = db.t_DepartmentalSection.Where(p => p.DeptCode == DepartmentNew.SelectedValue.ToString() && p.SectName != "--").ToList();
            PositionNew.ItemsSource = db.t_Position.Where(p => p.DeptCode == DepartmentNew.SelectedValue.ToString() && p.Description != "--").ToList();
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {

            if (DepartmentNew.SelectedValue == null || SectionNew.SelectedValue == null || PositionNew.SelectedValue == null || EmployementStatusNew.SelectedValue == null)
            {
                errormessage.Text = "Please complete classification";
            }
            else
            {
                try
                {
                t_EmpMaster master = db.t_EmpMaster.First(p => p.EmpID == EmpName.SelectedValue);
                    master.Department = DepartmentNew.SelectedValue.ToString();
                    master.Section = SectionNew.SelectedValue.ToString();
                    master.Position = PositionNew.SelectedValue.ToString();
                    master.EmploymentStatus = EmployementStatusNew.SelectedValue.ToString();
                    db.SaveChanges();
                    MessageBox.Show("Completed");
                }
                catch
                {
                    MessageBox.Show("Error");
                }
            }
        }
    }
}
