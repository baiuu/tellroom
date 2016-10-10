using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web1;
public partial class _Default : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();
    int i = 1;
    string x = "";
    int u = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            if (Convert.ToString(Session["name"]) == "admin")
            {
                Button3.Visible = true;
            }
                Label1.Text = "发言人：" + Session["name"];
                Label3.Text = "欢迎" + Session["name"] + "加入聊天室";
                var q = (from tell in db.tell
                         where (tell.tid > u)
                         select tell);
            foreach (Web1.tell C in q)
            {
                u = C.tid;
                x = C.name + "说：" + C.tell1 + "（" + C.time + ")<br/>" + x;
                Label2.Text = x;
                i++;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        var Tell = new Web1.tell
        {
            tell1 = TextBox1.Text,
            name = Convert.ToString(Session["name"]),
            time = DateTime.Now.ToString()
        };
        db.tell.InsertOnSubmit(Tell);
        db.SubmitChanges();
        var q = (from tell in db.tell
                 where (tell.tid>u)
                 select tell);
        foreach (Web1.tell C in q)
        {
            u = C.tid;
            x = C.name + "说：" + C.tell1 + "（" + C.time + ")<br/>" + x;
            Label2.Text = x;
            i++;
        }
        TextBox1.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["name"] = null;
        Response.Redirect(Request.Url.ToString());
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }
}