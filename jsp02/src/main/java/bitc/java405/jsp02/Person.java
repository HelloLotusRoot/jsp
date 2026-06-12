// 규약 1. 기본 패키지 이외의 패키지 사용
package bitc.java405.jsp02;

// 규약 2. 멤버 변수의 접근 제한자는 무조건 private
public class Person {
  private String name;  // private 멤버 변수(규약 2번)
  private int age;      // private 멤버 변수(규약 2번)

  // 규약 3. 기본 생성자는 반드시 있어야 함
  public Person() {
  }    // 기본 생성자(규약 3번)

  public Person(String name, int age) {
    super();
    this.name = name;
    this.age = age;
  }

  // 규약 4. 멤버 변수에 대한 getter/setter이 있어야 함
  // public 게터/세터 메서드들(규약 4번, 5번)
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public int getAge() {
    return age;
  }

  public void setAge(int age) {
    this.age = age;
  }
}
