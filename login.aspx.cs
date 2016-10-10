using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using Web1;
public partial class _Default : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string a = DateTime.Now.DayOfWeek.ToString();
            string b = "";
            switch (a)
            {
                case "Monday":
                    b = "星期一";
                    break;
                case "Tuesday":
                    b = "星期二";
                    break;
                case "Wednesday":
                    b = "星期三";
                    break;
                case "Thursday":
                    b = "星期四";
                    break;

                case "Friday":
                    b = "星期五";
                    break;
                case "Saturday":
                    b = "星期六";
                    break;
                case "Sunday":
                    b = "星期日";
                    break;
            }
            Label3.Text = DateTime.Now.ToLongDateString().ToString() + b;
            Label4.Text = "您是本站第" + Application["num"] + "个访问者";
            };
        }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length == 0 || TextBox1.Text.Length == 0)
        {
            Response.Write("<script>alert('用户和密码不能为空。')</script>");
        }
        else
        {
            var a = TextBox1.Text;
            var b = (from login in db.login
                     where login.uesr == a
                     select login.password);
            foreach (string pass in b)
            {
                if (TextBox2.Text == pass)
                {
                    Session["name"] = TextBox1.Text;
                    Response.Redirect("tell.aspx");
                }
                else Response.Write("<script>alert('用户名或密码错误，请重新输入。')</script>");
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write(" <script> window.opener=null;window.close(); </script> ");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("sgin.aspx");
    }
}