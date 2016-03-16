<%-- 
    Document   : NewUser
    Created on : Feb 29, 2016, 11:10:02 PM
    Author     : Douglas
--%>

<%@page import="dao.DataAccess"%>
<%@page import="model.Donation"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 

            String description = request.getParameter("description");  
            String category = request.getParameter("category");
            String quantity = request.getParameter("quantity");
            
            int donationId = -1;
            String value = request.getParameter("donationId");
            if(value.length() != 0){
                if(value.matches("^-?\\d+$")){
                    donationId = Integer.parseInt(request.getParameter("donationId"));
                }
                
            } 
        %>
            
        
            <% 
                String message = ""; 
                
                if(message.length() != 0){
                    //response.sendRedirect("/DbSystems/nope");
                    %>
                    <a href="index">Index</a>
                    <%
                }
                else{
                    Donation n = new Donation(0, category, quantity, 1);
                    DataAccess da = new DataAccess();
                    da.addNewDonation(n);
                    response.sendRedirect("/DbSystems/index");
                }
            %>
                    

    </body>
</html>