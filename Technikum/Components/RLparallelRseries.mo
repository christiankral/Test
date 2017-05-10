within Technikum.Components;
model RLparallelRseries
  parameter Modelica.SIunits.Resistance R = 1;
  parameter Modelica.SIunits.Resistance Rs = 1;
  parameter Modelica.SIunits.Inductance L = 1;



  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));

  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p
    annotation (Placement(transformation(extent={{-110,-10},{-88,10}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor
    annotation (Placement(transformation(extent={{-40,16},{-20,36}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor1
    annotation (Placement(transformation(extent={{24,-10},{44,10}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor
    annotation (Placement(transformation(extent={{-40,-36},{-20,-14}})));
equation
  connect(pin_p, resistor.p) annotation (Line(points={{-99,0},{-80,0},{-40,0},{-40,
          26}}, color={0,0,255}));
  connect(pin_p, inductor.p)
    annotation (Line(points={{-99,0},{-40,0},{-40,-25}}, color={0,0,255}));
  connect(inductor.n, resistor1.p) annotation (Line(points={{-20,-25},{-20,-25},
          {-20,0},{24,0}}, color={0,0,255}));
  connect(resistor.n, resistor1.p)
    annotation (Line(points={{-20,26},{-20,0},{24,0}}, color={0,0,255}));
  connect(resistor1.n, pin_n)
    annotation (Line(points={{44,0},{100,0},{100,0}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(preserveAspectRatio=false)));
end RLparallelRseries;
