using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;

namespace VirtualSchool
{
    public partial class Assignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (DropDownList2.SelectedItem.ToString() == "I")
                {
                    if (DropDownList1.SelectedItem.ToString() == "CSE A")
                    {
                        if(DropDownList3.SelectedItem.ToString() == "Computer Aided Drawing")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/I/CSE A/CAD") + FileUpload1.FileName);
                        }
                        if(DropDownList3.SelectedItem.ToString() == "Computer Programming")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/I/CSE A/CP") + FileUpload1.FileName);
                        }
                        if(DropDownList3.SelectedItem.ToString() == "Data Structures through C")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/I/CSE A/DS") + FileUpload1.FileName);
                        }
                    }
                    if (DropDownList1.SelectedItem.ToString() == "CSE B")
                    {
                        if(DropDownList3.SelectedItem.ToString() == "Computer Aided Drawing")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/I/CSE B/CAD") + FileUpload1.FileName);
                        }
                        if(DropDownList3.SelectedItem.ToString() == "Computer Programming")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/I/CSE B/CP") + FileUpload1.FileName);
                        }
                        if(DropDownList3.SelectedItem.ToString() == "Data Structures through C")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/I/CSE B/DS") + FileUpload1.FileName);
                        }
                    }
                }

                if (DropDownList2.SelectedItem.ToString() == "II")
                {
                    if (DropDownList1.SelectedItem.ToString() == "CSE A")
                    {
                        if(DropDownList3.SelectedItem.ToString() == "OOPS")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/II/CSE A/OOPS") + FileUpload1.FileName);
                        }
                        if(DropDownList3.SelectedItem.ToString() == "Web Technologies")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/II/CSE A/WT") + FileUpload1.FileName);
                        }
                    }
                    if (DropDownList1.SelectedItem.ToString() == "CSE B")
                    {
                        if(DropDownList3.SelectedItem.ToString() == "OOPS")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/II/CSE B/OOPS") + FileUpload1.FileName);
                        }
                        if(DropDownList3.SelectedItem.ToString() == "Web Technologies")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/II/CSE B/WT") + FileUpload1.FileName);
                        }
                    }
                }
                
                if (DropDownList2.SelectedItem.ToString() == "III")
                {
                    if (DropDownList1.SelectedItem.ToString() == "CSE A")
                    {
                       if(DropDownList3.SelectedItem.ToString() == "UNIX Programming")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/III/CSE A/UNIX") + FileUpload1.FileName);
                        }
                        if(DropDownList3.SelectedItem.ToString() == "C# and .NET Programming")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/III/CSE A/C#") + FileUpload1.FileName);
                        } 
                    }
                    if (DropDownList1.SelectedItem.ToString() == "CSE B")
                    {
                       if(DropDownList3.SelectedItem.ToString() == "UNIX Programming")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/III/CSE B/UNIX") + FileUpload1.FileName);
                        }
                        if(DropDownList3.SelectedItem.ToString() == "C# and .NET Programming")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/III/CSE B/C#") + FileUpload1.FileName);
                        }  
                    }
                }
                
                if (DropDownList2.SelectedItem.ToString() == "IV")
                {
                    if (DropDownList1.SelectedItem.ToString() == "CSE A")
                    {
                        if(DropDownList3.SelectedItem.ToString() == "Software Testing Methodologies")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/IV/CSE A/STM") + FileUpload1.FileName);
                        }
                        if(DropDownList3.SelectedItem.ToString() == "Data Mining and Data Warehousing")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/IV/CSE A/DMDW") + FileUpload1.FileName);
                        } 
                    }
                    if (DropDownList1.SelectedItem.ToString() == "CSE B")
                    {
                        if(DropDownList3.SelectedItem.ToString() == "Software Testing Methodologies")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/IV/CSE B/STM") + FileUpload1.FileName);
                        }
                        if(DropDownList3.SelectedItem.ToString() == "Data Mining and Data Warehousing")
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Assignments/IV/CSE B/DMDW") + FileUpload1.FileName);
                        }
                    }
                }

            }

            DataTable dt = new DataTable();
            dt.Columns.Add("File", typeof(string));
           

            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/I/CSE A/CAD")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            }
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/I/CSE A/CP")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            }
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/I/CSE A/DS")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            }
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/I/CSE B/CAD")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            } 
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/I/CSE B/CP")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            } 
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/I/CSE B/DS")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            }

            //II Year
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/II/CSE A/OOPS")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            }
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/II/CSE A/WT")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            }

            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/II/CSE B/OOPS")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            }
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/II/CSE B/WT")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            }

            //III Year
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/III/CSE A/C#")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            }
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/III/CSE A/UNIX")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            }

            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/III/CSE B/C#")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            }
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/III/CSE B/UNIX")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            }

            //IV Year
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/IV/CSE A/DMDW")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            } 
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/IV/CSE A/STM")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            } 
            
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/IV/CSE A/DMDW")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            } 
            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Assignments/IV/CSE A/STM")))
            {
                FileInfo fi = new FileInfo(strFile);

                dt.Rows.Add(fi.Name);


            }

           

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        
    }
}
       
     
