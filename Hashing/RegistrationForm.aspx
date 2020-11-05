<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="Hashing.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SHA256 Registration Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center">11 - Vicky Gupta</h2>
            <h3 class="text-center">Question 13</h3>
            <hr />
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-bordered text-center" style="width:300px;margin:auto">
                        <tr>
                            <td>User Name</td>
                            <td style="color:black;"><asp:TextBox ID="username" autocomplete="off" runat="server" CssClass="text-center" autofocus placeholder="User Name"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td style="color:black;"><asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="text-center" autofocus placeholder="Password"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="submit_form" runat="server" Text="Submit" class="btn btn-block btn-success" OnClick="submit_form_Click"/>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    <hr />
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                 <table class="table table-bordered" style="width:300px;margin:auto">
                    <tr>
                        <td style="width:160px">User Name</td>
                        <td><asp:Label ID="UsernameLabel" runat="server" Text="" CssClass="text-center"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><asp:Label ID="PasswordLabel" runat="server" Text="" CssClass="text-center"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Salt</td>
                        <td><asp:Label ID="SaltLabel" runat="server" Text="" CssClass="text-center"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Hash Value</td>
                        <td><asp:Label ID="HashLabel" runat="server" Text="" CssClass="text-center"></asp:Label></td>
                    </tr>
                     <tr align="center">
                         <td colspan="2"><asp:Button ID="dbRedirect" runat="server" Text="Show Database Records" CssClass="btn btn-info btn-lg" OnClick="dbRedirect_Click" /></td>
                     </tr>
                </table>
                </div>
        </div>
    </div>
    </form>
    <hr />
</body>
</html>
