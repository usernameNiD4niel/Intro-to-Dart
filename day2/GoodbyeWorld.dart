void main(List<String> args) {
  FirstClass firstClass = new FirstClass("Daniel", "Rey");
  firstClass.setFirstName("Itlog");
  firstClass.setLastname("Tentacles");
  print(FirstClass.getEmail());
  print(firstClass.getFullName());

  FirstClass secondClass = new FirstClass("Chona", "Mae");
  print(secondClass.getFullName());
}

class FirstClass {
  String? firstName;
  String? lastName;

  FirstClass(String firstName, String lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
  }

  String getFullName() {
    return "$firstName $lastName";
  }

  void setLastname(String lName) => this.lastName = lName;

  static String getEmail() => "email.gmail@gmail.com";

  @Deprecated(
      """This piece of code is not necessary because we already set the first name using constructor, use this only if you want to update your first name to another value""")
  void setFirstName(String fName) {
    this.firstName = fName;
  }
}
