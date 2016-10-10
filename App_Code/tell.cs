using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using Web1;

/// <summary>
/// tell 的摘要说明
/// </summary>
[Table(Name = "tell")]
public class tell
{
    //[Column(IsDbGenerated = true, IsPrimaryKey = true)]
    //public int id { get; set; }
    [Column(Name = "name")]
    public string name { get; set; }
    [Column(Name = "tell1")]
    public string tell1{ get; set; }
    [Column(Name = "uid")]
    public string uid { get; set; }
    [Column(Name = "time")]
    public string time { get; set; }
}