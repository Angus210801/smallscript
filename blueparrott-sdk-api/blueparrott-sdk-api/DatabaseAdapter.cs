using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System.Text;

namespace blueparrott_sdk_api
{
    public sealed class DatabaseAdapter
    {
        private DatabaseAdapter() { Console.WriteLine(111); }
        private static DatabaseAdapter instance = null;

        public static DatabaseAdapter Instance
        {
            
            get
            {
                instance = new DatabaseAdapter();
                return instance;
            }

        }

        public void WriteHeadsetConfiguration(HeadsetConfiguration hsConfig, LocationInformation locationInformation)
        {
      
            try
            {
                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();

                builder.DataSource = "blueparrott-db.database.windows.net";
                builder.UserID = "bpdover";
                builder.Password = "BpAug@2023";
                builder.InitialCatalog = "blueparrott-db";
                

                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {
                    connection.Open();
                    using (SqlCommand command = connection.CreateCommand())
                    {
                        command.CommandText = "INSERT INTO [dbo].[blueparrott-sdk] VALUES(@param1,@param2,@param3,@param4,@param5,@param6,@param7,@param8,@param9,@param10,@param11,@param12,@param13,@param14,@param15,@param16,@param17)";

                        command.Parameters.AddWithValue("@param1", DateTime.Now);
                        command.Parameters.AddWithValue("@param2", hsConfig.type);
                        command.Parameters.AddWithValue("@param3", hsConfig.platform);
                        command.Parameters.AddWithValue("@param4", hsConfig.client_uuid);
                        command.Parameters.AddWithValue("@param5", hsConfig.model);
                        command.Parameters.AddWithValue("@param6", hsConfig.firmware);
                        command.Parameters.AddWithValue("@param7", hsConfig.headset_uid);
                        command.Parameters.AddWithValue("@param8", hsConfig.app_version);
                        command.Parameters.AddWithValue("@param9", hsConfig.sdk_version);
                        command.Parameters.AddWithValue("@param10", hsConfig.mode);
                        command.Parameters.AddWithValue("@param11", hsConfig.app_id);
                        command.Parameters.AddWithValue("@param12", hsConfig.proximity);
                        command.Parameters.AddWithValue("@param13", locationInformation == null ? string.Empty: locationInformation.countryCode);
                        command.Parameters.AddWithValue("@param14", locationInformation == null ? string.Empty : locationInformation.region);
                        command.Parameters.AddWithValue("@param15", locationInformation == null ? string.Empty : locationInformation.city);
                        command.Parameters.AddWithValue("@param16", locationInformation == null ? 0.0 : locationInformation.lon);
                        command.Parameters.AddWithValue("@param17", locationInformation == null ? 0.0 : locationInformation.lat);


                        command.ExecuteNonQuery();
                    }
                }
            }
            catch (SqlException e)
            {
                //PRINT RESULTS
            }
        }
    }
}
