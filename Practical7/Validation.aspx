<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="Practical7.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td>User Name:</td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName" ErrorMessage="User name is required." ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password (must be exactly 6 characters):</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password should be 6 characters." ForeColor="Red" ValidationExpression="\S{6}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Date of Birth (dd/mm/yyyy):</td>
                    <td>
                        <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of birth is required." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of birth format should be DD/MM/YYYY." ForeColor="Red" ValidationExpression="(0[1-9]|1[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/(19|20)\d{2}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Credit Card Type:</td>
                    <td>
                        <asp:RadioButtonList ID="rblCardType" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Visa</asp:ListItem>
                            <asp:ListItem>Master</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Credit Card Number:</td>
                    <td>
                        <asp:TextBox ID="txtCardNumber" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCreditCardNumber" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Credit card number is required." ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revCreditCard" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Invalid credit card number." ForeColor="Red" ValidationExpression="(^4\d{15})|(^5\d{15})">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
&nbsp;<asp:Button ID="btnClear" runat="server" Text="Clear" CausesValidation="False" OnClick="btnClear_Click" />
                        <br />
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="The following errors have been detected:" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
