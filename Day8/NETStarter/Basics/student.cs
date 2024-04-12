//  class student
//  {
//     public String name;
//     public String address;
//     public int roll;
//     public DateTime dob;


//  public void PrintDetails()
//   {
//     Console.WriteLine($"{name} {address} {roll} {dob}");

//   }
//  }

class animal
{
  internal string name;
  internal string type;
  internal string habitat;
  internal string foodtype;
  internal string food;

  public void Details()
  {
    Console.WriteLine($"{name} is a {type}. It lives in {habitat}. It is a {foodtype} animal and depend upon {food} for food." );
  }
}