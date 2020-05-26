within RocketLanding.LanderWithVisualization;
model LocationController
  Modelica.Blocks.Sources.Constant const1(k=10000)
    annotation (Placement(transformation(extent={{-150,30},{-138,42}})));
  Modelica.Blocks.Math.Add add4(k2=-1)
    annotation (Placement(transformation(extent={{-124,14},{-104,34}})));
  Modelica.Blocks.Math.Product product1
    annotation (Placement(transformation(extent={{4,14},{16,26}})));
  Modelica.Blocks.Nonlinear.Limiter limiter3(uMax=0.04, uMin=-0.04)
    annotation (Placement(transformation(extent={{-26,22},{-10,38}})));
  Modelica.Blocks.Interfaces.RealInput X_Position annotation (Placement(
        transformation(rotation=0, extent={{-180,8},{-160,28}})));
  Modelica.Blocks.Interfaces.RealOutput GridFinAngle annotation (Placement(
        transformation(rotation=0, extent={{30,10},{50,30}})));
  Modelica.Blocks.Interfaces.RealInput Enable annotation (Placement(
        transformation(
        rotation=90,
        extent={{-10,-10},{10,10}},
        origin={-98,-60})));
  Modelica.Blocks.Math.Gain Kp(k=-0.0001)
    annotation (Placement(transformation(extent={{-90,18},{-78,30}})));
  Modelica.Blocks.Continuous.Derivative derivative
    annotation (Placement(transformation(extent={{-144,56},{-124,76}})));
  Modelica.Blocks.Math.Gain Kd(k=0.003)
    annotation (Placement(transformation(extent={{-112,60},{-100,72}})));
  Modelica.Blocks.Math.Add add1(k2=+1)
    annotation (Placement(transformation(extent={{-68,20},{-48,40}})));
  Modelica.Blocks.Math.Gain Kp1(k=-1)
    annotation (Placement(transformation(extent={{-42,26},{-34,34}})));
equation 

  connect(const1.y, add4.u1) annotation (Line(points={{-137.4,36},{-132,36},{-132,
          30},{-126,30}}, color={0,0,127}));
  connect(X_Position, add4.u2)
    annotation (Line(points={{-170,18},{-126,18}}, color={0,0,127}));
  connect(derivative.u, add4.u2) annotation (Line(points={{-146,66},{-156,
          66},{-156,18},{-126,18}}, color={0,0,127}));
  connect(Kd.u, derivative.y)
    annotation (Line(points={{-113.2,66},{-123,66}}, color={0,0,127}));
  connect(add1.u2, Kp.y)
    annotation (Line(points={{-70,24},{-77.4,24}}, color={0,0,127}));
  connect(add1.u1, Kd.y) annotation (Line(points={{-70,36},{-80,36},{-80,66},
          {-99.4,66}}, color={0,0,127}));
  connect(Kp.u, add4.y)
    annotation (Line(points={{-91.2,24},{-103,24}}, color={0,0,127}));
  connect(product1.y, GridFinAngle)
    annotation (Line(points={{16.6,20},{40,20}}, color={0,0,127}));
  connect(product1.u1, limiter3.y) annotation (Line(points={{2.8,23.6},{-6,
          23.6},{-6,30},{-9.2,30}}, color={0,0,127}));
  connect(product1.u2, Enable) annotation (Line(points={{2.8,16.4},{-14,
          16.4},{-14,-28},{-98,-28},{-98,-60}}, color={0,0,127}));
  connect(Kp1.u, add1.y)
    annotation (Line(points={{-42.8,30},{-47,30}}, color={0,0,127}));
  connect(Kp1.y, limiter3.u)
    annotation (Line(points={{-33.6,30},{-27.6,30}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-170,-60},{30,140}})), Icon(
        coordinateSystem(extent={{-170,-60},{30,140}}), graphics={
        Bitmap(extent={{-146,-50},{2,80}}, fileName="modelica://FinalProject/Location.JPG"),
        Text(
          extent={{-150,132},{6,96}},
          lineColor={0,0,0},
          textString="%name"),
        Rectangle(extent={{-170,140},{30,-60}}, lineColor={0,0,0})}));
end LocationController;






