﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="ELibraryManagement.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/generaluser.png" />
                                   
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Profile</h4>
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                  <center>
                                <span> Account Status-</span>
                                <asp:Label ID="Label1" class="badge badge-pill badge-info" runat="server" Text="Your status"></asp:Label>
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
                            <div class="col-md-4">
                                <label>User Id</label>
                                <div class="form-group">
                                <center>
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User Id" ReadOnly="true"></asp:TextBox>
                                </center>
                                 </div>
                                </div>
                          
                            <div class="col-md-4">
                                <label>old Password</label>
                                <div class="form-group">
                                <center>
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" Textmode="Password" ReadOnly="true"></asp:TextBox>
                                </center>
                                 </div>
                                </div>
                             <div class="col-md-4">
                                <label>New Password</label>
                                <div class="form-group">
                                <center>
                                    <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Password" Textmode="Password"></asp:TextBox>
                                </center>
                                 </div>
                                </div>
                            </div>

                               <div class="row">
                            <div class="col-md-8 mx-auto">
                                <div class="form-group">
                                <input id="button2" class="btn btn-primary btn-block btn-lg" type="button" value="Update" />
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
          
            <div class="col-md-7 ">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                     <img width="100px" src="images/books1.png"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Issued Books</h4>
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                  <center>
                                <asp:Label ID="Label2" class="badge badge-pill badge-info" runat="server" Text="Your books info"></asp:Label>
                                      </center>
                                <hr />
                                </div>
                            </div>
                       <div class="row">
                            <div class="col">
                                <asp:GridView ID="GridView1" class="table table-striped table-bordered" runat="server"></asp:GridView>
                                </div>
                           </div>
                        </div>
                    </div>
              </div>
           </div>
        </div>
</asp:Content>
