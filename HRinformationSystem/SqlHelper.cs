using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HRinformationSystem
{
    public sealed class SqlHelper
    {
        public static DataTable ExecuteReader(String ConnectionString, String Query)
        {
            try
            {
                DataTable dt = new DataTable();
                using (SqlConnection cn = new SqlConnection(ConnectionString))
                {
                    cn.Open();
                    using (SqlCommand cmd = new SqlCommand(Query, cn))
                    {
                        cmd.CommandType = CommandType.Text;
                        dt.Load(cmd.ExecuteReader());
                    }
                }
                return dt;
            }
            catch
            {
                throw;
            }
        }

        public static DataTable ExecuteReader(String ConnectionString, SqlCommand cmd)
        {
            try
            {
                DataTable dt = new DataTable();
                using (SqlConnection cn = new SqlConnection(ConnectionString))
                {
                    cn.Open();
                    cmd.Connection = cn;
                    dt.Load(cmd.ExecuteReader());
                }
                return dt;
            }
            catch
            {
                throw;
            }
        }

        public static DataSet ExecuteDataSet(String ConnectionString, SqlCommand cmd)
        {
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection cn = new SqlConnection(ConnectionString))
                {
                    cn.Open();
                    cmd.Connection = cn;
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);
                }
                return ds;
            }
            catch
            {
                throw;
            }
        }

        public static object ExecuteScalar(String ConnectionString, SqlCommand cmd)
        {
            try
            {
                using (SqlConnection cn = new SqlConnection(ConnectionString))
                {
                    cn.Open();
                    cmd.Connection = cn;
                    return cmd.ExecuteScalar();
                }
            }
            catch
            {
                throw;
            }
        }

        public static int ExecuteNonQuery(String ConnectionString, SqlCommand cmd)
        {
            try
            {
                using (SqlConnection cn = new SqlConnection(ConnectionString))
                {
                    cn.Open();
                    cmd.Connection = cn;
                    int retval = cmd.ExecuteNonQuery();
                    return retval;
                }
            }
            catch
            {
                throw;
            }
        }
    }
}
