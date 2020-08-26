using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    class DBConnection
    {
        public SqlConnection GetConnect()
        {
            return new SqlConnection(@"Data Source=T҉R҉U҉N҉G҉T҉T҉\SQL;Initial Catalog=HanoiTourist;Integrated Security=True");

        }
    }
}
