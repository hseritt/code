// Add the package name (com.manning.readinglist)
package com.manning.readinglist;

// Import from javax.persistence: Entity, GeneratedValue, GenerationType and Id
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/* Create a class called book. Use the annotation, Entity, to show that this
class will be a table in the database.
*/
@Entity
public class Book {

    // Create a Long variable called id. Put the Id annotation to signify this
    // will be the "table" id. Set annotation, GeneratedValue and set strategy
    // to GenerationType.AUTO
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Long id;

    // Create the following String vars: reader, isbn, title, author, description.
    private String reader;
    private String isbn;
    private String title;
    private String author;
    private String description;

    // Create getters and setters for each variable
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getReader() {
        return reader;
    }

    public void setReader(String reader) {
        this.reader = reader;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}