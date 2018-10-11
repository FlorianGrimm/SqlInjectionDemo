namespace SqlInjectionDemoWebApplication.Pages {
    using System.Collections.Generic;
    using System.Data;
    using System.Data.SqlClient;
    using Microsoft.AspNetCore.Mvc.RazorPages;
    using Microsoft.Extensions.Primitives;

    public class IndexModel : PageModel {
        public string filter { get; set; }
        public StringValues carousel { get; private set; }
        public string sqlcode { get; set; }

        public List<Person> persons { get; private set; }

        public void OnGet() {
            this.filter = "";
            this.carousel = "0";
            this.readPersons();
        }

        public void OnPost() {
            this.filter = this.Request.Form["filter"];
            this.carousel = this.Request.Form["carousel"];
            if (string.IsNullOrEmpty(this.carousel)) { this.carousel = "0"; }
            this.readPersons();
        }


        private void readPersons() {
            var filter = string.IsNullOrEmpty(this.filter) ? "" : this.filter;
            this.sqlcode = $"SELECT Name, Description FROM dbo.persons WHERE Description like '%{filter}%' ORDER BY Name;";
            this.persons = new List<Person>();
            try {
                using (var connection = new SqlConnection(Startup.ConnectionString)) {
                    using (var command = new SqlCommand()) {
                        command.CommandType = CommandType.Text;
                        command.Connection = connection;
                        command.CommandText = this.sqlcode;
                        connection.Open();
                        using (var reader = command.ExecuteReader()) {
                            while (reader.Read()) {
                                this.persons.Add(new Person() {
                                    Name = reader.GetString(0),
                                    Description = reader.GetString(1)
                                });
                            }
                        }
                    }
                }
            } catch (System.Exception error) {
                this.persons.Add(new Person() { Name = error.GetType().FullName, Description = error.Message });
            }
        }
    }
}
