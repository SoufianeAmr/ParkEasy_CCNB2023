<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lay.aspx.cs" Inherits="Lay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
    .outline
    {
        outline:none;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('http://localhost:61374/Images/Layout.png'); width:1600px; height:1423px; position: relative;">
        <center>
            <div>
                <div style="margin-bottom:-17px">
                    <asp:ImageButton ID="ImageButton1" onmouseover="this.src='http://localhost:61374/Images/number1.PNG'" onmouseout="this.src='http://localhost:61374/Images/number1.PNG'" style="outline:none ; position: absolute; left: 380px; top: 220px;width:280px;height:280px;" runat="server" ImageUrl="~/images/number1.PNG" OnClick="ImageButton1_Click" />
                </div>
                <div>
                    <asp:ImageButton ID="ImageButton2" onmouseover="this.src='http://localhost:61374/Images/number2.PNG'" onmouseout="this.src='http://localhost:61374/Images/number2.PNG'" style="outline:none ; position: absolute; left: 1050px; top: 30px;width:220px;height:220px;" runat="server" ImageUrl="~/images/number2.PNG" OnClick="ImageButton2_Click" />
                </div>
<%--                <div>
                    <asp:ImageButton ID="ImageButton3" onmouseover="this.src='http://localhost:61374/Images/zone1.PNG'" onmouseout="this.src='http://localhost:61374/Images/zone1.PNG'" style="outline:none ; position: absolute; left: 300px; top: 1150px;width:600px;height:300px;" runat="server" ImageUrl="~/images/zone1.PNG" OnClick="ImageButton3_Click" />
                </div>--%>
                <div>
                    <asp:ImageButton ID="ImageButton4" onmouseover="this.src='http://localhost:61374/Images/number3.PNG'" onmouseout="this.src='http://localhost:61374/Images/number3.PNG'" style="outline:none ; position: absolute; left: 1000px; top: 580px;width:350px;height:350px;" runat="server" ImageUrl="~/images/number3.PNG" OnClick="ImageButton4_Click" />
                </div>
   <%--             <div>
                    <asp:ImageButton ID="ImageButton5" onmouseover="this.src='http://localhost:61374/Images/L1.2.PNG'" onmouseout="this.src='http://localhost:61374/Images/L1.1.PNG'" style="margin-left:110px; margin-top:-666px; margin-bottom:-25px; outline:none" runat="server" ImageUrl="~/images/L1.1.png" OnClick="ImageButton5_Click" />                
                </div>
                <div style="margin-bottom:-25px">
                    <asp:ImageButton ID="ImageButton6" onmouseover="this.src='http://localhost:61374/Images/L1.2.PNG'" onmouseout="this.src='http://localhost:61374/Images/L1.1.PNG'" style="margin-left:370px; margin-top:-720px; outline:none" runat="server" ImageUrl="~/images/L1.1.png" OnClick="ImageButton6_Click" />                
                </div>
                <div style="margin-bottom:-25px">
                    <asp:ImageButton ID="ImageButton7" onmouseover="this.src='http://localhost:61374/Images/L1.2.PNG'" onmouseout="this.src='http://localhost:61374/Images/L1.1.PNG'" style="margin-left:600px; margin-top:-720px; outline:none" runat="server" ImageUrl="~/images/L1.1.png" OnClick="ImageButton7_Click" />                
                </div>
                <div style="margin-bottom:-25px">
                    <asp:ImageButton ID="ImageButton8" onmouseover="this.src='http://localhost:61374/Images/L1.2.PNG'" onmouseout="this.src='http://localhost:61374/Images/L1.1.PNG'" style="margin-left:840px; margin-top:-720px; outline:none" runat="server" ImageUrl="~/images/L1.1.png" OnClick="ImageButton8_Click" />                
                </div>
                <div style="margin-bottom:-25px">
                    <asp:ImageButton ID="ImageButton9" onmouseover="this.src='http://localhost:61374/Images/L1.2.PNG'" onmouseout="this.src='http://localhost:61374/Images/L1.1.PNG'" style="margin-left:1080px; margin-top:-720px; outline:none" runat="server" ImageUrl="~/images/L1.1.png" OnClick="ImageButton9_Click" />                
                </div>
                <div style="margin-bottom:-25px">
                    <asp:ImageButton ID="ImageButton10" onmouseover="this.src='http://localhost:61374/Images/L1.2.PNG'" onmouseout="this.src='http://localhost:61374/Images/L1.1.PNG'" style="margin-left:1300px; margin-top:-720px; outline:none" runat="server" ImageUrl="~/images/L1.1.png" OnClick="ImageButton10_Click" />                
                </div>--%>
            </div>
        </center>
    </div>
    </form>
</body>
</html>