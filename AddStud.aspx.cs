using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net;

public partial class AddStud : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Parking"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Add"] == "Data")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Succès. Ajout des coordonnées de l'étudiant.')", true);
            Session["Add"] = "";
        }
        if (!IsPostBack)
        {
            string str = "Select top 1 sid from student order by sid desc";
            SqlDataAdapter da = new SqlDataAdapter(str, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                TextBox1.Text = "2079401";
                TextBox1.Enabled = false;
            }
            else
            {
                string s = ds.Tables[0].Rows[0][0].ToString();
                int s1 = Convert.ToInt32(s) + 1;
                TextBox1.Text = s1.ToString();
                TextBox1.Enabled = false;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.Text != "")
        {
            string pass = CreateRandomPassword(6);
            string ins = "Insert into student values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + pass + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            
            string email = TextBox4.Text;
            string sub = "Système de réservation de parking en ligne CCNB";
            string msg = "Cher " + TextBox3.Text + ",  Votre inscription au système de réservation de places de parking en ligne est réussie.  Veuillez utiliser les identifiants de connexion ci-dessous :  Matricule:  " + TextBox1.Text + "  Mot de pass : " + pass + ".";
            string url = "http://smail.azurewebsites.net/Email.aspx?Title=Alert&emailid=" + email + "&Sub=Online Parking Booking System&Msg=" + msg + " ";
            HttpWebRequest httpWebRequest = (HttpWebRequest)WebRequest.Create(url);

            ServicePointManager.Expect100Continue = true;
            ServicePointManager.SecurityProtocol = (SecurityProtocolType)3072;

            HttpWebResponse res = (HttpWebResponse)httpWebRequest.GetResponse();

            Session["Add"] = "Data";
            Response.Redirect("AddStud.aspx");
        }
        else
        {
            LabelErr.Visible = true;
        }
    }
    public static string CreateRandomPassword(int PasswordLength)
    {
        string allowedChars = "0123456789abcdefg";
        Random randNum = new Random();
        char[] chars = new char[PasswordLength];
        int allowedCharCount = allowedChars.Length;
        for (int i = 0; i < PasswordLength; i++)
        {
            chars[i] = allowedChars[(int)((allowedChars.Length) * randNum.NextDouble())];
        }
        return new string(chars);
    }
}