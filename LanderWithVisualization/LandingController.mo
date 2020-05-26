within RocketLanding.LanderWithVisualization;
model LandingController
  Modelica.Blocks.Math.MultiSwitch enable(
    y_default=0,
    nu=1,
    expr={1})
    annotation (Placement(transformation(extent={{-96,-50},{-56,-30}})));
  Modelica.Blocks.Logical.GreaterThreshold greaterThreshold(threshold=183)
    annotation (Placement(transformation(extent={{-124,-52},{-104,-32}})));
  Modelica.Blocks.Math.Product product2
    annotation (Placement(transformation(extent={{26,-18},{38,-6}})));
  Modelica.Blocks.Interfaces.RealInput Clock annotation (Placement(
        transformation(rotation=0, extent={{-160,-52},{-140,-32}}),
        iconTransformation(extent={{-160,-52},{-140,-32}})));
  Modelica.Blocks.Interfaces.RealInput Altitude annotation (Placement(
        transformation(rotation=0, extent={{-160,8},{-140,28}}),
        iconTransformation(extent={{-160,8},{-140,28}})));
  Modelica.Blocks.Interfaces.RealOutput Thrust annotation (Placement(
        transformation(rotation=0, extent={{50,-22},{70,-2}}),
        iconTransformation(extent={{50,-22},{70,-2}})));
  Modelica.Blocks.Continuous.Derivative derivative1
    annotation (Placement(transformation(extent={{-118,28},{-102,44}})));
  Modelica.Blocks.Math.Gain Kp1(k=0.0001)
    annotation (Placement(transformation(extent={{-92,6},{-78,20}})));
  Modelica.Blocks.Math.Gain Kd2(k=0.01)
    annotation (Placement(transformation(extent={{-90,28},{-76,42}})));
  Modelica.Blocks.Math.Add Zero
    annotation (Placement(transformation(extent={{-66,14},{-50,30}})));
  Modelica.Blocks.Math.Gain Kp2(k=-0.8)
    annotation (Placement(transformation(extent={{-42,14},{-28,28}})));
  Modelica.Blocks.Nonlinear.Limiter limiter2(uMin=0, uMax=4)
    annotation (Placement(transformation(extent={{2,10},{14,22}})));
  Modelica.Blocks.Math.Add add1
    annotation (Placement(transformation(extent={{-20,8},{-4,24}})));
  Modelica.Blocks.Sources.Constant const1(k=1)
    annotation (Placement(transformation(extent={{-54,-12},{-40,2}})));
equation 
  connect(enable.u[1], greaterThreshold.y) annotation (Line(points={{-96,
          -40},{-100,-40},{-100,-42},{-103,-42}}, color={255,0,255}));
  connect(Clock, greaterThreshold.u)
    annotation (Line(points={{-150,-42},{-126,-42}}, color={0,0,127}));
  connect(Thrust, product2.y)
    annotation (Line(points={{60,-12},{38.6,-12}}, color={0,0,127}));
  connect(product2.u2, enable.y) annotation (Line(points={{24.8,-15.6},{14,
          -15.6},{14,-40},{-55,-40}}, color={0,0,127}));
  connect(Kp1.u, Altitude) annotation (Line(points={{-93.4,13},{-126,13},{
          -126,18},{-150,18}}, color={0,0,127}));
  connect(derivative1.u, Altitude) annotation (Line(points={{-119.6,36},{
          -126,36},{-126,18},{-150,18}}, color={0,0,127}));
  connect(Kd2.u, derivative1.y) annotation (Line(points={{-91.4,35},{-94,35},
          {-94,34},{-98,34},{-98,36},{-101.2,36}}, color={0,0,127}));
  connect(Zero.u1, Kd2.y) annotation (Line(points={{-67.6,26.8},{-72,26.8},
          {-72,35},{-75.3,35}}, color={0,0,127}));
  connect(Zero.u2, Kp1.y) annotation (Line(points={{-67.6,17.2},{-72,17.2},
          {-72,13},{-77.3,13}}, color={0,0,127}));
  connect(Kp2.u, Zero.y) annotation (Line(points={{-43.4,21},{-46.7,21},{
          -46.7,22},{-49.2,22}}, color={0,0,127}));
  connect(limiter2.y, product2.u1) annotation (Line(points={{14.6,16},{22,
          16},{22,-8.4},{24.8,-8.4}}, color={0,0,127}));
  connect(add1.y, limiter2.u)
    annotation (Line(points={{-3.2,16},{0.8,16}}, color={0,0,127}));
  connect(add1.u1, Kp2.y) annotation (Line(points={{-21.6,20.8},{-24.8,20.8},
          {-24.8,21},{-27.3,21}}, color={0,0,127}));
  connect(const1.y, add1.u2) annotation (Line(points={{-39.3,-5},{-28,-5},{
          -28,11.2},{-21.6,11.2}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-150,-60},{50,140}})), Icon(
        coordinateSystem(extent={{-150,-60},{50,140}}), graphics={
        Bitmap(extent={{-122,-42},{20,108}}, fileName=
              "modelica://FinalProject/pics/landing.JPG"),
        Text(
          extent={{-108,134},{18,112}},
          lineColor={0,0,0},
          textString="%name"),
        Rectangle(extent={{-150,140},{50,-60}}, lineColor={0,0,0})}));
end LandingController;
