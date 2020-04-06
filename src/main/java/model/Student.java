package model;

import lombok.Data;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

@Data
public class Student {
    private String name;
    private String family;
    private String country;
    private LinkedHashMap<String,String> countryOptions;
    private String favoriteLanguage;
    private String[] operatingSystems;

    public Student(){
        countryOptions = new LinkedHashMap<String, String>();
        countryOptions.put("BR","BRAZIL");
        countryOptions.put("FA","FRANCE");
        countryOptions.put("DE","GERMANY");
        countryOptions.put("IR","IRAN");
    }
}
