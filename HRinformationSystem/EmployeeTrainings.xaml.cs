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
using System.Data.SqlClient;
using System.Data;

namespace HRinformationSystem
{
    /// <summary>
    /// Interaction logic for EmployeeTrainings.xaml
    /// </summary>
    public partial class EmployeeTrainings : UserControl
    {
        public EmployeeTrainings()
        {
            InitializeComponent();
        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            string conStr = "server=192.168.1.42;initial catalog=OnlineTrainingEvaluationSystem;user id=sa;password=P@55w0rd";
            
            string query = "Select  A.trainingID, " +
                "A.trainingName, " +
                "CONVERT(VARCHAR(11), A.dateConducted, 106) as dateConducted, " +
                "A.company, " +
                "A.trainerName, " +
                "A.trainingType, " +
                "B.empID, " +
                "C.statusdesc, " +
                "A.isready " +
                "from Tbl_Training_Record A inner join Tbl_Attendees B on A.trainingID = B.trainingID " +
                "left join Tbl_Evaluation_Status C on B.statusid = C.statusid " +
                "where B.empID = '" + EmpID.Text +"' order by A.dateConducted desc";

            SqlCommand cmd = new SqlCommand(query);

            cmd.CommandType = CommandType.Text;          

            gridTraining.ItemsSource = SqlHelper.ExecuteReader(conStr,cmd).DefaultView;

        }
    }
}
