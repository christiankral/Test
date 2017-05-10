within Technikum.Examples;
model RLparallel "RL parallel element"

  Components.RLparallel L
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V=500)
    annotation (Placement(transformation(extent={{-46,-10},{-26,10}})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-62,-58},{-42,-38}})));
equation
  connect(stepVoltage.p, L.n) annotation (Line(points={{-46,0},{-52,0},{-52,-30},
          {20,-30},{20,0},{10,0}}, color={0,0,255}));
  connect(stepVoltage.n, L.p)
    annotation (Line(points={{-26,0},{-18,0},{-10,0}}, color={0,0,255}));
  connect(ground.p, L.n) annotation (Line(points={{-52,-38},{-52,-30},{20,-30},
          {20,0},{10,0}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Rectangle(
          extent={{-100,60},{100,-60}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Sphere,
          fillColor={127,0,127}), Text(
          extent={{-76,54},{78,-52}},
          lineColor={255,255,255},
          fillPattern=FillPattern.Sphere,
          fillColor={0,128,255},
          fontName="Bauhaus 93",
          textStyle={TextStyle.Italic,TextStyle.UnderLine},
          textString="P.St.")}),                                 Diagram(coordinateSystem(preserveAspectRatio=false)));
end RLparallel;
