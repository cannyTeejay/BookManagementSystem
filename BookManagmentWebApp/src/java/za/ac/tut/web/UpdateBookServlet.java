/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
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
public class UpdateBookServlet extends HttpServlet {
    @EJB
    private BookFacadeLocal bfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        Integer year = Integer.parseInt(request.getParameter("year"));
        
        Book b = createBook(id, title, author, year);
        bfl.edit(b);
        request.setAttribute("book", b);
        
        RequestDispatcher rd = request.getRequestDispatcher("update_book_outcome.jsp");
        rd.forward(request, response);
    }
    
    private Book createBook(Long id,String title,String author,Integer year){
        Book b = bfl.find(id);
        b.setId(id);
        b.setTitle(title);
        b.setAuthor(author);
        b.setYear(year);
        return b;
    }

}
