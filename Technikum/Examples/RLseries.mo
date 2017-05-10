within Technikum.Examples;
model RLseries "RL series element"

  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-50,-62},{-30,-42}})));
  Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage(V=500) annotation
    (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=-90,
        origin={-40,2})));
  Components.RLseries rLseries
    annotation (Placement(transformation(extent={{-12,30},{8,50}})));
equation
  connect(ground.p, sineVoltage.n)
    annotation (Line(points={{-40,-42},{-40,-42},{-40,-8}}, color={0,0,255}));
  connect(sineVoltage.p, rLseries.pin_p)
    annotation (Line(points={{-40,12},{-40,40},{-12,40}}, color={0,0,255}));
  connect(rLseries.pin_n, sineVoltage.n) annotation (Line(points={{8,40},{20,40},
          {20,-20},{-40,-20},{-40,-8}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={Line(
            points={{-80,-60},{-80,-56},{-80,80},{-40,20},{0,80},{0,-62}},
            color={28,108,200}), Line(points={{20,-60},{20,80},{80,-60},{80,80}},
            color={28,108,200})}),                               Diagram(coordinateSystem(preserveAspectRatio=false)));
end RLseries;
