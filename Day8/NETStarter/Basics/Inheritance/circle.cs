class Circle
{
    public Circle(double r)
    {
        radius = r;
    }
    double radius;

    public double GetArea() => Math.PI * radius * radius;
    public double GetPerimeter() => 2 * Math.PI * radius;
}