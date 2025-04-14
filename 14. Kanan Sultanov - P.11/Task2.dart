/* Task 2

Kanan Sultanov Emil 606.23E

Use a while loop to sum numbers from 1 to 10. [3 points]
 */
void main() {
  //Firt we create two variables i and sum

  int i = 0;          //This variable is for iterating through the given condition
  double sum = 0;     //This is for collecting the sum

  while(i <= 10) {    //Then I create the while loop which sums i and sum
    sum = sum + i;
    i++;              //increment for i
  }

  print(sum);        //Printing the sum from 1 to 10
}