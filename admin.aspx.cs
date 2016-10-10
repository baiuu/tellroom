using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web1;


public partial class admin : System.Web.UI.Page
{
    DataClassesDataContext db = new DataClassesDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["name"]) != "admin")
        {
            Response.Redirect("login.aspx");
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        var ods = from o in db.tell
                  select o;
        foreach (var o in ods)
        {
            db.tell.DeleteOnSubmit(o);
        }

        db.SubmitChanges();
        Response.Redirect(Request.Url.ToString());
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int x = Convert.ToInt32(DropDownList1.SelectedItem.Value);
        var b = (from f in db.login
                 where f.uid==x
                 select f);
        foreach (var dele in b)
        {
            db.login.DeleteOnSubmit(dele);
        }
        db.SubmitChanges();
        Response.Redirect(Request.Url.ToString());
    }
}