<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payfee.aspx.cs" Inherits="PayRight.payfee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
                Student Details: <br /><br />
                Student Name:
                <asp:TextBox ID="txtname" runat="server" Height="36px" Width="246px"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Name cannot be empty" ControlToValidate="txtname" ForeColor="Red" Display="Dynamic">
                </asp:RequiredFieldValidator>

               

                <br /><br />
                Enrollment Number:
                <asp:TextBox ID="txtenroll" runat="server" Height="36px" Width="242px"></asp:TextBox>  
                
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Enrollment number cannot be empty" ControlToValidate="txtenroll" ForeColor="Red" >
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic"
                ErrorMessage="Enrollment number must be of 14 digit only." ControlToValidate="txtenroll"
                ForeColor="Red" ValidationExpression="\d{14}" >
                </asp:RegularExpressionValidator>
                <br /><br />

                Amount:

                <asp:TextBox ID="txtamount" runat="server" Height="32px" Width="237px"></asp:TextBox>                

                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic"
                    ErrorMessage="Amount is required" ControlToValidate="txtamount" ForeColor="Red">
                </asp:RequiredFieldValidator>

                <asp:RangeValidator ID="RangeValidator1" runat="server" Display="Dynamic"
                    MaximumValue="100000" MinimumValue="1" Type="Integer"
                    ErrorMessage="Amount must be between 1 and 100000" ControlToValidate="txtamount" ForeColor="Red">
                </asp:RangeValidator>

                <br /> <br /> <br /> <br />

                Card Details: <br /><br />

                Card Number:
                <asp:TextBox ID="txtcardno" TextMode="Number" runat="server" Height="34px" Width="441px"></asp:TextBox>                

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic"
                    ErrorMessage="Card Number is required" ControlToValidate="txtcardno" ForeColor="Red">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    Display="Dynamic" ErrorMessage="Card number must be of 16 digit only." 
                    ControlToValidate="txtcardno" ForeColor="Red" ValidationExpression="\d{16}">
                </asp:RegularExpressionValidator>

                <br /><br />

                Expiry Date:
                <asp:TextBox ID="txtexpiry" runat="server" Height="28px" Width="181px"></asp:TextBox>                

                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic"
                    ErrorMessage="Expiry Date is required" ControlToValidate="txtexpiry" ForeColor="Red">
                </asp:RequiredFieldValidator>

                <asp:CustomValidator ID="cvvExpiryValidator" runat="server" Display="Dynamic"
                    ErrorMessage="Card has expired" ControlToValidate="txtexpiry" ForeColor="Red" 
                    OnServerValidate="cvvExpiryValidator_ServerValidate">
                </asp:CustomValidator>

                <br />
                <br />
                <br />
                
                CVV:
                <asp:TextBox ID="txtcvv" TextMode="Number" runat="server" Height="27px" Width="181px"></asp:TextBox>                 

                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  Display="Dynamic"
                    ErrorMessage="CVV is required" ControlToValidate="txtcvv" ForeColor="Red">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="cvvValidator" runat="server" 
                    ErrorMessage="CVV must be of 3 digit only."  ControlToValidate="txtcvv" 
                    ForeColor="Red" ValidationExpression="\d{3}">
                </asp:RegularExpressionValidator>

                <br /> <br />

                <asp:Button ID="btnpay" runat="server" Text="Pay Now" OnClick="btnpay_Click" /> <br /><br />

            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                
            
        </div>
    </form>
</body>
</html>
