package com.app.BookTime.model;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "Books")
public class Books {

    @Id
    private String id;

    private String titre;
    private String auteur;
    private Integer tome;

    private String serie;

    private String editeur;

    public Books(String id, String titre, String auteur, Integer tome, String serie, String editeur) {
        super();
        this.id = id;
        this.titre = titre;
        this.auteur = auteur;
        this.tome = tome;
        this.serie = serie;
        this.editeur = editeur;
    }



}