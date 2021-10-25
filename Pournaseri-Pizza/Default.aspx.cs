using Pournaseri_Pizza.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pournaseri_Pizza
{
    public partial class _Default : Page
    {
        int p1,p2,p3;
        string pd="";
        MyContext myContext;
        protected void Page_Load(object sender, EventArgs e)
        {
            myContext = new MyContext();
        }
        protected void ButtonPizza1_Click(object sender, EventArgs e)
        {
            PizzaName.Text = Label1.Text;
            HFprice.Value = "1000";
            Calc();
        }

        protected void ButtonPizza2_Click(object sender, EventArgs e)
        {
            PizzaName.Text = Label2.Text;
            HFprice.Value = "2000";
            Calc();
        }

        protected void ButtonPizza3_Click(object sender, EventArgs e)
        {
            PizzaName.Text = Label3.Text;
            HFprice.Value = "3000";
            Calc();
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {

            string pname = PizzaName.Text;
            int pcount = Convert.ToInt32(TxtCount.Text);
            string ptype = PType.SelectedItem.Text;
            string pdesc = pd;
            string cname = TxtName.Text;
            string cadres = TxtAdres.Text;
            int pprice = Convert.ToInt32(PPrice.Text);

            Pizza pizza = new Pizza()
            {
                PName = pname,
                PCount = pcount,
                PType = ptype,
                PDesc=pdesc,
                CName=cname,
                CAdres=cadres,
                PPice=pprice
            };

            myContext.Pizzas.Add(pizza);
            myContext.SaveChanges();

            Response.Redirect("order.aspx");
        }

        protected void PType_SelectedIndexChanged(object sender, EventArgs e)
        {
            Calc();
        }

        protected void TxtCount_TextChanged(object sender, EventArgs e)
        {
            Calc();
        }

        protected void PDesc_SelectedIndexChanged(object sender, EventArgs e)
        {
            p3 = 0;
            pd = "";
            if (PDesc.Items[0].Selected)
            {
                p3 = p3 + 500;
                pd = " + " +  PDesc.SelectedItem.Text;
            }
            if (PDesc.Items[1].Selected)
            {
                p3 = p3 + 600;
                pd = pd + " + " + PDesc.SelectedItem.Text;
            }
            if (PDesc.Items[2].Selected)
            {
                p3 = p3 + 700;
                pd = pd + " + " + PDesc.SelectedItem.Text;
            }
            Calc();
        }

        public void Calc()
        {
            try 
            {
                int pall = 0;
                int pc = Convert.ToInt32(TxtCount.Text);
                int pp = Convert.ToInt32(HFprice.Value);
                int pt = Convert.ToInt32(PType.SelectedValue);
                pall = (pp * pc * pt) + p3;
                PPrice.Text = Convert.ToString(pall);
            }
            catch
            {

            }
        }

    }
}