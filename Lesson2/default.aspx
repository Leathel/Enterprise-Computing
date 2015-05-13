<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Lesson2._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lesson 2 Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>  
        <asp:Literal ID="ltlMessage" runat="server"></asp:Literal>
        <asp:TextBox ID="TxtMessage" runat="server"></asp:TextBox>
        <asp:Button ID="btnCopyText" runat="server" Text="Copy Text" OnClick="btnCopyText_Click" />
    </div>

        <div>
            <h4>List controls</h4>
            <div>
                Toppings: <asp:Label ID="lblToppings" runat="server"></asp:Label>
                <asp:CheckBoxList ID="cblToppings" runat="server" OnSelectedIndexChanged="cblToppings_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Value="1" Text="Cheese"></asp:ListItem>
                <asp:ListItem Value="2" Text="Pepperoni"></asp:ListItem>
                <asp:ListItem Value="3" Text="Olives"></asp:ListItem>
                <asp:ListItem Value="4" Text="Sauce"></asp:ListItem>
             </asp:CheckBoxList>
            </div>
            <div>
                Size: <asp:Label ID="lblSize" runat="server"></asp:Label> 
                <asp:DropDownList ID="ddlSize" runat="server">
                <asp:ListItem Value="1" Text="Small"></asp:ListItem>
                <asp:ListItem Value="2" Text="Medium"></asp:ListItem>
                <asp:ListItem Value="3" Text="Large"></asp:ListItem>
                <asp:ListItem Value="4" Text="Extra Large"></asp:ListItem>

            </asp:DropDownList>
            </div>
            
            
           
            <asp:Button ID="btnChoices" runat="server" Text="Show Selections" OnClick="btnChoices_Click" />

        </div>
    </form>
</body>
</html>
