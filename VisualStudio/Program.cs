
using System.Data;
using System.Data.SqlClient;

namespace Consola
{
    internal class Program
    {
        static void Main(string[] args)
        {
            String conn = "Data Source=DESKTOP-6M7GM35; Integrated Security = true; Initial Catalog=migracion_northwind; ";
            SqlConnection db = new SqlConnection(conn);
            db.Open();

            String sql =
                "SELECT " +
                "ProductID," +
                "ProductName " +
                "FROM " +
                "northwind.products";
                
            SqlDataAdapter adapter = new SqlDataAdapter(sql,conn);
            DataSet ds = new DataSet("migracion_northwind");

            adapter.Fill(ds,"migracion_northwind");

            Console.WriteLine("Lista de productos");
            Console.WriteLine("ID\tNombre");

            foreach (DataRow fila in ds.Tables["migracion_northwind"].Rows)
            {
                int productID = fila.Field<int>("ProductID");
                String productName = fila.Field<string>("ProductName");
                

                Console.WriteLine(
                    $"{productID}\t{productName}");
            }
        }
    }
}
