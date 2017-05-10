within Technikum.Components;
model RLparallel "RL parallel element"
  parameter Modelica.SIunits.Resistance R=1 "Resistance value";
  parameter Modelica.SIunits.Inductance L=1 "Inductance value";

  Modelica.Electrical.Analog.Basic.Resistor resistor(R=R)
    annotation (Placement(transformation(extent={{-10,10},{10,30}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L=L)
    annotation (Placement(transformation(extent={{-10,-30},{10,-10}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin p
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin n
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
equation
  connect(resistor.p, p) annotation (Line(points={{-10,20},{-52,20},{-52,0},{-100,
          0}}, color={0,0,255}));
  connect(p, inductor.p) annotation (Line(points={{-100,0},{-52,0},{-52,-20},{-10,
          -20}}, color={0,0,255}));
  connect(resistor.n, n) annotation (Line(points={{10,20},{52,20},{52,0},{100,0}},
        color={0,0,255}));
  connect(n, n) annotation (Line(points={{100,0},{100,0}}, color={0,0,255}));
  connect(inductor.n, n) annotation (Line(points={{10,-20},{52,-20},{52,0},{100,
          0}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Rectangle(
          extent={{-20,60},{20,40}},
          lineColor={255,255,255},
          fillColor={0,128,255},
          fillPattern=FillPattern.Sphere),
        Line(
          points={{-24,-44},{-16,-36},{-10,-44},{-2,-36},{4,-44},{12,-36},{18,
              -44},{24,-40},{24,-40}},
          color={0,0,0},
          thickness=1),
        Line(
          points={{-28,-40},{-28,-40},{-24,-44}},
          color={0,0,0},
          thickness=1),
        Line(points={{-90,0},{-28,0}}, color={255,0,255}),
        Line(points={{24,0},{90,0}}, color={255,0,255}),
        Text(
          extent={{-100,90},{100,68}},
          lineColor={0,140,72},
          fillPattern=FillPattern.Sphere,
          fillColor={0,128,255},
          textString="R=%R
"),
        Text(
          extent={{-100,-88},{100,-110}},
          lineColor={162,29,33},
          fillPattern=FillPattern.Sphere,
          fillColor={0,128,255},
          textString="L=%L
"),
        Line(points={{-28,50},{-20,50}}, color={0,0,0}),
        Line(points={{24,50},{20,50}}, color={0,0,0}),
        Line(points={{-28,50},{-28,-40}}, color={0,0,0}),
        Line(points={{24,50},{24,-40}}, color={0,0,0})}),        Diagram(coordinateSystem(preserveAspectRatio=false)));
end RLparallel;
