within RocketLanding.LanderWithVisualization;
model GridFinVisualization
  Modelica.Blocks.Math.UnitConversions.To_deg to_deg
    annotation (Placement(transformation(extent={{-11,-4},{-1,6}})));
  Modelica.Blocks.Math.Gain gain(k=-3)
    annotation (Placement(transformation(extent={{1,-2},{7,4}})));
  Modelica.Blocks.Interfaces.RealInput u(unit="rad") annotation (Placement(
        transformation(rotation=0, extent={{-16.5,-9},{-13.5,-7}})));
equation 
  connect(to_deg.y, gain.u)
    annotation (Line(points={{-0.5,1},{0.4,1}}, color={0,0,127}));
  connect(u, to_deg.u)
    annotation (Line(points={{-15,-8},{-12,1}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-15,-10},{15,10}})), Icon(
        coordinateSystem(extent={{-15,-10},{15,10}})));
end GridFinVisualization;





