within Technikum.Examples;
model RLCparallel "RC parallel element"
  extends Modelica.Icons.Example;
  Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage(V=400, freqHz=50)
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-74,6})));
  Modelica.Electrical.Analog.Basic.Ground ground
    annotation (Placement(transformation(extent={{-68,-46},{-48,-26}})));
  Components.RLCparallel rLCparallel
    annotation (Placement(transformation(extent={{-30,16},{-10,36}})));
equation
  connect(ground.p, sineVoltage.n)
    annotation (Line(points={{-58,-26},{-74,-26},{-74,-4}}, color={0,0,255}));
  connect(sineVoltage.p, rLCparallel.p)
    annotation (Line(points={{-74,16},{-74,26},{-30,26}}, color={0,0,255}));
  connect(rLCparallel.n, ground.p) annotation (Line(points={{-10,26},{22,26},{
          22,-26},{-58,-26}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Line(points={{6,-48}}, color={28,108,200}),
        Text(
          extent={{-20,-52},{22,-74}},
          lineColor={28,108,200},
          lineThickness=0.5,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid,
          textString="C


")}),                                                            Diagram(coordinateSystem(preserveAspectRatio=false)));
end RLCparallel;
