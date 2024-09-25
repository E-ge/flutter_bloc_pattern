class MathRepository {
  int plus(String getVariable1, String getVariable2){
    int number1 = int.parse(getVariable1);
    int number2 = int.parse(getVariable2);

    int resultPlus = number1 + number2;
    return(resultPlus);
  }
  int x (String getVariable1, String getVariable2){

    int number1 = int.parse(getVariable1);
    int number2 = int.parse(getVariable2);

    int result = number1 * number2;
    return(result);
  }
}