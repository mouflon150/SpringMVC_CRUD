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

        people.add(new Person(++PEOPLE_COUNT, "Dastan", "dastanboy@gmail.com", 799454323,
                "He is a good man, kind and helpful but very lazy."));
        people.add(new Person(++PEOPLE_COUNT, "Daniel", "doncha@gmail.com", 556044742,
                "Daniel is a real optimist with a positive outlook on the world."));
        people.add(new Person(++PEOPLE_COUNT, "Ariet", "ariet05@gmail.com", 772905488,
                "It would be easier for you if you were a little more open to people."));
        people.add(new Person(++PEOPLE_COUNT, "Kurmanbek", "kukujunior@gmail.com", 999456758,
                "He is an ordinary unremarkable person."));

    }

    public List<Person> index() {
        return people;
    }

    public Person show(final int id) {
        return people.stream().filter(person -> person.getId() == id).findAny().orElse(null);
    }
}
