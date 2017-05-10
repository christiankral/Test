within Technikum.Components;
model RCparallelRseries
  parameter Modelica.SIunits.Resistance R=1 "Resistance";
  parameter Modelica.SIunits.Capacitance C=1 "Capacitance";
  parameter Modelica.SIunits.Resistance Rs=1 "Resistance";
  Modelica.Electrical.Analog.Basic.Resistor resistor(R=Rs)
    annotation (Placement(transformation(extent={{20,-10},{40,10}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R=R)
    annotation (Placement(transformation(extent={{-60,-30},{-40,-10}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor(C=C)
    annotation (Placement(transformation(extent={{-60,10},{-40,30}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
equation
  connect(resistor.p, capacitor.n) annotation (Line(points={{20,0},{-20,0},{-20,
          20},{-40,20}}, color={0,0,255}));
  connect(resistor1.n, capacitor.n) annotation (Line(points={{-40,-20},{-20,-20},
          {-20,20},{-40,20}}, color={0,0,255}));
  connect(resistor1.p, capacitor.p) annotation (Line(points={{-60,-20},{-80,-20},
          {-80,20},{-60,20}}, color={0,0,255}));
  connect(pin_p, capacitor.p) annotation (Line(points={{-100,0},{-80,0},{-80,20},
          {-60,20}}, color={0,0,255}));
  connect(resistor.n, pin_n)
    annotation (Line(points={{40,0},{70,0},{100,0}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Rectangle(extent={{-60,40},{-10,20}}, lineColor={28,108,200}),
        Line(points={{-34,-8},{-34,-52}}, color={28,108,200}),
        Line(points={{-28,-8},{-28,-52}}, color={28,108,200}),
        Line(points={{-80,30},{-60,30}}, color={28,108,200}),
        Line(points={{-80,-30},{-34,-30}}, color={28,108,200}),
        Line(points={{-28,-30},{10,-30}}, color={28,108,200}),
        Line(points={{-80,-30},{-80,30}}, color={28,108,200}),
        Line(points={{-100,0},{-80,0}}, color={28,108,200}),
        Rectangle(extent={{24,10},{74,-10}}, lineColor={28,108,200}),
        Line(points={{-10,30},{10,30}}, color={28,108,200}),
        Line(points={{10,-30},{10,30}}, color={28,108,200}),
        Line(points={{10,0},{24,0}}, color={28,108,200}),
        Line(points={{74,0},{94,0}}, color={28,108,200}),
        Text(
          extent={{-92,88},{28,48}},
          lineColor={28,108,200},
          textString="R=%R"),
        Text(
          extent={{8,60},{128,20}},
          lineColor={28,108,200},
          textString="Rs=%Rs"),
        Text(
          extent={{-90,-56},{30,-96}},
          lineColor={28,108,200},
          textString="C=%C")}),                                  Diagram(coordinateSystem(preserveAspectRatio=false)));
end RCparallelRseries;
