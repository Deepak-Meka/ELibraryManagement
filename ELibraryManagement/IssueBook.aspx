<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="IssueBook.aspx.cs" Inherits="ELibraryManagement.IssueBook" %>
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
                                    <h4>Book Issuing</h4>
                                </center>  
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/books.png" />
                                </center>
                                 <hr />
                            </div>
                        </div>
   
                        <div class="row">
                            <div class="col-md-6">
                                <label>MemberID</label>
                                <div class="form-group">
                                    
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                 </div>
                                    </div>
                          
                            <div class="col-md-6">
                                <label>Book ID </label>
                                <div class="form-group">
                                    <div class="input-group">
                               
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Book ID" ></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button5" runat="server" Text="GO" />
                                 </div>
                                    </div>
                                </div>
                            </div>
                         <div class="row">
                            <div class="col-md-6">
                                <label>Member Name</label>
                                <div class="form-group">                                   
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Member Name" ReadOnly="true"></asp:TextBox>
                                 </div>
                                    </div>
                          
                            <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">
                                    
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Book Name" ReadOnly="true" ></asp:TextBox>
                                 </div>
                                    </div>
                                </div>
                          

                        <div class="row">
                            <div class="col-md-6">
                                <label>Start Date</label>
                                <div class="form-group">                                   
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
                                 </div>
                                    </div>
                          
                            <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">
                                    
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" TextMode="Date" ></asp:TextBox>
                                 </div>
                                    </div>
                                </div>
                           

                        <div class="row">
                            <div class="col-md-6 ">
                                <div class="form-group">
                                <input id="button2" class="btn-lg btn-block btn-primary " type="button" value="issue" />
                                      </div>
                           </div>
                                   
                            <div class="col-md-6 ">
                                <div class="form-group">
                                <input id="button3" class="btn btn-lg btn-block btn-warning  " type="button" value="Return" />
                                      
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
                                    <h4>Issued Book List</h4>
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
