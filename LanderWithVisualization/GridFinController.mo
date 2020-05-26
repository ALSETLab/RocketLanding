within RocketLanding.LanderWithVisualization;
model GridFinController
  Modelica.Blocks.Sources.Ramp ramp(
    offset=-1.4,
    duration=50,
    startTime=65,
    height=1.4)
    annotation (Placement(transformation(extent={{-162,10},{-142,30}})));
  Modelica.Blocks.Math.Add add(k2=-1)
    annotation (Placement(transformation(extent={{-40,-4},{-20,16}})));
  Modelica.Blocks.Math.Gain gain(k=1.8)
    annotation (Placement(transformation(extent={{-14,0},{-2,12}})));
  Modelica.Blocks.Interfaces.RealInput Z_Tilt annotation (Placement(
        transformation(
        rotation=0,
        extent={{-10,-10},{10,10}},
        origin={-170,-52}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-4,-50})));
  Modelica.Blocks.Interfaces.RealOutput Z_GridFinAngle annotation (
      Placement(transformation(rotation=0, extent={{30,-56},{50,-36}}),
        iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-10,150})));
  Modelica.Blocks.Math.Add add1(k2=-1)
    annotation (Placement(transformation(extent={{-104,-56},{-84,-36}})));
  Modelica.Blocks.Math.Add add2(k2=-1)
    annotation (Placement(transformation(extent={{-96,110},{-76,130}})));
  Modelica.Blocks.Sources.Constant const2(k=0)
    annotation (Placement(transformation(extent={{-126,120},{-110,136}})));
  Modelica.Blocks.Sources.Constant const3(k=0)
    annotation (Placement(transformation(extent={{-136,-46},{-120,-30}})));
  Modelica.Blocks.Interfaces.RealInput X_Tilt annotation (Placement(
        transformation(
        rotation=0,
        extent={{-10,-10},{10,10}},
        origin={-170,114}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-128,-50})));
  Modelica.Blocks.Interfaces.RealInput Y_Tilt annotation (Placement(
        transformation(
        rotation=0,
        extent={{-10,-10},{10,10}},
        origin={-170,-4}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-60,-50})));
  Modelica.Blocks.Interfaces.RealOutput X_GridFinAngle annotation (
      Placement(transformation(rotation=0, extent={{30,104},{50,124}}),
        iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-138,150})));
  Modelica.Blocks.Interfaces.RealOutput Y_GridFinAngle annotation (
      Placement(transformation(rotation=0, extent={{30,-4},{50,16}}),
        iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-68,150})));
  Modelica.Blocks.Nonlinear.Limiter limiter(uMax=0.785, uMin=-0.785)
    annotation (Placement(transformation(extent={{-46,112},{-30,128}})));
  Modelica.Blocks.Nonlinear.Limiter limiter1(uMax=0.785, uMin=-0.785)
    annotation (Placement(transformation(extent={{-38,-54},{-22,-38}})));
  Modelica.Blocks.Nonlinear.Limiter limiter2(uMax=0.785, uMin=-0.785)
    annotation (Placement(transformation(extent={{4,-2},{20,14}})));
  Modelica.Blocks.Interfaces.RealInput X_Position annotation (Placement(
        transformation(
        rotation=0,
        extent={{-10,-10},{10,10}},
        origin={-170,78}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-160,68})));
  Modelica.Blocks.Interfaces.RealInput Clock annotation (Placement(
        transformation(
        rotation=0,
        extent={{-10,-10},{10,10}},
        origin={-170,48}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-160,14})));
  Modelica.Blocks.Math.Product product
    annotation (Placement(transformation(extent={{-96,18},{-84,30}})));
  Modelica.Blocks.Math.MultiSwitch Disable(
    nu=1,
    expr={0},
    y_default=1)
    annotation (Placement(transformation(extent={{-126,30},{-104,42}})));
  Modelica.Blocks.Logical.GreaterThreshold greaterThreshold(threshold=140)
    annotation (Placement(transformation(extent={{-150,42},{-136,56}})));
  Modelica.Blocks.Math.Add add3
    annotation (Placement(transformation(extent={{-62,4},{-48,18}})));
  Modelica.Blocks.Math.MultiSwitch Enable(
    nu=1,
    expr={1},
    y_default=0)
    annotation (Placement(transformation(extent={{-126,50},{-104,62}})));
  LocationController locationController annotation (Placement(
        transformation(rotation=0, extent={{-112,70},{-78,104}})));
equation 
  connect(gain.u, add.y)
    annotation (Line(points={{-15.2,6},{-19,6}}, color={0,0,127}));
  connect(add1.u2, Z_Tilt)
    annotation (Line(points={{-106,-52},{-170,-52}}, color={0,0,127}));
  connect(const2.y, add2.u1) annotation (Line(points={{-109.2,128},{-104,
          128},{-104,126},{-98,126}}, color={0,0,127}));
  connect(const3.y, add1.u1) annotation (Line(points={{-119.2,-38},{-112,
          -38},{-112,-40},{-106,-40}}, color={0,0,127}));
  connect(Y_Tilt, add.u2) annotation (Line(points={{-170,-4},{-140,-4},{
          -140,0},{-42,0}}, color={0,0,127}));
  connect(add2.u2, X_Tilt)
    annotation (Line(points={{-98,114},{-170,114}}, color={0,0,127}));
  connect(limiter.u, add2.y)
    annotation (Line(points={{-47.6,120},{-75,120}}, color={0,0,127}));
  connect(limiter.y, X_GridFinAngle) annotation (Line(points={{-29.2,120},{
          -2,120},{-2,114},{40,114}}, color={0,0,127}));
  connect(limiter1.u, add1.y)
    annotation (Line(points={{-39.6,-46},{-83,-46}}, color={0,0,127}));
  connect(limiter1.y, Z_GridFinAngle)
    annotation (Line(points={{-21.2,-46},{40,-46}}, color={0,0,127}));
  connect(limiter2.u, gain.y)
    annotation (Line(points={{2.4,6},{-1.4,6}}, color={0,0,127}));
  connect(limiter2.y, Y_GridFinAngle)
    annotation (Line(points={{20.8,6},{40,6}}, color={0,0,127}));
  connect(product.u2, ramp.y) annotation (Line(points={{-97.2,20.4},{-137.6,
          20.4},{-137.6,20},{-141,20}}, color={0,0,127}));
  connect(greaterThreshold.u, Clock) annotation (Line(points={{-151.4,49},{
          -158.7,49},{-158.7,48},{-170,48}}, color={0,0,127}));
  connect(greaterThreshold.y, Disable.u[1]) annotation (Line(points={{
          -135.3,49},{-129.65,49},{-129.65,36},{-126,36}}, color={255,0,255}));
  connect(Disable.y, product.u1) annotation (Line(points={{-103.45,36},{
          -100,36},{-100,27.6},{-97.2,27.6}}, color={0,0,127}));
  connect(add3.u2, product.y) annotation (Line(points={{-63.4,6.8},{-78.7,
          6.8},{-78.7,24},{-83.4,24}}, color={0,0,127}));
  connect(add3.y, add.u1) annotation (Line(points={{-47.3,11},{-46,11},{-46,
          12},{-42,12}}, color={0,0,127}));
  connect(locationController.X_Position, X_Position) annotation (Line(
        points={{-112,83.26},{-134,83.26},{-134,78},{-170,78}}, color={0,0,
          127}));
  connect(Enable.u[1], greaterThreshold.y) annotation (Line(points={{-126,
          56},{-130,56},{-130,49},{-135.3,49}}, color={255,0,255}));
  connect(locationController.Enable, Enable.y) annotation (Line(points={{
          -99.76,70},{-99.76,56},{-103.45,56}}, color={0,0,127}));
  connect(locationController.GridFinAngle, add3.u1) annotation (Line(points=
         {{-76.3,83.6},{-70,83.6},{-70,16},{-66,16},{-66,15.2},{-63.4,15.2}},
        color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-170,-60},{30,140}})), Icon(
        coordinateSystem(extent={{-170,-60},{30,140}}), graphics={
        Bitmap(extent={{-158,-38},{28,72}}, fileName=
              "modelica://FinalProject/fins.JPG"),
        Text(
          extent={{-144,130},{8,82}},
          lineColor={0,0,0},
          textString="%name"),
        Rectangle(extent={{-170,140},{30,-60}}, lineColor={0,0,0})}));
end GridFinController;