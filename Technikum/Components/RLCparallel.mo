within Technikum.Components;
model RLCparallel "RC parallel element"
  extends Modelica.Electrical.Analog.Interfaces.TwoPin;

  Modelica.Electrical.Analog.Basic.Resistor resistor
    annotation (Placement(transformation(extent={{-20,30},{0,50}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor
    annotation (Placement(transformation(extent={{-20,-10},{0,10}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor
    annotation (Placement(transformation(extent={{-20,-50},{0,-30}})));
equation
  connect(p, resistor.p) annotation (Line(points={{-100,0},{-70,0},{-32,0},{-32,
          40},{-20,40}}, color={0,0,255}));
  connect(inductor.p, resistor.p) annotation (Line(points={{-20,0},{-32,0},{-32,
          40},{-20,40}}, color={0,0,255}));
  connect(capacitor.p, resistor.p) annotation (Line(points={{-20,-40},{-32,-40},
          {-32,40},{-20,40}}, color={0,0,255}));
  connect(resistor.n, n) annotation (Line(points={{0,40},{30,40},{60,40},{60,0},
          {100,0}}, color={0,0,255}));
  connect(inductor.n, n)
    annotation (Line(points={{0,0},{4,0},{60,0},{100,0}}, color={0,0,255}));
  connect(capacitor.n, n) annotation (Line(points={{0,-40},{60,-40},{60,0},{100,
          0}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Rectangle(extent={{-26,60},{20,40}}, lineColor={28,108,200}),
        Rectangle(
          extent={{-26,12},{20,-8}},
          lineColor={28,108,200},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{-20,-20},{-20,-40}},
          color={28,108,200},
          thickness=0.5),
        Line(
          points={{-12,-20},{-12,-40}},
          color={28,108,200},
          thickness=0.5),
        Line(points={{-92,2},{-34,2}}, color={28,108,200}),
        Line(points={{-34,2},{-34,52},{-26,52}}, color={28,108,200}),
        Line(points={{-34,2},{-30,2},{-26,2}}, color={28,108,200}),
        Line(points={{-34,4},{-34,-28},{-20,-28}}, color={28,108,200}),
        Line(points={{-12,-28},{72,-28},{72,2},{90,2}}, color={28,108,200}),
        Line(points={{20,50},{72,50},{72,0}}, color={28,108,200}),
        Line(points={{20,2},{72,2}}, color={28,108,200}),
        Text(
          extent={{-16,80},{6,68}},
          lineColor={28,108,200},
          textString="R"),
        Text(
          extent={{-18,26},{4,14}},
          lineColor={28,108,200},
          textString="L
"),
        Text(
          extent={{-28,-44},{-6,-56}},
          lineColor={28,108,200},
          textString="C")}),                                     Diagram(coordinateSystem(preserveAspectRatio=false)));
end RLCparallel;
