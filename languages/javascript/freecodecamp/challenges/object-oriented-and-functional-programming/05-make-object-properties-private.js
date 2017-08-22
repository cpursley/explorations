// URL: https://www.freecodecamp.org/challenges/make-object-properties-private

var Car = function() {
  // this is a private variable
  var speed = 10;

  // these are public methods
  this.accelerate = function(change) {
    speed += change;
  };

  this.decelerate = function() {
    speed -= 5;
  };

  this.getSpeed = function() {
    return speed;
  };
};

var Bike = function() {
  // Only change code below this line.
  var gear = 9;

  this.getGear = function() {
    return gear;
  };


  this.setGear = function(newGear) {
    gear = newGear;
  };


};

var myCar = new Car();

var myBike = new Bike();
