within Technikum.Components;
model RCseries "RC series element"
  parameter Modelica.SIunits.Resistance R=1 "Resistor";
  parameter Modelica.SIunits.Capacitance C=1 "Capacitor";
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p
    annotation (Placement(transformation(extent={{-114,-10},{-94,10}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n
    annotation (Placement(transformation(extent={{96,-12},{116,8}})));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R=R)
    annotation (Placement(transformation(extent={{-52,-10},{-32,10}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor(C=C)
    annotation (Placement(transformation(extent={{26,-10},{46,10}})));
equation
  connect(pin_p, resistor.p)
    annotation (Line(points={{-104,0},{-52,0}},         color={0,0,255}));
  connect(resistor.n, capacitor.p)
    annotation (Line(points={{-32,0},{-4,0},{26,0}}, color={0,0,255}));
  connect(capacitor.n, pin_n)
    annotation (Line(points={{46,0},{106,0},{106,-2}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Rectangle(
          extent={{-64,10},{-2,-16}},
          lineColor={0,0,255},
          fillColor={255,255,0},
          fillPattern=FillPattern.Solid),
        Line(points={{28,8},{28,-18}}, color={0,0,255}),
        Line(points={{40,8},{40,-18}}, color={0,0,255}),
        Line(points={{-94,0},{-64,0}}, color={0,0,255}),
        Line(points={{-2,0},{28,0}}, color={0,0,255}),
        Line(points={{40,0},{96,0}}, color={0,0,255}),
        Text(
          extent={{-72,40},{-2,12}},
          lineColor={0,0,255},
          fillColor={255,255,0},
          fillPattern=FillPattern.Solid,
          textString="R=%R"),
        Text(
          extent={{0,-26},{70,-54}},
          lineColor={0,0,255},
          fillColor={255,255,0},
          fillPattern=FillPattern.Solid,
          textString="C=%C")}),                                  Diagram(coordinateSystem(preserveAspectRatio=false)));
end RCseries;
