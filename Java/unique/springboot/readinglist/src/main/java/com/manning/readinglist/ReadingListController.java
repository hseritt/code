// Create the package name: com.manning.readinglist
package com.manning.readinglist;

// Import Autowired from Spring's beans.factory.annotation package
import org.springframework.beans.factory.annotation.Autowired;

// Import Controller from the stereotype package.
import org.springframework.stereotype.Controller;

// Import Model from the ui package.
import org.springframework.ui.Model;


// Import PathVariable, RequestMapping, RequestMethod from spring's
// web.bind.annotation package.
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

// Import a Java List.
import java.util.List;

// For the ReadingListController public class set annotations for @Controller
// @RequestMapping. Have @RequestMapping use "/" as its link.
@Controller
@RequestMapping("/")
public class ReadingListController {
    // Declare a private var called readingListRepository which is of the
    // ReadingListRepository type.
    private ReadingListRepository readingListRepository;

    // Create a public method called ReadingListController. Its parameter will
    // be ReadingListRepository readingListRepository. This method should have 'Autowired' set for annotation.
    @Autowired
    public ReadingListController (ReadingListRepository readingListRepository) {
        // Set the class var readingListRepository to have the same value as
        // the paramter, readingListRepository.
        this.readingListRepository = readingListRepository;
    }

    // Create a public method called readersBooks. Returns string, "readingList" (which is the template name). This will have a RequestMapping annotation above it with value as "/{reader" and request method is GET. The readersBooks method will take @PathVariable("reader") with String reader and Model model.
    @RequestMapping(value="/{reader}", method=RequestMethod.GET)
    public String readersBooks(@PathVariable ("reader") String reader, Model model) {

        // Declare readingList as a List with Book generic. It will be initialized to readingListRepository.findByReader(reader).
        List<Book> readingList = readingListRepository.findByReader(reader);

        // Use an if statement to determine if readingList is not null ...
        if (readingList != null) {
            // Then use model.addAttribute("books", readingList)
            model.addAttribute("books", readingList);
        }

        // Return the readingList template.
        return "readingList";
    }


    // This will be a RequestMapping for the POST method. It will also have as its value, "/{reader}".
    @RequestMapping(value="/{reader}", method=RequestMethod.POST)
    // Create a public method called addToReadingList. It will use a @PathVariable("reader") with String reader and Book book as parameters.
    public String addToReadingList(@PathVariable("reader") String reader, Book book) {

        // Set the book's reader as reader: book.setReader(...)
        book.setReader(reader);

        // Using readingListRepository save "book".
        readingListRepository.save(book);

        // Return a redirect to /{reader}.
        return "redirect:/{reader}";
    }
}
