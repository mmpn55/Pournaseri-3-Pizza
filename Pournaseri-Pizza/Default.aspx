<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pournaseri_Pizza._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div dir="rtl">
        <br />
        <h1>ثبت سفارش</h1>
        <br />

        <table border="1" width="50%">
            <tr>
                <td style="text-align: center">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Content/pizza1.png" /><br />
                    <asp:Label ID="Label1" runat="server" Text="پیتزای مخصوص"></asp:Label><br />
                    <asp:Label ID="Label8" runat="server" Text="1000 ریال"></asp:Label><br />
                    <asp:Button ID="ButtonPizza1" runat="server" Text="انتخاب" OnClick="ButtonPizza1_Click" /><br />
                </td>
                <td style="text-align: center">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Content/pizza2.png" /><br />
                    <asp:Label ID="Label2" runat="server" Text="پیتزای سبزیجات"></asp:Label><br />
                    <asp:Label ID="Label9" runat="server" Text="2000 ریال"></asp:Label><br />
                    <asp:Button ID="ButtonPizza2" runat="server" Text="انتخاب" OnClick="ButtonPizza2_Click" /><br />
                </td>
                <td style="text-align: center">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Content/pizza3.png" /><br />
                    <asp:Label ID="Label3" runat="server" Text="پیتزای ژامبون"></asp:Label><br />
                    <asp:Label ID="Label10" runat="server" Text="3000 ریال"></asp:Label><br />
                    <asp:Button ID="ButtonPizza3" runat="server" Text="انتخاب" OnClick="ButtonPizza3_Click" /><br />
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="Label4" runat="server" Text="پیتزای انتخاب شده:"></asp:Label>
        <asp:TextBox ID="PizzaName" runat="server" BorderStyle="None" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PizzaName" ErrorMessage="لطفا یکی از پیتزاهای فوق را انتخاب نمایید" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label7" runat="server" Text="تعداد:"></asp:Label>
        <asp:TextBox ID="TxtCount" runat="server" placeholder="تعداد پیتزا را وارد کنید" OnTextChanged="TxtCount_TextChanged" AutoPostBack="True" ValidationGroup="1">1</asp:TextBox>
        <asp:DropDownList ID="PType" runat="server" OnSelectedIndexChanged="PType_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Value="1">یک نفره</asp:ListItem>
            <asp:ListItem Value="2">دو نفره</asp:ListItem>
            <asp:ListItem Value="3">خانواده</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtCount" ErrorMessage="لطفا تعداد پیتزا را وارد نمایید" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtCount" ErrorMessage="لطفا تعداد پیتزا را به عدد وارد کنید" ForeColor="#FF3300" ValidationExpression="^[1-9]\d*$" ValidationGroup="1"></asp:RegularExpressionValidator>
        <asp:CheckBoxList ID="PDesc" runat="server" OnSelectedIndexChanged="PDesc_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Value="1">پنیر اضافی</asp:ListItem>
            <asp:ListItem Value="2">سس فرانسوی</asp:ListItem>
            <asp:ListItem Value="3">چیپس</asp:ListItem>
        </asp:CheckBoxList><br />
        <asp:Label ID="Label5" runat="server" Text="نام و نام خانوادگی:"></asp:Label>
        <asp:TextBox ID="TxtName" runat="server" placeholder="نام خود را وارد کنید"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtName" ErrorMessage="لطفا نام خود را وارد نمایید" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label6" runat="server" Text="نشانی مورد نظر:"></asp:Label>
        <asp:TextBox ID="TxtAdres" runat="server" placeholder="آدرس خود را وارد کنید" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtAdres" ErrorMessage="لطفا نشانی خود را وارد نمایید" ForeColor="#FF3300" ValidationGroup="1"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:Label ID="Label12" runat="server" Text="مبلغ قابل پرداخت: "></asp:Label>
        <asp:Label ID="PPrice" runat="server" Text="0"></asp:Label>
        <asp:Label ID="Label11" runat="server" Text="ریال"></asp:Label>
        <asp:Button ID="ButtonSubmit" runat="server" Text="ثبت سفارش" OnClick="ButtonSubmit_Click" ValidationGroup="1" />
        <asp:HiddenField ID="HFprice" runat="server" Value="0" />
        
    </div>

</asp:Content>
