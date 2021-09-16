abstract class MYStatus {}
class Intialstate extends MYStatus{}
class Plustate extends MYStatus{
  int counter;
  Plustate(this.counter);
}
class Minusstate extends MYStatus{
  int counter;
  Minusstate(this.counter);
}