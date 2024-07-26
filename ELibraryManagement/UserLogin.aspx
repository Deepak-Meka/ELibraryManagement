<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="ELibraryManagement.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                     <img width="150px" src="images/generaluser.png"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                <center>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID" ></asp:TextBox>
                                </center>
                                 </div>
                                <div class="form-group">
                                <center>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </center>
                                 </div>

                                  <div class="form-group">
                                <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                      </div>
                                <div class="form-group">
                                    <asp:Button class="btn btn-info btn-block btn-lg" ID="Button2" runat="server" Text="SignUp" OnClick="Button2_Click" />
                               <%-- <input id="button2" class="btn btn-info btn-block btn-lg" type="button" value="SignUp" />--%>
                                      </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <a href="homepage.aspx"><<<"Back to home"</a><br /><br />
                    </div>
                </div>
            </div>
        </div>
    </div>
   
</asp:Content>
