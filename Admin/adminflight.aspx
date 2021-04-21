

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminflight.aspx.cs" Inherits="Admin.adminflight" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  


<html>
  <head >
    <title>Home Page</title>
       <link
      href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css"
      rel="Stylesheet"
      type="text/css"
    />
    <script
      type="text/javascript"
      src="http://code.jquery.com/jquery-1.7.2.min.js"
    ></script>
    <script
      type="text/javascript"
      src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"
    ></script>
    <script language="javascript">
        $(document).ready(function () {
            $("#date1").datepicker({
                minDate: 0,
            });
        });
    </script>
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
      integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
      crossorigin="anonymous"
    />
    <style type="text/css">
      * {
        padding: 0%;
        margin: 0%;
        font-family: "Poppins", sans-serif;
        box-sizing: border-box;
      }
      body {
        background: linear-gradient(
          45deg,
          #5eb9ff 0%,
          #5a8eff 49%,
          #6682ff 82%
        );

        animation: aurora 10s infinite;
      }

      .nav-bar {
        background: rgba(255, 255, 255, 0.2);
        box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
        backdrop-filter: blur(6.5px);
        -webkit-backdrop-filter: blur(6.5px);
        border: 1px solid rgba(255, 255, 255, 0.18);
        height: 70px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 1.5rem;
      }
      .menu {
        display: flex;
      }
      .nav-bar h1 {
        color: white;
        font-variant: inherit;
      }
      .menu li {
        margin-left: 4.5rem;
        list-style: none;
      }
      a {
        text-decoration: none;
        color: white;
      }

      .fl {
        display: flex;
        flex-direction: column;
      }

      .backimage {
        background-image: url("b.jpg");
        background-repeat: no-repeat;
        background-position: center;
        display: flex;
        flex-direction: column;
        padding: 1rem;
      }
     
      .content {
        margin-bottom: 1rem;
        padding: 2rem;
        background: rgba(90, 142, 255, 0.55);
        box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
        backdrop-filter: blur(7.5px);
        -webkit-backdrop-filter: blur(7.5px);
        border-radius: 10px;
        border: 1px solid rgba(255, 255, 255, 0.18);
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
        
      }

      input[type="text"],
      input {
        padding: 12px 20px;
        margin: 5px 0;
        border: 1px solid #ccc;
        box-sizing: border-box;
        border-radius: 12px;
      }
      .input {
        display: flex;
      }
      .buttons {
        display: flex;
      }
      .btn-grad {
        background-image: linear-gradient(
          to right,
          #0cebeb 0%,
          #20e3b2 51%,
          #0cebeb 100%
        );
      }
      .btn-grad {
        margin: 10px;
        padding: 15px 45px;
        text-align: center;
        text-transform: uppercase;
        transition: 0.5s;
        background-size: 200% auto;
        color: black;
        box-shadow: 0 0 20px rgb(55, 140, 173);
        border-radius: 10px;
        display: block;
      }

      .btn-grad:hover {
        background-position: right center; /* change the direction of the change here */
        color: darkgreen;
        text-decoration: none;
      }

      button {
        border-style: none;
      }

      .textbox {
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
        border-radius: 5px;
        border: 1px solid #848484;
        outline: 0;
        height: 3rem;
        width: 15rem;
      }
      .labeltext {
        display: flex;
        flex-direction: column;
        margin: 2rem;
      }

      .styled-table {
        border-collapse: collapse;
        font-size: 0.9em;
        font-family: sans-serif;
        min-width: 400px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
        border-radius: 10px;
        border: 1px solid rgba(255, 255, 255, 0.18);
        backdrop-filter: blur(7.5px);
        -webkit-backdrop-filter: blur(7.5px);
      }

      .styled-table thead tr {
        background: linear-gradient(
          45deg,
          #5eb9ff 0%,
          #5a8eff 49%,
          #6682ff 82%
        );
        backdrop-filter: blur(7.5px);
        -webkit-backdrop-filter: blur(7.5px);
        color: #ffffff;
        text-align: left;
      }
      
      .styled-table th,
      .styled-table td {
           text-align: center;
        padding: 12px 15px;
      }
      .styled-table tbody tr {
        border-bottom: thin solid #dddddd;
        backdrop-filter: blur(7.5px);
        -webkit-backdrop-filter: blur(7.5px);
      }

      .styled-table tbody tr:nth-of-type(even) {
        background-color: #f3f3f3;
        backdrop-filter: blur(7.5px);
        -webkit-backdrop-filter: blur(7.5px);
      }

      .styled-table tbody tr:last-of-type {
        border-bottom: thin solid #009879;
      }

      .styled-table tbody tr.active-row {
        font-weight: bold;
        color: #009879;
      }
      .content2 {
        margin-bottom: rem;
        /* background: rgba(90, 142, 255, 0.55);
        box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
        backdrop-filter: blur(7.5px);
        -webkit-backdrop-filter: blur(7.5px);
        border-radius: 10px;
        border: 1px solid rgba(255, 255, 255, 0.18); */
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
      }

      .delete-style {
        margin: 10px;
        padding: 12px 45px;
        text-align: center;
        text-transform: uppercase;
        transition: 0.5s;
        background-size: 200% auto;
        color: black;
        box-shadow: 0 0 20px rgb(55, 140, 173);
        border-radius: 10px;
        display: block;
        background-image: linear-gradient(
          to right,
          #05e8ba 0%,
          #087ee1 50%,
          #05e8ba 100%
        );
      }
      .headd h1{
        background-image: linear-gradient(
          to right,
          orange 0%,
          white 50%,
          green 100%
        );
      }
    </style>

  </head>
  <body>
    <div class="fl">
      <div class="nav-bar">
     <h1> FlyAIR ADMINISTRATION</h1>
        <ul class="menu">
            <li><a href=""> BOOKINGS</a></li>
          <li><a href="adminlogin.aspx"> LOGOUT</a></li>
        </ul>
      </div>
      
       <div class="headd">
           <h1 align="center"> ADD FLIGHTS </h1><br /><br />
           <center>
         <asp:Button Text="ADD FLIGHT" ID="Button1" runat="server" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button Text="REMOVE FLIGHT" ID="Button2" runat="server" OnClick="Button2_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button Text="UPDATE FLIGHT" ID="Button3" runat="server" OnClick="Button3_Click" /> </center>
       </div>
        
      <div class="backimage">
          <asp:MultiView ID="Multiview1" runat="server">
        <asp:View ID="View1" runat="server"> 
       
          <div class="content">
            
              <div class="labeltext">
                <label for="textbox">FLIGHT NUMBER</label>
                <asp:TextBox runat="server" class="textbox" type="text" name="flino" id="flino1" />
              </div>

              <div class="labeltext">
                <label for="textbox">SELECT AIRLINE</label>
              <asp:DropDownList ID="airline1" runat="server" name="airname" >  
            <asp:ListItem Value="0">Select AIRLINE</asp:ListItem>  
            <asp:ListItem Value="INDIGO">INDIGO </asp:ListItem>  
            <asp:ListItem Value="SPICEJET">SPICEJET</asp:ListItem>  
            <asp:ListItem Value="GO AIR">GO AIR</asp:ListItem> 
            <asp:ListItem Value="AIR INDIA">AIR INDIA</asp:ListItem> 
        </asp:DropDownList>    
              </div>

                <div class="labeltext">
                <label for="textbox">SOURCE</label>
              <asp:DropDownList ID="source1" runat="server" name="source">  
            <asp:ListItem Value="0">Select SOURCE</asp:ListItem>  
            <asp:ListItem Value="MUMBAI (BOI)">MUMBAI (BOI) </asp:ListItem>  
            <asp:ListItem Value="CHENNAI (MAA)">CHENNAI (MAA)</asp:ListItem>  
            <asp:ListItem Value="LUCKNOW (LKO)">LUCKNOW (LKO) </asp:ListItem> 
            <asp:ListItem Value="KOCHI (COK)">KOCHI (COK)</asp:ListItem> 
             <asp:ListItem Value="PATNA (PAT)">PATNA (PAT)</asp:ListItem>     
            <asp:ListItem Value="PUNE (PNQ)">PUNE (PNQ)</asp:ListItem>  
            <asp:ListItem Value="DELHI (DEL)">DELHI (DEL) </asp:ListItem> 
            <asp:ListItem Value="JAIPUR (JAI)">JAIPUR (JAI)</asp:ListItem> 
             <asp:ListItem Value="VASCO DA GAMA (GOI)">VASCO DA GAMA (GOI)</asp:ListItem> 
        </asp:DropDownList>    
              </div>
            
              
                <div class="labeltext">
                <label for="textbox">DESTINATION</label>
              <asp:DropDownList ID="destination1" runat="server" name="destination" >
                     <asp:ListItem Value="0">Select DESTINATION</asp:ListItem> 
                    <asp:ListItem Value="KOCHI (COK)">KOCHI (COK)</asp:ListItem> 
             <asp:ListItem Value="PATNA (PAT)">PATNA (PAT)</asp:ListItem>     
            <asp:ListItem Value="PUNE (PNQ)">PUNE (PNQ)</asp:ListItem>  
            <asp:ListItem Value="DELHI (DEL)">DELHI (DEL) </asp:ListItem> 
            <asp:ListItem Value="JAIPUR (JAI)">JAIPUR (JAI)</asp:ListItem> 
             <asp:ListItem Value="VASCO DA GAMA (GOI)">VASCO DA GAMA (GOI)</asp:ListItem> 
              <asp:ListItem Value="MUMBAI (BOI)">MUMBAI (BOI) </asp:ListItem>  
            <asp:ListItem Value="CHENNAI (MAA)">CHENNAI (MAA)</asp:ListItem>  
            <asp:ListItem Value="LUCKNOW (LKO)">LUCKNOW (LKO) </asp:ListItem> 
        </asp:DropDownList>    
              </div>
           
            

             <div class="labeltext">
                <label for="textbox">DATE</label>
                <asp:TextBox runat="server"  class="textbox" type="date" name="date" id="date1" />
              </div>

              <div class="labeltext">
                <label for="textbox">DEPARTURE TIME</label>
                <asp:TextBox runat="server"  class="textbox" type="time" name="dtime" id="dtime1" />
              </div>
            
            <div class="labeltext">
                <label for="textbox">ARRIVAL TIME</label>
              <asp:TextBox runat="server"  class="textbox" type="time" name="atime" id="atime1" />
              </div>
           
            <div class="labeltext">
                <label for="textbox">PRICE</label>
                 <asp:TextBox runat="server"  class="textbox" type="text" name="PRICE" id="price1" />
              </div>
           
              <div class="labeltext">
                 <div> &nbsp;</div>
                   <asp:Button Text="ADD FLIGHT" ID="Button4" class="btn-grad" runat="server" OnClick="Button4_click"  />
            </div>
          </div> 
          
           </asp:View>
               <asp:View ID="View2" runat="server"> 
       
          <div class="content">
            
              <div class="labeltext">
                <label for="textbox">FLIGHT NUMBER</label>
                 <asp:TextBox runat="server" class="textbox" type="text" name="flino" ID="TextBox1" />
              </div>  
           
              <div class="labeltext">
                 <div> &nbsp;</div>
                   <asp:Button Text="REMOVE FLIGHT" ID="Button5" class="btn-grad" runat="server" OnClick="Button5_click"  />
            </div>
          </div> 
          
           </asp:View>
                 <asp:View ID="View3" runat="server"> 
       
          <div class="content">
            
              <div class="labeltext">
                <label for="textbox">FLIGHT NUMBER</label>
                 <asp:TextBox runat="server" class="textbox" type="text" name="flino" ID="TextBox2" />
              </div>  

               <div class="labeltext">
                <label for="textbox">UPDATE DEPARTURE TIME</label>
                <asp:TextBox runat="server"  class="textbox" type="time" name="dtime" id="TextBox3" />
              </div>
            
            <div class="labeltext">
                <label for="textbox">UPDATE ARRIVAL TIME</label>
              <asp:TextBox runat="server"  class="textbox" type="time" name="atime" id="TextBox4" />
              </div>
           
            <div class="labeltext">
                <label for="textbox">UPDATE PRICE</label>
                 <asp:TextBox runat="server"  class="textbox" type="text" name="PRICE" id="TextBox5" />
              </div>
           
              <div class="labeltext">
                 <div> &nbsp;</div>
                   <asp:Button Text="UPDATE FLIGHT" ID="Button6" class="btn-grad" runat="server" OnClick="Button6_click"  />
            </div>
          </div> 
          
           </asp:View>
    </asp:MultiView>

        <div class="content2">
               

          <table class="styled-table">
            <thead>
              <tr>
                <th>FLIGHT NUMBER</th>
                <th>AIRLINE </th>
                <th>SOURCE</th>
                <th>DESTINATION</th>
                  <th>DATE</th>
                <th>DEPARTURE TIME</th>
                <th>ARRIVAL TIME</th>
                <th>PRICE</th>
              </tr>
            </thead>
            <tbody>
                
        <%=getWhileLoopData()%>
   
           </tbody>
          </table>
        </div>
      </div>
    </div>
  </body>
</html>
</asp:Content>





