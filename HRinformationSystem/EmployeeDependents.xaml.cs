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
using Telerik.Windows.Controls;
using Telerik.Windows.Controls.GridView;
using System.Data.Entity;

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for EmployeeDependents.xaml
    /// </summary>
    public partial class EmployeeDependents : UserControl
    {
        HRISEntities db = new HRISEntities();

        public EmployeeDependents()
        {
            InitializeComponent();
        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            bindDependents();
        }

        private void bindDependents()
        {
            ((GridViewComboBoxColumn)this.gridDependent.Columns["Relationship"]).ItemsSource = db.t_DependentRelation.ToList();
            gridDependent.ItemsSource = db.t_EmpDependents.Where(p => p.EmpID == EmpID.Text).ToList();
        }

        string depName;
        string depBirthDate = "01-01-2020";
        string depRelationship;
        string depOccupation;
        string depMaidenName;

        private void gridDependent_AddingNewDataItem(object sender, Telerik.Windows.Controls.GridView.GridViewAddingNewEventArgs e)
        {
            try
            {
                var depen = new t_EmpDependents();
                depen.EmpID = EmpID.Text;
                depen.Name = depName;
                depen.BirthDate = Convert.ToDateTime(depBirthDate);
                depen.Relationship = depRelationship;
                depen.Occupation = depOccupation;
                depen.MaidenName = depMaidenName;
                depen.LastUpdate = DateTime.Now;
                e.NewObject = depen;
                db.t_EmpDependents.Add(depen);

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
                // try
                //{
                int ss = 0;

                foreach (var data in gridDependent.SelectedItems)
                {
                    t_EmpDependents myData = data as t_EmpDependents;
                    depName = myData.Name;
                    depBirthDate = Convert.ToString(myData.BirthDate);
                    depRelationship = myData.Relationship;
                    depOccupation = myData.Occupation;
                    depMaidenName = myData.MaidenName;
                    ss = Convert.ToInt32(myData.DependentID);
                }

                var dep = db.t_EmpDependents.Where(x => x.DependentID == ss).FirstOrDefault();

                dep.BirthDate = Convert.ToDateTime(depBirthDate);
                dep.Relationship = depRelationship;
                dep.Occupation = depOccupation;
                dep.MaidenName = depMaidenName;

                db.Entry(dep).State = EntityState.Modified;

                db.SaveChanges();

                bindDependents();
                // }
                //catch { }
            }

        }

        private void gridDependent_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            try
            {
                if (e.Key == Key.Delete)
                {
                    foreach (var data in gridDependent.SelectedItems)
                    {
                        t_EmpDependents myData = data as t_EmpDependents;
                        var delete = db.t_EmpDependents.Where(p => p.EmpID == EmpID.Text && p.Name == myData.Name).FirstOrDefault();
                        db.t_EmpDependents.Remove(delete);
                        db.SaveChanges();
                    }
                }
                else { return; }
            }
            catch { }
        }





    }
}
