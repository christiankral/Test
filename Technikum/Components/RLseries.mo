within Technikum.Components;
model RLseries "RL series element"


  parameter Modelica.SIunits.Resistance R=1 "Resistor value";
  parameter Modelica.SIunits.Inductance L=1 "Inductance value";


  Modelica.Electrical.Analog.Basic.Resistor resistor(R=R)
    annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L=L)
    annotation (Placement(transformation(extent={{20,-10},{40,10}})));



  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
equation
  connect(resistor.n, inductor.p)
    annotation (Line(points={{-20,0},{0,0},{20,0}}, color={0,0,255}));
  connect(pin_p, resistor.p)
    annotation (Line(points={{-100,0},{-70,0},{-40,0}}, color={0,0,255}));
  connect(inductor.n, pin_n)
    annotation (Line(points={{40,0},{100,0}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Line(points={{-90,0},{-58,0},{-58,40},{-4,40},{-4,-22},{-4,-40},{-58,-40},
              {-58,0}}, color={28,108,200}),
        Line(points={{-4,0},{20,0},{20,40}}, color={28,108,200}),
        Line(points={{20,0},{20,-42}}, color={28,108,200}),
        Text(
          extent={{-100,72},{0,48}},
          lineColor={28,108,200},
          textString="R=%R"),
        Text(
          extent={{0,-46},{100,-70}},
          lineColor={28,108,200},
          textString="L=%L"),
        Line(points={{20,40},{40,-42}}, color={28,108,200}),
        Line(points={{40,38},{60,-42},{60,40}}, color={28,108,200}),
        Line(points={{40,38},{40,-42}}, color={28,108,200}),
        Line(points={{60,-2}}, color={28,108,200}),
        Line(points={{60,0},{92,0}}, color={28,108,200})}),      Diagram(coordinateSystem(preserveAspectRatio=false)));
end RLseries;
