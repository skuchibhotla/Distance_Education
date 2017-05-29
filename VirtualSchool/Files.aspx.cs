using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace VirtualSchool
{
    public partial class Files : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Label_Welcome.Text += Session["New"].ToString() + "!!!";
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") + FileUpload1.FileName);
            }
            
            DataTable dt = new DataTable();
            dt.Columns.Add("File", typeof(string));
            dt.Columns.Add("Size", typeof(string));
            dt.Columns.Add("Type", typeof(string));
            dt.Columns.Add("Date", typeof(string));

            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Data")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name, fi.Length, GetFileTypeByExtension(fi.Extension), fi.CreationTime);

                
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private string GetFileTypeByExtension(string extension)
        {
            switch (extension.ToLower())
            {
                case ".doc":
                case ".docx":
                    return "Microsoft Word Document";
                case ".xlsx":
                case ".xls":
                    return "Microsoft Excel Document";
                case ".txt":
                    return "Text Document";
                case ".jpg":
                case ".jpeg":
                case ".png":
                    return "Image";
                case ".pdf":
                    return ".pdf Document";
                default:
                    return "Unknown";
           

            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octect-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/Data/") + e.CommandArgument);
                Response.End();

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") + FileUpload1.FileName);
            }

            DataTable dt = new DataTable();
            dt.Columns.Add("File", typeof(string));
            dt.Columns.Add("Size", typeof(string));
            dt.Columns.Add("Type", typeof(string));
            dt.Columns.Add("Date", typeof(string));

            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Data")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name, fi.Length, GetFileTypeByExtension(fi.Extension), fi.CreationTime);


            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}