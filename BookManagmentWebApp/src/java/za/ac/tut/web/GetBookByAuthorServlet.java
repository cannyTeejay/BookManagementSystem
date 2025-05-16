/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.BookFacadeLocal;
import za.ac.tut.entities.Book;

/**
 *
 * @author selal
 */
public class GetBookByAuthorServlet extends HttpServlet {
   @EJB
   private BookFacadeLocal bfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String author = request.getParameter("author");
        
        List<Book> book = bfl.getBookByAuthorName(author);
        
        request.setAttribute("book", book);
        
        RequestDispatcher rd = request.getRequestDispatcher("get_book_by_author_name_outcome.jsp");
        rd.forward(request, response);
    }

}
