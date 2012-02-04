
namespace FluentAdo.SQLite
{
    /// <summary>
    /// This is a template for creating a connection factor.  It is not 
    /// required, but it does make your life easier if you do.
    /// </summary>
    public class ConnectionFactory
    {
        private static ConnectionFactory instance;

        internal string _connectionString = "Data Source=" +
                                            System.IO.Path.GetDirectoryName(
                                                System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase) +
                                            "\\TestDB.s3db;Version=3;";

        private readonly System.Data.SQLite.SQLiteConnection _connection;

        private ConnectionFactory()
        {
            var connStr = _connectionString.Replace(@"file:\", "");
            _connection = new System.Data.SQLite.SQLiteConnection(connStr);
            _connection.Open();
        }

        public static System.Data.SQLite.SQLiteConnection GetConnection()
        {
            if (instance == null)
            {
                instance = new ConnectionFactory();
            }
            return instance._connection;
        }
    }
}