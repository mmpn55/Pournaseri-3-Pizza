using Pournaseri_Pizza.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pournaseri_Pizza
{
    public partial class Order : System.Web.UI.Page
    {

        MyContext myContext;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                myContext = new MyContext();
                var result = myContext.Pizzas;

                foreach (var itm in result)
                {
                    OrderListBox.Items.Add(itm.PName + " - " + itm.PType + " : " + itm.PCount + " عدد " + itm.PDesc + " به سفارش " + itm.CName + " به نشانی: " + itm.CAdres + " - مبلغ کل:  " + itm.PPice + " ریال ");
                }
            }

        }
    }
}