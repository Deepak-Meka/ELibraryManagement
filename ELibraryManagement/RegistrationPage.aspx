<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="ELibraryManagement.RegistrationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                     <img width="100px" src="images/generaluser.png"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>User Registration</h4>
                                </center>
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                <center>
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                                    <span id="Fullname"> </span>
                                </center>
                                 </div>
                                </div>
                          
                            <div class="col-md-6">
                                <label>Date of birth</label>
                                <div class="form-group">
                                <center>
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" Textmode="Date"></asp:TextBox>
                                </center>
                                 </div>
                                </div>
                            </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact</label>
                                <div class="form-group">
                                <center>
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Contact" TextMode="Number"></asp:TextBox>
                                </center>
                                 </div>
                                </div>
                             <div class="col-md-6">
                                <label>Email</label>
                                <div class="form-group">
                                <center>
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </center>
                                 </div>
                                </div>
                            </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>state</label>
                                <div class="form-group">
                                <center>
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                              <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                              <asp:ListItem Text="Assam" Value="Assam" />
                              <asp:ListItem Text="Bihar" Value="Bihar" />
                              <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Goa" Value="Goa" />
                              <asp:ListItem Text="Gujarat" Value="Gujarat" />
                              <asp:ListItem Text="Haryana" Value="Haryana" />
                              <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                              <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                              <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                              <asp:ListItem Text="Karnataka" Value="Karnataka" />
                              <asp:ListItem Text="Kerala" Value="Kerala" />
                              <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                              <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                              <asp:ListItem Text="Manipur" Value="Manipur" />
                              <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                              <asp:ListItem Text="Mizoram" Value="Mizoram" />
                              <asp:ListItem Text="Nagaland" Value="Nagaland" />
                              <asp:ListItem Text="Odisha" Value="Odisha" />
                              <asp:ListItem Text="Punjab" Value="Punjab" />
                              <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                              <asp:ListItem Text="Sikkim" Value="Sikkim" />
                              <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                              <asp:ListItem Text="Telangana" Value="Telangana" />
                              <asp:ListItem Text="Tripura" Value="Tripura" />
                              <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                              <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                              <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                    </asp:DropDownList>
                                </center>
                                 </div>
                                </div>
                             <div class="col-md-4">
                                <label>city</label>
                                <div class="form-group">
                                <center>
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="city"></asp:TextBox>
                                </center>
                                 </div>
                                </div>
                             <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="form-group">
                                <center>
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="Pincode" Textmode="Number"></asp:TextBox>
                                </center>
                                 </div>
                                </div>
                            </div>

                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                            
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                             
                                 </div>
                                </div>
                            </div>

                        <div class="row">
                            <div class="col">
                                <center>
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                        </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>User Id</label>
                                <div class="form-group">
                                <center>
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User Id"></asp:TextBox>
                                </center>
                                 </div>
                                </div>
                          
                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                <center>
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" Textmode="Password"></asp:TextBox>
                                </center>
                                 </div>
                                </div>
                            </div>

                                  <div class="form-group"> 
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" runat="server" Text="Sign Up" OnClick="Button1_Click" />
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
