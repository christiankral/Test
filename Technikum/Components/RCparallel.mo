within Technikum.Components;
model RCparallel "RC parallel element"

  parameter Modelica.SIunits.Resistance R;
  parameter Modelica.SIunits.Capacitance C;

  Modelica.Electrical.Analog.Basic.Resistor resistor
    annotation (Placement(transformation(extent={{-8,8},{10,26}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor
    annotation (Placement(transformation(extent={{-10,-20},{10,0}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));


equation
  connect(pin_p, resistor.p) annotation (Line(points={{-100,0},{-54,0},{-54,17},
          {-8,17}}, color={0,0,255}));
  connect(capacitor.p, resistor.p) annotation (Line(points={{-10,-10},{-32,-10},
          {-32,0},{-54,0},{-54,17},{-8,17}}, color={0,0,255}));
  connect(resistor.n, pin_n) annotation (Line(points={{10,17},{54,17},{54,0},{100,
          0}}, color={0,0,255}));
  connect(capacitor.n, pin_n) annotation (Line(points={{10,-10},{32,-10},{32,0},
          {100,0}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Rectangle(extent={{-20,40},{20,20}}, lineColor={28,108,200}),
        Line(points={{-10,-8},{-10,-38}}, color={28,108,200}),
        Line(points={{10,-8},{10,-38}}, color={28,108,200}),
        Line(points={{-30,-22},{-10,-22}}, color={28,108,200}),
        Line(points={{10,-22},{28,-22}}, color={28,108,200}),
        Line(points={{-90,0},{-40,0},{-40,30},{-20,30}}, color={28,108,200}),
        Line(points={{20,30},{40,30},{40,-22},{28,-22}}, color={28,108,200}),
        Line(points={{-40,0},{-40,-22},{-30,-22}}, color={28,108,200}),
        Line(points={{40,0},{90,0}}, color={28,108,200}),
        Text(
          extent={{-40,78},{42,68}},
          lineColor={28,108,200},
          textString="R=%R"),
        Text(
          extent={{-42,-48},{40,-58}},
          lineColor={28,108,200},
          textString="C=%C")}),                                  Diagram(coordinateSystem(preserveAspectRatio=false)));
end RCparallel;
