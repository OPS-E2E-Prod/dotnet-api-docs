<!-- <Snippet1> -->

<%@ page language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

  Sub ItemDetailsView_ItemCreated(ByVal sender As Object, ByVal e As EventArgs)
  
    ' Retrieve the header row. 
    Dim headerRow As DetailsViewRow = ItemDetailsView.HeaderRow
    
    ' Retrieve the Image control from the header row.
    Dim logoImage As Image = CType(headerRow.FindControl("LogoImage"), Image)

    ' Display a custom image to indicate whether the 
    ' DetailsView control is in edit or read-only mode.
    Select Case ItemDetailsView.CurrentMode

      Case DetailsViewMode.Edit
        logoImage.ImageUrl = "~/Images/Edit.jpg"

      Case DetailsViewMode.ReadOnly
        logoImage.ImageUrl = "~/Images/ReadOnly.jpg"

      Case Else
        logoImage.ImageUrl = "~/Images/Default.jpg"

    End Select

  End Sub
  
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
  <head runat="server">
    <title>DetailsViewRow Example</title>
</head>
<body>
    <form id="form1" runat="server">
    
      <h3>DetailsViewRow Example</h3>
  
      <asp:detailsview id="ItemDetailsView"
        datasourceid="DetailsViewSource"
        allowpaging="true"
        autogeneraterows="false"
        autogenerateeditbutton="true"
        datakeynames="CustomerID"  
        onitemcreated="ItemDetailsView_ItemCreated"  
        runat="server">
        <fields>
          <asp:boundfield datafield="CustomerID"
            headertext="Customer ID"/>
          <asp:boundfield datafield="CompanyName"
            headertext="Company Name"/>
          <asp:boundfield datafield="Address"
            headertext="Address"/>
          <asp:boundfield datafield="City"
            headertext="City"/>
          <asp:boundfield datafield="PostalCode"
            headertext="ZIP Code"/>
          <asp:boundfield datafield="Country"
            headertext="Country"/>
        </fields>
        
        <headertemplate>
          <asp:image id="LogoImage"
            imageurl="~/Images/Default.jpg" 
            AlternateText="Our logo" 
            runat="server"/>
        </headertemplate>
      </asp:detailsview>
      
      <!-- This example uses Microsoft SQL Server and connects  -->
      <!-- to the Northwind sample database. Use an ASP.NET     -->
      <!-- expression to retrieve the connection string value   -->
      <!-- from the web.config file.                            -->
      <asp:sqldatasource id="DetailsViewSource"
        selectcommand="Select [CustomerID], [CompanyName], [Address], 
          [City], [PostalCode], [Country] From [Customers]"
        updatecommand="Update [Customers] Set 
          [CompanyName]=@CompanyName, [Address]=@Address, 
          [City]=@City, [PostalCode]=@PostalCode, 
          [Country]=@Country 
          Where [CustomerID]=@CustomerID"
        connectionstring=
          "<%$ ConnectionStrings:NorthWindConnectionString%>" 
        runat="server"/>  
  
    </form>
  </body>
</html>
<!-- </Snippet1> -->