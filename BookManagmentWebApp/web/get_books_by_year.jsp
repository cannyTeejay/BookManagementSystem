<%-- 
    Document   : get_books_by_year
    Created on : 16 May 2025, 7:25:05 PM
    Author     : selal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get All Books by Author name Page</title>
    </head>
    <body>
        <h1>View All Books by Author Name</h1>
        <form action="GetBookByAuthorServlet.do" method="post">
            <table>
                <tr>
                    <td>Author Name:</td>
                    <td><input type="text" name="author"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="VIEW BY AUTHOR"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
