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
    /// Interaction logic for ShuttleDestination.xaml
    /// </summary>
    public partial class ShuttleDestination : Window
    {
        HRISEntities db = new HRISEntities();
        public ShuttleDestination()
        {
            InitializeComponent();
            binddatagrid();
        }

        private void binddatagrid()
        {
            gridShuttleDestination.ItemsSource = db.t_ShuttleDestination.ToList();
        }

        private void gridShuttleDestination_AddingNewDataItem(object sender, GridViewAddingNewEventArgs e)
        {
            var dest = new t_ShuttleDestination();
            dest.Destination = destin;
            e.NewObject = dest;

            db.t_ShuttleDestination.Add(dest);

        }
        int destid;
        string destin;
        private void gridShuttleDestination_RowEditEnded(object sender, GridViewRowEditEndedEventArgs e)
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
                catch { MessageBox.Show("Invalid"); }
            }
            else if (e.EditOperationType == GridViewEditOperationType.Edit)
            {
                try
                {
                    foreach (var data in gridShuttleDestination.SelectedItems)
                    {
                        t_ShuttleDestination myData = data as t_ShuttleDestination;
                        destid = myData.DestinationID;
                        destin = myData.Destination;

                        t_ShuttleDestination dest = db.t_ShuttleDestination.First(p => p.DestinationID == destid);
                        dest.Destination = destin;
                        db.SaveChanges();
                        binddatagrid();

                    }
                }
                catch { }
            }
        }

        private void gridShuttleDestination_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            try
            {

                if (e.Key == Key.Delete)
                {

                    string sMessageBoxText = "Do you want to continue?";
                    string sCaption = "Delete Destination";

                    MessageBoxButton btnMessageBox = MessageBoxButton.YesNo;
                    MessageBoxImage icnMessageBox = MessageBoxImage.Warning;

                    MessageBoxResult rsltMessageBox = MessageBox.Show(sMessageBoxText, sCaption, btnMessageBox, icnMessageBox);

                    switch (rsltMessageBox)
                    {
                        case MessageBoxResult.Yes:
                            foreach (var data in gridShuttleDestination.SelectedItems)
                            {
                                t_ShuttleDestination myData = data as t_ShuttleDestination;
                                var deletedest = db.t_ShuttleDestination.Where(dest => dest.DestinationID == myData.DestinationID).FirstOrDefault();
                                db.t_ShuttleDestination.Remove(deletedest);
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





    }
}
