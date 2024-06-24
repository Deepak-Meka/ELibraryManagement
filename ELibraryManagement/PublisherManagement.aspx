<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PublisherManagement.aspx.cs" Inherits="ELibraryManagement.PublisherManagement" %>
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
                                    <h4>Publisher Details</h4>
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/publisher.png" />
                                     
                                </center>
                            </div>
                        </div>
   
                        <div class="row">
                            <div class="col-md-3">
                                <label>Publisher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                              
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="GO" />
                             
                                 </div>
                                    </div>
                                </div>
                          
                            <div class="col-md-9">
                                <label>Publisher Name</label>
                                <div class="form-group">
                                <center>
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" ></asp:TextBox>
                                </center>
                                 </div>
                                </div>
                            </div>
                        <div class="row">
                            <div class="col-md-4 ">
                                <div class="form-group">
                                <input id="button2" class="btn-lg btn-block btn-success " type="button" value="Add" />
                                      </div>
                           </div>
                                   
                            <div class="col-md-4 ">
                                <div class="form-group">
                                <input id="button3" class="btn btn-lg btn-block btn-warning  " type="button" value="Update" />
                                      
                           </div>
                                   </div>
                       
                            <div class="col-md-4 ">
                                <div class="form-group">
                                <input id="button4" class="btn btn-danger btn-lg btn-block " type="button" value="Delete" />
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
                                    <h4>Publisher List</h4>
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/publisher.png" />
                                    
                                </center>
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
