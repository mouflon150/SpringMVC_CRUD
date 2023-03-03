package it.kg.dao;

import it.kg.models.Person;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class PersonDAO {

    private static int PEOPLE_COUNT;
    private final List<Person> people;

    {
        people = new ArrayList<>();

        people.add(new Person(++PEOPLE_COUNT, "Dastan"));
        people.add(new Person(++PEOPLE_COUNT, "Daniel"));
        people.add(new Person(++PEOPLE_COUNT, "Ariet"));
        people.add(new Person(++PEOPLE_COUNT, "Kurmanbek"));

    }

    public List<Person> index() {
        return people;
    }

    public Person show(final int id) {
        return people.stream().filter(person -> person.getId() == id).findAny().orElse(null);
    }
}
