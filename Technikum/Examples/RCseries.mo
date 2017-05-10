within Technikum.Examples;
model RCseries "RC series element"

  Components.RCseries rCseries
    annotation (Placement(transformation(extent={{-10,26},{10,46}})));
  Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage(V=230, freqHz=50)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=-90,
        origin={-28,4})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-8,-58},{12,-38}})));
equation
  connect(sineVoltage.p, rCseries.pin_p) annotation (Line(points={{-28,14},{-20,
          14},{-20,36},{-10.4,36}}, color={0,0,255}));
  connect(rCseries.pin_n, ground.p) annotation (Line(points={{10.6,35.8},{44,
          35.8},{44,-38},{2,-38}}, color={0,0,255}));
  connect(ground.p, sineVoltage.n) annotation (Line(points={{2,-38},{-6,-38},{
          -6,-34},{-28,-34},{-28,-6}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(preserveAspectRatio=false)));
end RCseries;
