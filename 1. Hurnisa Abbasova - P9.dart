// Question 1
/* What is the difference between a 'for', 'forEach' and 'while' loop in Dart? When would you prefer one over the other?
 */

/* 'for' loop 
  if we know the iterations we are gonna have and control the loop with an index, we use 'for' loop.
  we choose this method when we know number of iterations in advance
  'forEach' loop
 when we want to perform an opration and without worring about index unlike 'for' loop.
 When you need to perform an operation on each element of a collection.
 
 'while' loop
 When you don’t know the exact number of iterations in advance, but you want the loop to continue as long as a condition is true. It is used when the number of iterations is not known beforehand.
  */

//-------------------------------------------------------------

/* Question 2
Create a list of integers and use '.map()' to return a list of their squares. */ 

void squareNumbers() {
  List<int> nums = [1, 2, 3, 4];
  var square = nums.map((n) => n * n).toList();  /* it will just multiply with itself and it will be power of the number as square */
  print(square); // Wrong: [2, 4, 6, 8] -> Right: [1, 4, 9, 16]
}

// void main() {
//   squareNumbers();
// }


//------------------------------------------------------------


// Question 3
// Write a Dart function that checks if a string is a palindrome 
// we use bool function to check true or false

bool ispalindrome(String input) {
  /// NOTE: Case sensitivity and empty spaces should have been checked here;
  // Check if the string is equal to its reversed version
  return input == input.split('').reversed.join();
}

// void main() {
//   String name = "  radaR"; // Example input
//   print(ispalindrome(name)); // Should print: true
// }


//-------------------------------------------------------------

/* Question 4
Build a class hierarchy: 'User' -> 'Admin', where 'Admin' has additional permissions and uses 'super'
to call parent methods */



// Class to represent a User
class User {
  String name;
  String email;

  // Constructor to initialize name and email
  User(this.name, this.email);

  // Method for user login
  void login() {
    print('$name has logged in.');
  }

  // Method for user logout
  void logout() {
    print('$name has logged out.');
  }
}

// Subclass Admin, which extends User
class Admin extends User {
  List<String> permissions;

  // Constructor for Admin, calling the superclass (User) constructor using super
  Admin(String name, String email, this.permissions) : super(name, email);

  // Overriding the login method to include admin privileges
  @override
  void login() {
    // Calling the login method of the superclass (User)
    super.login();
    // Adding additional behavior specific to Admin
    print('$name has admin privileges.');
  }

  // Additional method for Admin class to manage users
  void manageUsers() {
    print('$name is managing users with permissions: $permissions');
  }
}

// Main function to test the classes
void main() {
  // Creating an instance of User
  User user = User('Hurnisa Abbasova', 'hurnisa@example.com');
  user.login();  // Outputs: Hurnisa Abbasova has logged in.
  user.logout(); // Outputs: Hurnisa Abbasova has logged out.

  // Creating an instance of Admin
  Admin admin = Admin('Narmin Orujova', 'narmin@example.com', ['add_user', 'delete_user', 'edit_user']);
  admin.login();       // Outputs: Narmin Orujova has logged in. Narmin Orujova has admin privileges.
  admin.manageUsers(); // Outputs: Narmin Orujova is managing users with permissions: [add_user, delete_user, edit_user]
  admin.logout();      // Outputs: Narmin Orujova has logged out.
}



