<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create.aspx.cs" Inherits="registrationSystem.create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Account Page</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="h-screen overflow-hidden flex items-center justify-center" style="background: #edf2f7;">
    <form id="form1" runat="server">
  
        <div class="min-h-screen p-6 bg-gray-100 flex items-center justify-center">
            <div class="container max-w-screen-lg mx-auto">
                <div>


                    <div class="bg-white rounded shadow-lg p-4 px-4 md:p-8 mb-6">
                        <div class="grid gap-4 gap-y-2 text-sm grid-cols-1 lg:grid-cols-3">
                            <div class="text-gray-600">
                                <p class="font-medium text-lg">Personal Details</p>
                                <p>Please fill out all the fields.</p>
                            </div>

                            <div class="lg:col-span-2">
                                <div class="grid gap-4 gap-y-2 text-sm grid-cols-1 md:grid-cols-5">
                                    <div class="md:col-span-5">
                                        <label for="full_name">Full Name</label>
                                        <asp:TextBox ID="full_name" runat="server" CssClass="h-10 border mt-1 rounded px-4 w-full bg-gray-50" />
                                    </div>

                                    <div class="md:col-span-5">
                                        <label for="email">Email Address</label>
                                        <asp:TextBox ID="email" runat="server" CssClass="h-10 border mt-1 rounded px-4 w-full bg-gray-50" Placeholder="email@domain.com" />
                                    </div>

                                    <div class="md:col-span-3">
                                        <label for="address">Password</label>
                                        <asp:TextBox ID="address" TextMode="Password" runat="server" CssClass="h-10 border mt-1 rounded px-4 w-full bg-gray-50" />
                                    </div>

                                    <div class="md:col-span-2">
                                        <label for="city">City</label>
                                        <asp:TextBox ID="city" runat="server" CssClass="h-10 border mt-1 rounded px-4 w-full bg-gray-50" />
                                    </div>

                                    <div class="md:col-span-2">
                                        <label for="country">Country / region</label>
                                        <div class="h-10 bg-gray-50 flex border border-gray-200 rounded items-center mt-1">
                                            <asp:TextBox ID="country" runat="server" CssClass="px-4 appearance-none outline-none text-gray-800 w-full bg-transparent" />
                                            <button tabindex="-1" class="cursor-pointer outline-none focus:outline-none transition-all text-gray-300 hover:text-red-600">
                                                <svg class="w-4 h-4 mx-2 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                    <line x1="18" y1="6" x2="6" y2="18"></line>
                                                    <line x1="6" y1="6" x2="18" y2="18"></line>
                                                </svg>
                                            </button>
                                            <button tabindex="-1" class="cursor-pointer outline-none focus:outline-none border-l border-gray-200 transition-all text-gray-300 hover:text-blue-600">
                                                <svg class="w-4 h-4 mx-2 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                    <polyline points="18 15 12 9 6 15"></polyline></svg>
                                            </button>
                                        </div>
                                    </div>

                                    <div class="md:col-span-2">
                                        <label for="state">State / province</label>
                                        <div class="h-10 bg-gray-50 flex border border-gray-200 rounded items-center mt-1">
                                            <asp:TextBox ID="state" runat="server" CssClass="px-4 appearance-none outline-none text-gray-800 w-full bg-transparent" />
                                            <button tabindex="-1" class="cursor-pointer outline-none focus:outline-none transition-all text-gray-300 hover:text-red-600">
                                                <svg class="w-4 h-4 mx-2 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                    <line x1="18" y1="6" x2="6" y2="18"></line>
                                                    <line x1="6" y1="6" x2="18" y2="18"></line>
                                                </svg>
                                            </button>
                                            <button tabindex="-1" class="cursor-pointer outline-none focus:outline-none border-l border-gray-200 transition-all text-gray-300 hover:text-blue-600">
                                                <svg class="w-4 h-4 mx-2 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                    <polyline points="18 15 12 9 6 15"></polyline></svg>
                                            </button>
                                        </div>
                                    </div>

                                    <div class="md:col-span-1">
                                        <label for="zipcode">Zipcode</label>
                                        <asp:TextBox ID="zipcode" runat="server" CssClass="transition-all flex items-center h-10 border mt-1 rounded px-4 w-full bg-gray-50" />
                                    </div>

                                    <div class="md:col-span-5">
                                        <div class="inline-flex items-center">
                                            <asp:CheckBox ID="billing_same" runat="server" CssClass="form-checkbox" />
                                            <label for="billing_same" class="ml-2">My billing address is different than above.</label>
                                        </div>
                                    </div>



                                    <div class="md:col-span-5 text-right">
                                        <div class="inline-flex items-end">
                                            <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded" OnClick="add" />
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>

     
    </form>
</body>
</html>
