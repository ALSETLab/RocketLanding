within RocketLanding.LanderWithHorizontalVelocity;
model BoostBackController
  Modelica.Blocks.Math.MultiSwitch boostback_thrust(
    y_default=0,
    expr={0.7},
    nu=1)
    annotation (Placement(transformation(extent={{2,12},{42,32}})));
  Modelica.Blocks.Logical.GreaterThreshold greaterThreshold(threshold=1)
    annotation (Placement(transformation(extent={{-94,4},{-74,24}})));
  Modelica.Blocks.Logical.And and1
    annotation (Placement(transformation(extent={{-58,16},{-46,28}})));
  Modelica.Blocks.Interfaces.RealOutput Thrust annotation (Placement(
        transformation(rotation=0, extent={{60,32},{80,52}}),
        iconTransformation(extent={{60,32},{80,52}})));
  Modelica.Blocks.Interfaces.RealInput Clock annotation (Placement(
        transformation(rotation=0, extent={{-150,4},{-130,24}}),
        iconTransformation(extent={{-150,4},{-130,24}})));
  Modelica.Blocks.Continuous.Derivative derivative(T=1)
    annotation (Placement(transformation(extent={{-96,72},{-80,88}})));
  Modelica.Blocks.Interfaces.RealInput X_Position
    annotation (Placement(transformation(extent={{-152,68},{-128,92}})));
  Modelica.Blocks.Logical.GreaterThreshold
                                        greaterThreshold1(threshold=0)
    annotation (Placement(transformation(extent={{-40,70},{-20,90}})));
  Modelica.Blocks.Math.MultiSwitch Cutoff(
    nu=1,
    expr={1},
    y_default=0) annotation (Placement(transformation(
        extent={{-20,-10},{20,10}},
        rotation=180,
        origin={-44,52})));
  Modelica.Blocks.Math.Product product
    annotation (Placement(transformation(extent={{-120,12},{-106,26}})));
  Modelica.Blocks.Logical.And and2
    annotation (Placement(transformation(extent={{-32,16},{-20,28}})));
  Modelica.Blocks.Logical.LessThreshold    lessThreshold(threshold=100)
    annotation (Placement(transformation(extent={{-94,-26},{-74,-6}})));
equation
  connect(and1.u2,greaterThreshold. y) annotation (Line(points={{-59.2,17.2},
          {-70.6,17.2},{-70.6,14},{-73,14}},
                                          color={255,0,255}));
  connect(Thrust, boostback_thrust.y) annotation (Line(points={{70,42},{50,
          42},{50,22},{43,22}}, color={0,0,127}));
  connect(greaterThreshold1.u, derivative.y)
    annotation (Line(points={{-42,80},{-79.2,80}}, color={0,0,127}));
  connect(greaterThreshold1.y, and1.u1) annotation (Line(points={{-19,80},{
          -8,80},{-8,40},{-64,40},{-64,22},{-59.2,22}}, color={255,0,255}));
  connect(Cutoff.u[1], greaterThreshold1.y) annotation (Line(points={{-24,
          52},{-8,52},{-8,80},{-19,80}}, color={255,0,255}));
  connect(Cutoff.y, product.u1) annotation (Line(points={{-65,52},{-126,52},
          {-126,23.2},{-121.4,23.2}}, color={0,0,127}));
  connect(product.u2, Clock) annotation (Line(points={{-121.4,14.8},{-129.7,
          14.8},{-129.7,14},{-140,14}}, color={0,0,127}));
  connect(product.y, greaterThreshold.u) annotation (Line(points={{-105.3,
          19},{-103.65,19},{-103.65,14},{-96,14}}, color={0,0,127}));
  connect(derivative.u, X_Position)
    annotation (Line(points={{-97.6,80},{-140,80}}, color={0,0,127}));
  connect(and2.u1, and1.y)
    annotation (Line(points={{-33.2,22},{-45.4,22}}, color={255,0,255}));
  connect(and2.y, boostback_thrust.u[1])
    annotation (Line(points={{-19.4,22},{2,22}}, color={255,0,255}));
  connect(lessThreshold.u, Clock) annotation (Line(points={{-96,-16},{-126,
          -16},{-126,14},{-140,14}}, color={0,0,127}));
  connect(lessThreshold.y, and2.u2) annotation (Line(points={{-73,-16},{-42,
          -16},{-42,17.2},{-33.2,17.2}}, color={255,0,255}));
  annotation (Diagram(coordinateSystem(extent={{-140,-60},{60,140}})), Icon(
        coordinateSystem(extent={{-140,-60},{60,140}}), graphics={
        Bitmap(extent={{-110,-40},{42,110}}, fileName=
              "modelica://RocketLanding/Resources/Images/boostback.jpg"),
        Text(
          extent={{-96,124},{40,84}},
          lineColor={0,0,0},
          textString="%name"),
        Rectangle(extent={{-140,140},{60,-60}}, lineColor={0,0,0})}));
end BoostBackController;
