/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Book;

/**
 *
 * @author selal
 */
@Local
public interface BookFacadeLocal {

    void create(Book book);

    void edit(Book book);

    void remove(Book book);

    Book find(Object id);

    List<Book> findAll();

    List<Book> findRange(int[] range);

    int count();
    
    //Customized Methods-JPQL
    List<Book> getBookByYear(Integer year); 
    
    List<Book> getBookByAuthorName(String author);
}
