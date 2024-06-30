<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot.aspx.cs" Inherits="registrationSystem.forgot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot password</title>
       <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="dark:bg-gray-900">
    <form id="form1" runat="server">
        <main id="content" role="main" class="w-full max-w-md mx-auto p-6">
            <div class="mt-7 bg-white rounded-xl shadow-lg dark:bg-gray-800 dark:border-gray-700 border-2 border-indigo-300">
                <div class="p-4 sm:p-7">
                    <div class="text-center">
                        <h1 class="block text-2xl font-bold text-gray-800 dark:text-white">Forgot password?</h1>
                        <p class="mt-2 text-sm text-gray-600 dark:text-gray-400">
                            Remember your password?
                            <a class="text-blue-600 decoration-2 hover:underline font-medium" href="login.aspx">Login here</a>
                        </p>
                    </div>

                    <div class="mt-5">
                        <asp:Panel ID="pnlForgotPassword" runat="server">
                            <div class="grid gap-y-4">
                                <div>
                                    <label for="email" class="block text-sm font-bold ml-1 mb-2 dark:text-white">Email address</label>
                                    <div class="relative">
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="py-3 px-4 block w-full border-2 border-gray-200 rounded-md text-sm focus:border-blue-500 focus:ring-blue-500 shadow-sm" type="email" placeholder="Enter your email" required="required" />
                                    </div>
                                    <asp:Label ID="lblEmailError" runat="server" CssClass="hidden text-xs text-red-600 mt-2" Text="Please include a valid email address so we can get back to you"></asp:Label>
                                </div>
                                <asp:Button ID="btnResetPassword" runat="server" CssClass="py-3 px-4 inline-flex justify-center items-center gap-2 rounded-md border border-transparent font-semibold bg-blue-500  text-white hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 transition-all text-sm dark:focus:ring-offset-gray-800" Text="Reset password" OnClick="btnResetPassword_Click" />
                            </div>
                        </asp:Panel>
                    </div>
                </div>
            </div>
        </main>
    </form>
</body>
</html>
