import 'dart:math';
import 'shape.dart';

class Circle extends Shape {
    double _radius;
    Circle():  this._radius = 1.0;   
    Circle.withRadius(this._radius);

    set radius(double radius){
      this._radius = radius;
    }

    double get radius => this._radius;

    double getArea() => pi * pow(_radius, 2);
    double getCircumference() => 2 * pi * _radius;

    @override
    String toString() => 'Circle[${super.toString()}, radius=${radius}]';
}

void main(){ 
  var circle = Circle();
  var circleWithRadius = Circle.withRadius(2.5);

  print('Raio do circulo: ${circle.radius}');
  print('Circulo 1: $circle');
  print('Circulo 2: $circleWithRadius');
  print('Raio do circulo: ${circleWithRadius.radius}');
  print('Circunferencia do circulo: ${circleWithRadius.getCircumference()}');
  print('Area do circulo: ${circleWithRadius.getArea()}');
}