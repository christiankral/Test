model Test
  parameter Real a=1 "Parameter a";
  parameter Real b=2 "Parameter b";
  parameter Real c=3 "Parameter c";
  Real x;
  Real y;
  Real z;
equation 
  x=a;
  y=b+c;
  z=b-c;
end Test;
