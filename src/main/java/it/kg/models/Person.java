package it.kg.models;

public class Person {

    private int id;
    private String name;
    private String email;
    private int phone;
    private String comments;

    public Person(int id, String name, String email, int phone, String comments) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.comments = comments;
    }

    public Person() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    @Override
    public String toString() {
        return "Person{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", phone=" + phone +
                ", comments='" + comments + '\'' +
                '}';
    }
}
