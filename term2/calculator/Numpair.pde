class Numpair
{
  float number;
  Numpair n1;
  Numpair n2;
  String operator;
  String error = "";

  Numpair(Numpair n1, String operator, Numpair n2)
  {
    this.n1 = n1;
    this.n2 = n2;
    this.operator = operator;
  }

  Numpair(float number)
  {
    this.number = number;
    operator = "just a number";
  }
  
  Numpair(String error)
  {
    this.error = error;
    operator = "error";
  }
}