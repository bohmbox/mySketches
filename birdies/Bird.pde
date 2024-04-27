class Bird{
  // properties
  private String peak;
  private String featherType;
  private color featherColor;
  private String tail;
  private String eye;
  private String foot;

  void Bird(){
    print("Featureless constructor");
  }
  void Bird(String peak, String featherType, color featherColor,String tail, String eye, String foot){
    this.peak = peak;
    this.featherType = featherType;
    this.featherColor = featherColor;
    this.tail = tail;
    this.eye = eye;
    this.foot = foot;
  }

  // getter functions
  public String getPeak(){
    return this.peak;
  }
  public String getFeatherType(){
    return this.featherType;
  }
  public color getFeatherColor(){
    return this.featherColor;
  }
  public String getTail(){
    return this.tail;
  }
  public String getEye(){
    return this.eye;
  }
  public String getFoot(){
    return this.foot;
  }

  // setter functions
  public void setPeak(String peak){
    this.peak = peak;
  }
  public void setFeatherType(String featherType){
    this.featherType = featherType;
  }
  public void setFeatherColor(color featherColor){
    this.featherColor = featherColor;
  }
  public void setTail(String tail){
    this.tail = tail;
  }
  public void setEye(String eye){
    this.eye = eye;
  }
  public void setFoot(String foot){
    this.foot = foot;
  }
}
