within Technikum.Components;
model RLCseries "RLC series element"

parameter Modelica.SIunits.Resistance R = 1;
parameter Modelica.SIunits.Inductance L = 1;
parameter Modelica.SIunits.Capacitance C = 1;

  Modelica.Electrical.Analog.Basic.Resistor resistor(R=R)
    annotation (Placement(transformation(extent={{-58,-10},{-38,10}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L=L)
    annotation (Placement(transformation(extent={{-14,-10},{6,10}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor(C=C)
    annotation (Placement(transformation(extent={{40,-10},{60,10}})));
  Modelica.Electrical.Analog.Interfaces.PositivePin pin_p
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  Modelica.Electrical.Analog.Interfaces.NegativePin pin_n
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
equation
  connect(resistor.p, pin_p)
    annotation (Line(points={{-58,0},{-100,0}},          color={0,0,255}));
  connect(inductor.p, resistor.n)
    annotation (Line(points={{-14,0},{-26,0},{-38,0}}, color={0,0,255}));
  connect(capacitor.p, inductor.n)
    annotation (Line(points={{40,0},{6,0}},       color={0,0,255}));
  connect(pin_n, capacitor.n)
    annotation (Line(points={{100,0},{80,0},{60,0}}, color={0,0,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Rectangle(
          extent={{-78,34},{76,-34}},
          lineColor={28,108,200},
          fillColor={255,255,0},
          fillPattern=FillPattern.Solid,
          radius=5), Text(
          extent={{-64,62},{56,-58}},
          lineColor={0,0,0},
          textString="-R-L-C-")}),                               Diagram(coordinateSystem(preserveAspectRatio=false)));
end RLCseries;
