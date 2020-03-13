<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:LinqDataSource OnDeleting="LinqDataSource_Deleting" EnableDelete="true" EnableUpdate="true" EnableInsert="true" ID="LinqDataSource1" ContextTypeName="ExampleDataContext" TableName="Products" runat="server">
        </asp:LinqDataSource>
        <asp:DetailsView AutoGenerateDeleteButton="true" AutoGenerateRows="false" AllowPaging="true" AutoGenerateEditButton="true" AutoGenerateInsertButton="true" DataKeyNames="ProductID" DataSourceID="LinqDataSource1" ID="DetailsView1" runat="server" Height="50px" Width="125px">
        </asp:DetailsView>
        Really delete? <asp:CheckBox ID="confirmCheckBox" runat="server" />
    </div>
    	
    </form>
</body>
</html>
