// Set the package to com.manning.readinglist.
package com.manning.readinglist;

// Import List
import java.util.List;

// Import JpaRepository from spring's data.jpa.repository package.
import org.springframework.data.jpa.repository.JpaRepository;

// Create a public interface called ReadingListRepository. Have it
// extend the JpaRespository class. With JpaRepository use a generic
// of Book and Long.
public interface ReadingListRepository extends JpaRepository<Book, Long> {

    // Create a List variable called findByReader that takes a String variable
    // called 'reader' as its parameter. With List, use the generic, Book.
    List<Book> findByReader(String reader);
}
