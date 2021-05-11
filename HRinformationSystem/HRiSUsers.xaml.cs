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
using System.Windows.Shapes;
using Telerik.Windows.Controls;

using Telerik.Windows.Controls.GridView;

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for HRiSUsers.xaml
    /// </summary>
    public partial class HRiSUsers : Window
    {
        HRISEntities db = new HRISEntities();
        string uid, uname, upass, utype;
        public HRiSUsers()
        {
            InitializeComponent();
        }

        private void binddatagrid()
        {
            ((GridViewComboBoxColumn)this.gridUsers.Columns["usertype"]).ItemsSource = db.t_UserType.ToList();
            gridUsers.ItemsSource = db.t_Users.ToList();
        }

        private void gridUsers_AddingNewDataItem(object sender, GridViewAddingNewEventArgs e)
        {
            var user = new t_Users();
            user.userid = uid;
            user.username = uname;
            user.userpass = upass;
            user.usertype = utype;
            e.NewObject = user;

            db.t_Users.Add(user);
        }

        private void gridUsers_RowEditEnded(object sender, GridViewRowEditEndedEventArgs e)
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
                    binddatagrid();
                }
                catch { MessageBox.Show("already exist"); }
            }
            else if (e.EditOperationType == GridViewEditOperationType.Edit)
            {
                try
                {
                    foreach (var data in gridUsers.SelectedItems)
                    {
                        t_Users myData = data as t_Users;
                        uid = myData.userid;
                        uname = myData.username;
                        upass = myData.userpass;
                        utype = myData.usertype;

                        t_Users us = db.t_Users.First(p => p.userid == uid);
                        us.username = uname;
                        us.userpass = upass;
                        us.usertype = utype;
                        db.SaveChanges();
                        binddatagrid();
                    }
                }
                catch { }
            }
        }

        private void gridUsers_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            try
            {

                if (e.Key == Key.Delete)
                {

                    string sMessageBoxText = "Do you want to continue?";
                    string sCaption = "Delete User";

                    MessageBoxButton btnMessageBox = MessageBoxButton.YesNo;
                    MessageBoxImage icnMessageBox = MessageBoxImage.Warning;

                    MessageBoxResult rsltMessageBox = MessageBox.Show(sMessageBoxText, sCaption, btnMessageBox, icnMessageBox);

                    switch (rsltMessageBox)
                    {
                        case MessageBoxResult.Yes:
                            foreach (var data in gridUsers.SelectedItems)
                            {
                                t_Users myData = data as t_Users;
                                var deleteuser = db.t_Users.Where(u => u.userid == myData.userid).FirstOrDefault();
                                db.t_Users.Remove(deleteuser);
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
            catch { }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            binddatagrid();
        }


    }
}
