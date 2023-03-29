package com.app.BookTime.repository;

import com.app.BookTime.model.Books;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import java.awt.print.Book;

public interface BookRepository extends MongoRepository<Books,  String> {
}
