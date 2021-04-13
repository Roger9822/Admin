<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Admin.adminlogin" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Home Page</title>
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
       background-image: url("3.jpg");
       background-repeat: no-repeat;
       background-size: cover;
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
        color: black;
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
      
        background-repeat: no-repeat;
        background-position: center;
        display: flex;
        flex-direction: column;
        padding: 4rem;
      }
     
      .content {
        margin-bottom: 1rem;
        padding: 2rem;
        background: rgba( 255, 255, 255, 0.25 );
box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
backdrop-filter: blur( 4px );
-webkit-backdrop-filter: blur( 4px );
border-radius: 10px;
border: 1px solid rgba( 255, 255, 255, 0.18 );
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
      
    </style>
  </head>
  <body>
    <div class="fl">
      <div class="nav-bar">
     <h1> FlyAIR ADMINISTRATION</h1>
      </div>
      <br>
      <br>
       <div class="headd">
           <h1 align="center"> ADMINISTRATION LOGIN</h1>
       </div>
      <div class="backimage">
        <form action="" method="post" runat="server">
          
          <div class="content">
            
           
            <div class="labeltext">
                <label for="textbox">ADMIN USERNAME</label>
                <input class="textbox" type="text" name="adminname" id="adminname" />
              </div>
            

            <div class="labeltext">
                <label for="textbox">PASSWORD</label>
                <input class="textbox" type="text" name="password" id="password" />
              </div>
           

             
              <div class="labeltext">
                <div> &nbsp;</div>
                  <asp:Button Text="LOGIN" class="btn-grad" runat="server" OnClick="Button1_click"  />
            </div>
          </div> 
          </form>
    
      </div>
    </div>
  </body>
</html>