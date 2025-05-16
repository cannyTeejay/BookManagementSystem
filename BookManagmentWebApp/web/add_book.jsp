<%-- 
    Document   : add_book
    Created on : 12 May 2025, 9:56:15 PM
    Author     : selal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Book Page</title>
    </head>
    <body>
        <h1>Add Book</h1>
        <p>Add the Info below</p>
        <form action="AddBookServlet.do"method="post">
            <table>
                <tr>
                    <td>Book ID:</td>
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
                    <td><input type="submit" value="ADD BOOK"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
