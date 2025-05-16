<%-- 
    Document   : delete_book
    Created on : 12 May 2025, 10:43:58 PM
    Author     : selal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Book Page</title>
    </head>
    <body>
        <h1>Delete Books</h1>
        <form action="DeleteBookServlet.do" method="post">
            <table>
                <tr>
                    <td>Enter Book ID:</td>
                    <td><input type="text" name="id"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="UPDATE"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
