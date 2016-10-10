using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Linq;
using System.Data.Linq.Mapping;
/// <summary>
/// Class1 的摘要说明
/// </summary>

[Table(Name = "login")]
public class login
{
    [Column(Name = "name", DbType = "varchar(15)")]
    public string name { get; set; }
    [Column(Name = "password", DbType = "varchar(20)")]
    public string password { get; set; }
    [Column(Name = "mail", DbType = "varchar(50)")]
    public string mail { get; set; }
}