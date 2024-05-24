void setup(){
  size(200,200);
  //background(#16161b);
  //datagram();
  //performModularOperations("(i+1)%3");
  modulOp();
  
}

void datagram(){
  stroke(#F0F7F7);
  strokeWeight(4);
  line(5,0,5,60);
  line(5,60,80,60);
}

void performModularOperations(String expression) {
    for (int i = 1; i < 10; i++) {
        String evaluatedExpression = expression.replace("i", String.valueOf(i));
        int result = Integer.parseInt(evaluatedExpression);
        println("Expression: " + expression  + "is "+  result);
    }
}

void modulOp(){
  for(int i = 0; i<12;i++){
    int op = (i%5)/4*(-1)1;
    print(op);
  }

}
