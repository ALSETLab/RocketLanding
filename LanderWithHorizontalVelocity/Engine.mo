within RocketLanding.LanderWithHorizontalVelocity;
model Engine
  Modelica.SIunits.Force[3] f;
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a
    annotation (Placement(transformation(extent={{82,0},{114,32}})));
  Modelica.Blocks.Interfaces.RealInput z_throttle
    annotation (Placement(transformation(extent={{-120,-66},{-80,-26}}),
        iconTransformation(extent={{-100,-66},{-62,-28}})));
  Modelica.Blocks.Interfaces.RealInput y_throttle
    annotation (Placement(transformation(extent={{-120,-20},{-80,20}}),
        iconTransformation(extent={{-100,-14},{-66,20}})));
  Modelica.Blocks.Interfaces.RealInput x_throttle
    annotation (Placement(transformation(extent={{-120,30},{-80,70}}),
        iconTransformation(extent={{-100,32},{-66,66}})));
  Modelica.Mechanics.MultiBody.Forces.WorldForce force(color={255,165,0},
      diameter=40)
    annotation (Placement(transformation(extent={{56,6},{76,26}})));
  Modelica.Blocks.Sources.RealExpression realExpression[3](y=f)
    annotation (Placement(transformation(extent={{14,4},{42,28}})));
  Modelica.Blocks.Math.Gain x_gain(k=Max_Thrust)
    annotation (Placement(transformation(extent={{-68,44},{-54,58}})));
  Modelica.Blocks.Math.Gain y_gain(k=Max_Thrust)
    annotation (Placement(transformation(extent={{-68,-6},{-54,8}})));
  Modelica.Blocks.Math.Gain z_gain(k=Max_Thrust)
    annotation (Placement(transformation(extent={{-68,-54},{-54,-40}})));

  parameter Real Max_Thrust = 900000;
equation
  f = {x_gain.y,0,z_gain.y};

  connect(realExpression.y,force. force) annotation (Line(points={{43.4,16},{54,
          16}},                   color={0,0,127}));
  connect(force.frame_b, frame_a) annotation (Line(
      points={{76,16},{98,16}},
      color={95,95,95},
      thickness=0.5));
  connect(x_gain.u, x_throttle) annotation (Line(points={{-69.4,51},{-74.7,51},{
          -74.7,50},{-100,50}}, color={0,0,127}));
  connect(y_gain.u, y_throttle) annotation (Line(points={{-69.4,1},{-76.7,1},{-76.7,
          0},{-100,0}}, color={0,0,127}));
  connect(z_gain.u, z_throttle) annotation (Line(points={{-69.4,-47},{-76.7,-47},
          {-76.7,-46},{-100,-46}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Bitmap(extent={{-82,-112},{94,66}}, fileName=
              "modelica://RocketLanding/Resources/Images/engine.png"),
          Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0}),
        Text(
          extent={{-46,96},{54,70}},
          lineColor={0,0,0},
          textString="%name")}),                                 Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Engine;
