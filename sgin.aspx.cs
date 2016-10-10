using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web1;
public partial class sgin : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length < 1 || TextBox2.Text.Length < 1 || TextBox3.Text.Length < 1 || TextBox4.Text.Length < 1)
            Response.Write("<script>alert('有资料未填写，请重新输入。')</script>");
        else
        {
            var a = TextBox1.Text;
            var b = (from login in db.login
                     where login.uesr == a
                     select login).Count();
            if (b>0)
                Response.Write("<script>alert('用户名已存在，请重新输入。')</script>");
            else {
                if (TextBox2.Text == TextBox3.Text)
                {
                    var Login = new Web1.login
                    {
                        uesr = TextBox1.Text,
                        password = TextBox2.Text,
                        mail = TextBox4.Text
                    };
                    db.login.InsertOnSubmit(Login);
                    db.SubmitChanges();
                    Response.Write("<script>alert('注册成功。');window.location = 'login.aspx';</script>");

                }
                else Response.Write("<script>alert('输入的两边密码不一样，请重新输入。')</script>");
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}