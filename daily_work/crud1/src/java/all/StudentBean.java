package all;

import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean
@ViewScoped
public class StudentBean {

    private StudentService service = new StudentService();
    private Student student;
    private List<Student> list;
    private String[] course;

    public void save() {
        String cc = "";
        for (String s : course) {
            cc += s + ", ";
        }
        student.setCourse(cc);
        service.saveOrUpdate(student);
    }

    public void edit() {
        service.saveOrUpdate(student);
    }

    public void delete() {
        service.delete(student);
    }

    public Student serchById() {
        Student s = new Student();
        s = service.getById(student.getId());
        return s;

    }

    public StudentService getService() {
        return service;
    }

    public void setService(StudentService service) {
        this.service = service;
    }

    public Student getStudent() {
        if (student == null) {
            student = new Student();
        }
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public List<Student> getList() {
        return list;
    }

    public void setList(List<Student> list) {
        this.list = list;
    }

    public String[] getCourse() {
        return course;
    }

    public void setCourse(String[] course) {
        this.course = course;
    }

}
