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
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Rectangle(
          extent={{-58,-22},{-10,-40}},
          lineColor={28,108,200},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-42,48},{-38,8}},
          lineColor={28,108,200},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-30,48},{-26,8}},
          lineColor={28,108,200},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{22,10},{70,-8}},
          lineColor={28,108,200},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-98,0},{-70,0},{-70,28},{-42,28}},
          color={28,108,200},
          thickness=0.5),
        Line(
          points={{-70,0},{-70,-32},{-58,-32}},
          color={28,108,200},
          thickness=0.5),
        Line(
          points={{-26,28},{2,28},{2,0},{22,0}},
          color={28,108,200},
          thickness=0.5),
        Line(
          points={{2,0},{2,-32},{-10,-32}},
          color={28,108,200},
          thickness=0.5),
        Line(
          points={{70,0},{90,0}},
          color={28,108,200},
          thickness=0.5)}),                                      Diagram(coordinateSystem(preserveAspectRatio=false)));
end RLparallelRseries;
