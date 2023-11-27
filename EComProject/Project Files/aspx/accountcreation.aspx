<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accountcreation.aspx.cs" Inherits="EComProject.Project_Files.aspx.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="acc.css" />
    <title>sign up</title>
</head>
<body>
  <form id="form1" runat="server">
        <div class="container">
            <h1>Sign Up Page</h1>

            <div class="form-group">
                <label for="txtUsername">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="input-text" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorname" runat="server" 
            ErrorMessage="Name is required" 
            ControlToValidate="txtUsername" 
            ForeColor="Red" 
            EnableClientScript="false" Text="*"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input-text" type="email" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatoremail" runat="server" 
            ErrorMessage="Email is incorrect" 
            EnableClientScript="false" 
            ForeColor="Red" 
            ControlToValidate="TxtEmail" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="input-text" TextMode="Password" > </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorpwd" runat="server" 
            ErrorMessage="enter password" 
            ControlToValidate="txtPassword" 
            ForeColor="Red" 
            EnableClientScript="false"></asp:RequiredFieldValidator>
               
            </div>

            <div class="form-group">
                <label for="txtConfirmPassword">Confirm Password:</label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="input-text" TextMode="Password" ></asp:TextBox>
                <asp:CompareValidator ID="CompareValidatorpwd" runat="server"
            ErrorMessage="The password do not match" 
            ForeColor="Red" 
            EnableClientScript="false" 
            ControlToValidate="txtPassword" 
            ControlToCompare="txtConfirmPassword"></asp:CompareValidator>
            </div>
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>

            <asp:Button ID="btnSignUp" runat="server" CssClass="btn-signup" Text="Sign Up" OnClick="btnSignUp_Click" />
            <br/> <br/>
            <asp:Button ID="btnFacebook" runat="server" CssClass="social-signin facebook" Text="Log in with Facebook" OnClick="btnFacebook_Click" />
            <asp:Button ID="btnTwitter" runat="server" CssClass="social-signin twitter" Text="Log in with Twitter" OnClick="btnTwitter_Click" />
            <asp:Button ID="btnGoogle" runat="server" CssClass="social-signin google" Text="Log in with Google" OnClick="btnGoogle_Click" />

        </div>

    </form>
</body>
</html>