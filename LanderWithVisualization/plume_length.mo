within RocketLanding.LanderWithVisualization;
model plume_length
  Modelica.Blocks.Nonlinear.Limiter limiter(uMax=1, uMin=0)
    annotation (Placement(transformation(extent={{28,7},{38,17}})));
  Modelica.Blocks.Math.Abs abs1
    annotation (Placement(transformation(extent={{-36,9},{-24,21}})));
  Modelica.Blocks.Math.Add add(k1=-1)
    annotation (Placement(transformation(extent={{6,7},{16,17}})));
  Modelica.Blocks.Sources.Constant const(k=1)
    annotation (Placement(transformation(extent={{-26,-17},{-14,-5}})));
  Modelica.Blocks.Math.Gain gain(k=5)
    annotation (Placement(transformation(extent={{-20,11},{-12,19}})));
  Modelica.Blocks.Math.Sqrt sqrt1
    annotation (Placement(transformation(extent={{-10,9},{0,19}})));
  Modelica.Blocks.Interfaces.RealInput u annotation (Placement(
        transformation(rotation=0, extent={{-44,12.5},{-36,17.5}})));
equation
  connect(limiter.u, add.y)
    annotation (Line(points={{27,12},{16.5,12}}, color={0,0,127}));
  connect(const.y, add.u2) annotation (Line(points={{-13.4,-11},{2,-11},{2,
          9},{5,9}}, color={0,0,127}));
  connect(abs1.y, gain.u) annotation (Line(points={{-23.4,15},{-23.4,14.5},
          {-20.8,14.5},{-20.8,15}}, color={0,0,127}));
  connect(gain.y, sqrt1.u) annotation (Line(points={{-11.6,15},{-11.6,14.5},
          {-11,14.5},{-11,14}}, color={0,0,127}));
  connect(sqrt1.y, add.u1) annotation (Line(points={{0.5,14},{3.25,14},{
          3.25,15},{5,15}}, color={0,0,127}));
  connect(u, abs1.u)
    annotation (Line(points={{-40,15},{-37.2,15}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-40,-25},{40,25}})), Icon(
        coordinateSystem(extent={{-40,-25},{40,25}})));
end plume_length;
