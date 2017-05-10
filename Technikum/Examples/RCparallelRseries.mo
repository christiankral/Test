within Technikum.Examples;
model RCparallelRseries
  Components.RCparallelRseries rCparallelRseries(
    R=1,
    C=1,
    Rs=1) annotation (Placement(transformation(extent={{-12,-8},{8,12}})));
  Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage
    annotation (Placement(transformation(extent={{-12,34},{8,54}})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-36,-28},{-16,-6}})));
equation
  connect(sineVoltage.p, rCparallelRseries.pin_p) annotation (Line(points={{-12,
          44},{-26,44},{-26,2},{-12,2}}, color={0,0,255}));
  connect(sineVoltage.n, rCparallelRseries.pin_n)
    annotation (Line(points={{8,44},{20,44},{20,2},{8,2}}, color={0,0,255}));
  connect(ground.p, rCparallelRseries.pin_p)
    annotation (Line(points={{-26,-6},{-26,2},{-12,2}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Ellipse(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillPattern=FillPattern.Sphere,
          fillColor={0,255,0}), Ellipse(
          extent={{-60,60},{60,-60}},
          lineColor={0,255,0},
          fillPattern=FillPattern.Sphere,
          fillColor={255,0,0})}),                                Diagram(coordinateSystem(preserveAspectRatio=false)));
end RCparallelRseries;
