class Employee {
  int id;
  String name;
  String designation;
  double salary;
  int experience;
  String companyName;
  int age;
  String qualification;
  String gender;
  String mobileNumber;

  Employee({
    required this.id,
    required this.name,
    required this.designation,
    required this.salary,
    required this.experience,
    required this.companyName,
    required this.age,
    required this.qualification,
    required this.gender,
    required this.mobileNumber,
  });

  factory Employee.create({
    required int id,
    required String name,
    required String designation,
    required double salary,
    required int experience,
    required String companyName,
    required int age,
    required String qualification,
    required String gender,
    required String mobileNumber,
  }) {
    return Employee(
      id: id,
      name: name,
      designation: designation,
      salary: salary,
      experience: experience,
      companyName: companyName,
      age: age,
      qualification: qualification,
      gender: gender,
      mobileNumber: mobileNumber,
    );
  }
}

void main() {
  List<Employee> employees = [];

  for (int i = 1; i <= 20; i++) {
    employees.add(Employee.create(
      id: 113,
      name: 'Prince buha $i',
      designation: 'red & white $i',
      salary: 50000 + i * 1000,
      experience: 34,
      companyName: 'Company $i',
      age: 25 + i,
      qualification: 'Bcc $i',
      gender: i.isEven ? 'Male' : 'Female',
      mobileNumber: '9725683070 $i',
    ));
  }

  // Displaying employee data
  for (var employee in employees) {
    print('ID: ${employee.id}');
    print('Name: ${employee.name}');
    print('Designation: ${employee.designation}');
    print('Salary: ${employee.salary}');
    print('Experience: ${employee.experience}');
    print('Company Name: ${employee.companyName}');
    print('Age: ${employee.age}');
    print('Qualification: ${employee.qualification}');
    print('Gender: ${employee.gender}');
    print('Mobile Number: ${employee.mobileNumber}');
    print('-----------------------------------');
  }
}
