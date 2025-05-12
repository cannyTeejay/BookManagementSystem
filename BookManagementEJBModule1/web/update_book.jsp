<%-- 
    Document   : update_book
    Created on : 12 May 2025, 10:23:51 PM
    Author     : selal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
    <body>
        <h1>Update Book</h1>
        <form action="UpdateBookServlet.do" method="post">
            <table>
                <tr>
                    <td>Enter Book ID:</td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td>Book Title:</td>
                    <td><input type="text" name="title"></td>
                </tr>
                <tr>
                    <td>Book Author</td>
                    <td><input type="text" name="author"></td>
                </tr>
                <tr>
                    <td>Book Year:</td>
                    <td><input type="text" name="year"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="UPDATE"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
