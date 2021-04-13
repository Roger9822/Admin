<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminflight.aspx.cs" Inherits="Admin.adminflight" %>

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
          <li><a href="adminairline.html">ADD AIRLINE</a></li>
          <li><a href="login.html"> LOGOUT</a></li>
        </ul>
      </div>
      
       <div class="headd">
           <h1 align="center"> ADD FLIGHTS </h1>
       </div>
      <div class="backimage">
        <form action="" method="get" runat="server">
          <div class="content">
            
              <div class="labeltext">
                <label for="textbox">FLIGHT NUMBER</label>
                <input class="textbox" type="text" name="fliid" id="" />
              </div>

              <div class="labeltext">
                <label for="textbox">SELECT AIRLINE</label>
                <select class="textbox" name="airname" id="">
                    <option value="0">SELECT AIRLINE</option>
                    <option value="1">SPICE JET</option>
                    <option value="2">INDIGO</option>
                    <option value="3">GO AIR</option>
                  </select>
              </div>

              <div class="labeltext">
                <label for="textbox">SOURCE</label>
                <input  class="textbox" type="text" name="source" id=""  />
              </div>

              <div class="labeltext">
                <label for="textbox">DESTINATION</label>
                <input class="textbox" type="text" name="Destination" id="" />
              </div>
            
            
            <div class="labeltext">
                <label for="textbox">ARRIVAL TIME</label>
                <input class="textbox" type="text" name="atime" id="" />
              </div>
           
           
            <div class="labeltext">
                <label for="textbox">DEPARTURE TIME</label>
                <input class="textbox" type="text" name="dtime" id="" />
              </div>
            

            <div class="labeltext">
                <label for="textbox">PRICE</label>
                <input class="textbox" type="text" name="PRICE" id="" />
              </div>
           

             
              <div class="labeltext">
                 <div> &nbsp;</div>
                   <asp:Button Text="ADD FLIGHT" class="btn-grad" runat="server />
            </div>
          </div> 
          </form>
         
        <div class="content2">
          <table class="styled-table">
            <thead>
              <tr>
                <th>FLIGHT Id</th>
                <th>Airline </th>
                <th>SOURCE</th>
                <th>DESTINATION</th>
                <th>DEPARTURE TIME</th>
                <th>ARRIVAL TIME</th>
                <th>PRICE</th>
                <th> REMOVE </th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>223121</td>
                <td>INDIGO</td>
                <td>PUNE </td>
                <td>GOA </td>
                <td> 8.00 </td>
                <td> 9.10 </td>
                <td> 3750 </td>
                <td><button class="delete-style">REMOVE</button></td>
              </tr>
              <tr>
                <td>101120</td>
                <td>SPICEJET</td>
                <td>DELHI </td>
                <td> GOA </td>
                <td> 20.00 </td>
                <td> 2.30 </td>
                <td> 10300 </td>
                <td><button class="delete-style">REMOVE</button></td>
              </tr>
              <tr>
                <td>101121</td>
                <td>INDIGO</td>
                <td>MUMBAI </td>
                <td>GOA </td>
                <td> 14.00 </td>
                <td> 15.20 </td>
                <td> 4300 </td>
                <td><button class="delete-style">REMOVE</button></td>
              </tr>
              <!-- and so on... -->
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </body>
</html>