within Technikum.Examples;
model RCparallel "RC parallel element"

  Components.RCparallel rCparallel(
    R=5,
    C=5) annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V=5)
    annotation (Placement(transformation(extent={{-44,-20},{-24,0}})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{18,-36},{38,-16}})));
equation
  connect(stepVoltage.n, rCparallel.pin_p) annotation (Line(points={{-24,-10},{-18,
          -10},{-18,0},{-10,0}}, color={0,0,255}));
  connect(rCparallel.pin_n, ground.p) annotation (Line(points={{10,0},{20,0},{20,
          -16},{28,-16}}, color={0,0,255}));
  connect(stepVoltage.p, ground.p) annotation (Line(points={{-44,-10},{-42,-10},
          {-42,-32},{-42,-40},{28,-40},{28,-16}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(preserveAspectRatio=false)));
end RCparallel;
