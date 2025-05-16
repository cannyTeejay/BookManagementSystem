/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Book;

/**
 *
 * @author selal
 */
@Stateless
public class BookFacade extends AbstractFacade<Book> implements BookFacadeLocal {

    @PersistenceContext(unitName = "BookManagementEJBModule1PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BookFacade() {
        super(Book.class);
    }
    
    @Override
    public List<Book> getBookByYear(Integer year) {
        String queryStr = "SELECT s FROM Book s WHERE s.year = ?1";
        Query query = em.createQuery(queryStr);
        query.setParameter(1, year);
        List<Book> books = query.getResultList();
        return books;
    }

    @Override
    public List<Book> getBookByAuthorName(String author) {
        String queryStr = "SELECT s FROM Book s WHERE s.author = ?1";
        Query query = em.createQuery(queryStr);
        query.setParameter(1, author);
        List<Book> books = query.getResultList();
        return books;
    }
    
}
