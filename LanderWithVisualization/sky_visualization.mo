within RocketLanding.LanderWithVisualization;
model sky_visualization
  Modelica.Blocks.Math.RealToInteger realToInteger
    annotation (Placement(transformation(extent={{-116,64},{-96,84}})));
  Modelica.Blocks.Sources.Constant const1(k=255)
    annotation (Placement(transformation(extent={{-152,42},{-140,54}})));
  Modelica.Blocks.Math.Add add(k1=-1)
    annotation (Placement(transformation(extent={{-134,48},{-126,56}})));
  Modelica.Blocks.Nonlinear.Limiter limiter(uMax=255, uMin=0)
    annotation (Placement(transformation(extent={{-172,64},{-160,76}})));
  Modelica.Blocks.Interfaces.RealInput u annotation (Placement(
        transformation(rotation=0, extent={{-190,70},{-170,90}})));
equation
  connect(add.u2, const1.y) annotation (Line(points={{-134.8,49.6},{-137.4,
          49.6},{-137.4,48},{-139.4,48}}, color={0,0,127}));
  connect(add.y, realToInteger.u) annotation (Line(points={{-125.6,52},{
          -122,52},{-122,74},{-118,74}}, color={0,0,127}));
  connect(limiter.y, add.u1) annotation (Line(points={{-159.4,70},{-158,70},
          {-158,68},{-134.8,68},{-134.8,54.4}}, color={0,0,127}));
  connect(u, limiter.u) annotation (Line(points={{-180,80},{-176,80},{-176,
          70},{-173.2,70}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-180,-60},{20,140}})), Icon(
        coordinateSystem(extent={{-180,-60},{20,140}})));
end sky_visualization;
