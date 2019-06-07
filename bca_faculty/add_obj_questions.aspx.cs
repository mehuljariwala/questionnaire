using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class bca_faculty_Default3 : System.Web.UI.Page
{
    Class1 x = new Class1();
    DataTable dat = new DataTable();
    string chk = ".jpg , .jpeg";
    string qry, str, correct_option, img_name = "";
    int img_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            fillObjQuestion
                ();
            x.op();
            qry = "select * from subject_master where subject_id in (select subject_id from faculty_subjects_master where faculty_id=" + Convert.ToInt32(Session["faculty_id"].ToString()) + ")";
            dat = x.sea(qry);
            if (dat.Rows.Count > 0)
            {
                ddl_insert_subject.DataSource = dat;
                ddl_insert_subject.DataTextField = "subject";
                ddl_insert_subject.DataValueField = "subject_id";
                ddl_insert_subject.DataBind();
            }
            x.co();

            x.op();
            if (ddl_insert_subject.SelectedValue != "")
            {
                qry = "select * from unit_master where subject_id=" + ddl_insert_subject.SelectedValue;
                dat = x.sea(qry);
                if (dat.Rows.Count > 0)
                {
                    ddl_insert_unit.DataSource = dat;
                    ddl_insert_unit.DataTextField = "unit_name";
                    ddl_insert_unit.DataValueField = "unit_id";
                    ddl_insert_unit.DataBind();
                }
            }
            x.co();
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if (upload_graphics.HasFile)
        {
            if (upload_graphics.PostedFile.ContentType == "image/jpg" || upload_graphics.PostedFile.ContentType == "image/jpeg")
            {
                if (upload_graphics.PostedFile.ContentLength < 102400)
                {
                    x.op();
                    qry = "select max(ques_id) from objective_master";
                    img_id=Convert.ToInt32(x.sca(qry)) + 1;
                    x.co();
                    img_name = img_id + System.IO.Path.GetExtension(upload_graphics.PostedFile.FileName);
                    upload_graphics.SaveAs(Server.MapPath("~/ques_image/") + img_name);
                }
            }
        }
        x.op();
        qry = "insert into objective_master values(" + ddl_insert_subject.SelectedValue + "," + ddl_insert_unit.SelectedValue + ",'" + txt_ques.Text + "','" + img_name + "','" + txt_option_1.Text + "','" + txt_option_2.Text + "','" + txt_option_3.Text + "','" + txt_option_4.Text + "','" + ddl_correct_option.SelectedValue + "')";
        x.insert(qry);
        x.co();
        Response.Redirect(HttpContext.Current.Request.Url.AbsoluteUri);
   
    }
    protected void ddl_insert_subject_SelectedIndexChanged(object sender, EventArgs e)
    {
        x.op();
        if(ddl_insert_subject.SelectedValue != "" ) {
        qry = "select * from unit_master where subject_id=" +  ddl_insert_subject.SelectedValue ;
        dat = x.sea(qry);
        if (dat.Rows.Count > 0)
        {
                ddl_insert_unit.DataSource = dat;
                ddl_insert_unit.DataTextField = "unit_name";
                ddl_insert_unit.DataValueField = "unit_id";
                ddl_insert_unit.DataBind();
            }
        }
        x.co();
    }
    protected void chk_question_CheckedChanged(object sender, EventArgs e)
    {
        if (chk_question.Checked)
        {
            upload_graphics.Visible = true;
        }
        if (!chk_question.Checked)
        {
            upload_graphics.Visible = false;
        }
    }
    public void fillObjQuestion()
    {

        x.op();
        qry = "select fm.faculty_username, sub.sem, sub.subject, obj.ques,obj.graphics,obj.option1,obj.option2,obj.option3,obj.option4,obj.correct from objective_master as obj,faculty_subjects_master as fsubm, faculty_master as fm , subject_master as sub where sub.subject_id=fsubm.subject_id and obj.subject_id=fsubm.subject_id and fm.faculty_id=fsubm.faculty_id and fm.faculty_username='" + Session["faculty_username"].ToString() + "'";
        dat = x.sea(qry);
        if (dat.Rows.Count > 0)
        {
            Repeater1.DataSource = dat;
            Repeater1.DataBind();
        }

        x.co();
    }
}