<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="registrationSystem.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

        <body class="min-h-screen flex items-center justify-center w-full dark:bg-gray-950">
            <form id="LoginForm" runat="server" class="bg-white dark:bg-gray-900 shadow-md rounded-lg px-8 py-6 max-w-md">
                <h1 class="text-2xl font-bold text-center mb-4 dark:text-gray-200">Welcome Back!</h1>
                <div class="mb-4">
                    <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" CssClass="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Email Address</asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="shadow-sm rounded-md w-full px-3 py-2 border border-gray-300 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500" placeholder="your@email.com" ClientIDMode="Static" required></asp:TextBox>
                </div>
                <div class="mb-4">
                    <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword" CssClass="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Password</asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="shadow-sm rounded-md w-full px-3 py-2 border border-gray-300 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500" placeholder="Enter your password" ClientIDMode="Static" required></asp:TextBox>
                    <asp:HyperLink ID="hlForgotPassword" runat="server" NavigateUrl="forgot.aspx" CssClass="text-xs text-gray-600 hover:text-indigo-500 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">Forgot Password?</asp:HyperLink>
                </div>
                <div class="flex items-center justify-between mb-4">
                    <div class="flex items-center">
                        <asp:CheckBox ID="cbRemember" runat="server" CssClass="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500 focus:outline-none" Checked="true" />
                        <asp:Label ID="lblRemember" runat="server" AssociatedControlID="cbRemember" CssClass="ml-2 block text-sm text-gray-700 dark:text-gray-300">Remember me</asp:Label>
                    </div>
                    <asp:HyperLink ID="hlCreateAccount" runat="server" NavigateUrl="create.aspx" CssClass="text-xs text-indigo-500 hover:text-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">Create Account</asp:HyperLink>
                </div>
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="w-full flex justify-center py-2 px-4 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" OnClick="btnLogin_Click" />
            </form>
        </body>

    </form>
</body>
</html>
