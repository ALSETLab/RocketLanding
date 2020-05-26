within RocketLanding.LanderWithHorizontalVelocity;
model Controller
  Modelica.Blocks.Interfaces.RealInput altitude_z annotation (Placement(
        transformation(extent={{-280,34},{-240,74}}), iconTransformation(
          extent={{-180,-12},{-156,12}})));
  Modelica.Blocks.Interfaces.RealOutput z_throttle
    annotation (Placement(transformation(extent={{100,-70},{120,-50}}),
        iconTransformation(extent={{100,-70},{120,-50}})));
  Modelica.Blocks.Interfaces.RealInput x_tilt annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-96,-100}), iconTransformation(
        extent={{-14,-14},{14,14}},
        rotation=90,
        origin={-60,-86})));
  Modelica.Blocks.Interfaces.RealOutput x_throttle
    annotation (Placement(transformation(extent={{100,50},{120,70}}),
        iconTransformation(extent={{100,50},{120,70}})));
  Modelica.Blocks.Interfaces.RealOutput y_throttle
    annotation (Placement(transformation(extent={{100,-10},{120,10}}),
        iconTransformation(extent={{100,-10},{120,10}})));
  Modelica.Blocks.Interfaces.RealInput y_tilt annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-52,-100}),
                          iconTransformation(
        extent={{-15,-15},{15,15}},
        rotation=90,
        origin={-1,-85})));
  Modelica.Blocks.Interfaces.RealInput z_tilt annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-12,-100}),iconTransformation(
        extent={{-16,-16},{16,16}},
        rotation=90,
        origin={60,-84})));
  Modelica.Blocks.Math.Gain gain1(k=1)
    annotation (Placement(transformation(extent={{36,-72},{48,-60}})));
  Modelica.Blocks.Sources.Constant const(k=0)
    annotation (Placement(transformation(extent={{62,-6},{74,6}})));
  Modelica.Blocks.Math.Product product
    annotation (Placement(transformation(extent={{60,50},{80,70}})));
  Modelica.Blocks.Math.Product product1
    annotation (Placement(transformation(extent={{60,-70},{80,-50}})));
  Modelica.Blocks.Math.Gain gain2(k=1)
    annotation (Placement(transformation(extent={{40,48},{52,60}})));
  Modelica.Blocks.Math.Sin sin1
    annotation (Placement(transformation(extent={{12,44},{32,64}})));
  Modelica.Blocks.Math.Cos cos1
    annotation (Placement(transformation(extent={{10,-76},{30,-56}})));
  Modelica.Blocks.Interfaces.RealOutput gridfin_Y_angle annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-54,150}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-60,150})));
  GridFinController gridFinController annotation (Placement(transformation(
          rotation=0, extent={{-74,78},{-34,118}})));
  Modelica.Blocks.Sources.Clock clock
    annotation (Placement(transformation(extent={{-256,-34},{-236,-14}})));
  BoostBackController boostBackController annotation (Placement(
        transformation(rotation=0, extent={{-202,-42},{-158,2}})));
  EntryController entryController annotation (Placement(transformation(
          rotation=0, extent={{-202,-90},{-158,-46}})));
  Modelica.Blocks.Math.Add3 totalThrust
    annotation (Placement(transformation(extent={{-128,-42},{-108,-22}})));
  LandingController landingController annotation (Placement(transformation(
          rotation=0, extent={{-202,10},{-158,54}})));
  Modelica.Blocks.Interfaces.RealOutput gridfin_X_angle
                                                       annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-76,150}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-120,150})));
  Modelica.Blocks.Interfaces.RealOutput gridfin_Z_angle
                                                       annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-34,150}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={0,150})));
  Modelica.Blocks.Interfaces.RealInput X_Position annotation (Placement(
        transformation(extent={{-280,84},{-240,124}}), iconTransformation(
          extent={{-180,52},{-156,76}})));
  Modelica.Blocks.Interfaces.RealOutput Throttle annotation (Placement(
        transformation(extent={{100,92},{120,112}}), iconTransformation(
          extent={{100,92},{120,112}})));
  Modelica.Blocks.Math.Add Drag_Effects
    annotation (Placement(transformation(extent={{-92,-46},{-74,-28}})));
  Modelica.Blocks.Interfaces.RealInput Drag annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-128,-100}), iconTransformation(
        extent={{-14,-14},{14,14}},
        rotation=90,
        origin={-132,-86})));
equation
  connect(y_throttle, y_throttle)
    annotation (Line(points={{110,0},{110,0}}, color={0,0,127}));
  connect(const.y, y_throttle)
    annotation (Line(points={{74.6,0},{110,0}}, color={0,0,127}));
  connect(product1.u2, gain1.y)
    annotation (Line(points={{58,-66},{48.6,-66}}, color={0,0,127}));
  connect(gain2.y, product.u2)
    annotation (Line(points={{52.6,54},{58,54}}, color={0,0,127}));
  connect(cos1.y, gain1.u) annotation (Line(points={{31,-66},{34,-66},{34,
          -66},{34.8,-66}}, color={0,0,127}));
  connect(cos1.u, y_tilt)
    annotation (Line(points={{8,-66},{-52,-66},{-52,-100}},
                                                        color={0,0,127}));
  connect(sin1.y, gain2.u)
    annotation (Line(points={{33,54},{38.8,54}}, color={0,0,127}));
  connect(sin1.u, y_tilt)
    annotation (Line(points={{10,54},{-52,54},{-52,-100}},
                                                       color={0,0,127}));
  connect(product.y, x_throttle) annotation (Line(points={{81,60},{90,60},{
          90,60},{110,60}}, color={0,0,127}));
  connect(product1.y, z_throttle)
    annotation (Line(points={{81,-60},{110,-60}}, color={0,0,127}));
  connect(gridFinController.Y_Tilt, y_tilt)
    annotation (Line(points={{-52,80},{-52,-100}}, color={0,0,127}));
  connect(gridFinController.Y_GridFinAngle, gridfin_Y_angle) annotation (
      Line(points={{-53.6,120},{-54,120},{-54,150}}, color={0,0,127}));
  connect(clock.y, boostBackController.Clock) annotation (Line(points={{
          -235,-24},{-226,-24},{-226,-20},{-214,-20},{-214,-25.72},{-202,
          -25.72}}, color={0,0,127}));
  connect(clock.y, entryController.Clock) annotation (Line(points={{-235,-24},
          {-226,-24},{-226,-66.68},{-202,-66.68}}, color={0,0,127}));
  connect(product1.u1, product.u1) annotation (Line(points={{58,-54},{50,
          -54},{50,-32},{-14,-32},{-14,86},{46,86},{46,66},{58,66}}, color=
          {0,0,127}));
  connect(landingController.Clock, boostBackController.Clock) annotation (
      Line(points={{-202,13.96},{-226,13.96},{-226,-20},{-214,-20},{-214,
          -25.72},{-202,-25.72}}, color={0,0,127}));
  connect(entryController.Thrust, totalThrust.u3) annotation (Line(points={
          {-155.8,-68},{-144,-68},{-144,-40},{-130,-40}}, color={0,0,127}));
  connect(boostBackController.Thrust, totalThrust.u2) annotation (Line(
        points={{-155.8,-19.56},{-150,-19.56},{-150,-32},{-130,-32}}, color=
         {0,0,127}));
  connect(landingController.Altitude, altitude_z) annotation (Line(points={{-202,
          27.16},{-202,28},{-236,28},{-236,54},{-260,54}},       color={0,0,
          127}));
  connect(landingController.Thrust, totalThrust.u1) annotation (Line(points=
         {{-155.8,20.56},{-140,20.56},{-140,-24},{-130,-24}}, color={0,0,
          127}));
  connect(x_tilt, gridFinController.X_Tilt) annotation (Line(points={{-96,
          -100},{-96,-70},{-66,-70},{-66,80},{-65.6,80}}, color={0,0,127}));
  connect(z_tilt, gridFinController.Z_Tilt) annotation (Line(points={{-12,
          -100},{-12,-74},{-40.8,-74},{-40.8,80}}, color={0,0,127}));
  connect(gridFinController.X_GridFinAngle, gridfin_X_angle) annotation (
      Line(points={{-67.6,120},{-68,120},{-68,128},{-76,128},{-76,150}},
        color={0,0,127}));
  connect(gridFinController.Z_GridFinAngle, gridfin_Z_angle) annotation (
      Line(points={{-42,120},{-42,126},{-34,126},{-34,150}}, color={0,0,127}));
  connect(gridFinController.Clock, boostBackController.Clock) annotation (
      Line(points={{-72,92.8},{-136,92.8},{-136,92},{-226,92},{-226,-20},{
          -214,-20},{-214,-25.72},{-202,-25.72}}, color={0,0,127}));
  connect(X_Position, gridFinController.X_Position) annotation (Line(points=
         {{-260,104},{-168,104},{-168,103.6},{-72,103.6}}, color={0,0,127}));
  connect(boostBackController.X_Position, X_Position) annotation (Line(
        points={{-202,-11.2},{-212,-11.2},{-212,104},{-260,104}}, color={0,
          0,127}));
  connect(Throttle, Throttle)
    annotation (Line(points={{110,102},{110,102}}, color={0,0,127}));
  connect(Drag_Effects.u1, totalThrust.y) annotation (Line(points={{-93.8,
          -31.6},{-100.8,-31.6},{-100.8,-32},{-107,-32}}, color={0,0,127}));
  connect(Drag_Effects.y, product.u1) annotation (Line(points={{-73.1,-37},
          {-14,-37},{-14,86},{46,86},{46,66},{58,66}}, color={0,0,127}));
  connect(Throttle, totalThrust.y) annotation (Line(points={{110,102},{-26,
          102},{-26,-4},{-102,-4},{-102,-32},{-107,-32}}, color={0,0,127}));
  connect(Drag, Drag_Effects.u2) annotation (Line(points={{-128,-100},{-128,
          -52},{-100,-52},{-100,-42.4},{-93.8,-42.4}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-260,
            -100},{100,140}}),                                  graphics={
          Bitmap(extent={{-144,-88},{82,126}},
                                             fileName="modelica://FinalProject/primary_flight_control.jpg"),
          Rectangle(extent={{-180,140},{100,-100}}, lineColor={0,0,0}),
        Text(
          extent={{-162,130},{68,88}},
          lineColor={0,0,0},
          textString="%name")}),                                 Diagram(
        coordinateSystem(preserveAspectRatio=false, extent={{-260,-100},{
            100,140}})));
end Controller;
