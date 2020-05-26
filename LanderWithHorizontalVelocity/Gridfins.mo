within RocketLanding.LanderWithHorizontalVelocity;
model Gridfins
  Modelica.SIunits.Force[3] f;
  parameter Real X_Torque = 0;
  parameter Real Y_Torque = 0;
  parameter Real Z_Torque = 0;


  Modelica.Blocks.Sources.RealExpression realExpression[3](y=f)
    annotation (Placement(transformation(extent={{20,4},{48,28}})));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a
    annotation (Placement(transformation(extent={{86,0},{118,32}}),
        iconTransformation(extent={{86,0},{118,32}})));
  Modelica.Blocks.Interfaces.RealInput angle
    annotation (Placement(transformation(extent={{-120,-20},{-80,20}}),
        iconTransformation(extent={{-100,-16},{-68,16}})));
  Modelica.Mechanics.MultiBody.Forces.WorldTorque torque(
    diameter=100,
    color={255,255,0},
    animation=false)
    annotation (Placement(transformation(extent={{56,6},{76,26}})));
  Modelica.Blocks.Math.Sin sin
    annotation (Placement(transformation(extent={{-52,-10},{-32,10}})));
  Modelica.Blocks.Math.Gain gain(k=4)
    annotation (Placement(transformation(extent={{-72,-6},{-60,6}})));
  Modelica.Blocks.Math.Gain real_torque(k=Max_Torque)
    annotation (Placement(transformation(extent={{-20,-6},{-8,6}})));
  parameter Real Max_Torque=10000000
    "Gain value multiplied with input signal";
equation 
  f = {real_torque.y*X_Torque,real_torque.y*Y_Torque,real_torque.y*Z_Torque};
  connect(torque.frame_b, frame_a) annotation (Line(
      points={{76,16},{102,16}},
      color={95,95,95},
      thickness=0.5));
  connect(realExpression.y,torque.torque);
  connect(gain.u, angle)
    annotation (Line(points={{-73.2,0},{-100,0}}, color={0,0,127}));
  connect(gain.y,sin. u)
    annotation (Line(points={{-59.4,0},{-54,0}}, color={0,0,127}));
  connect(real_torque.u, sin.y)
    annotation (Line(points={{-21.2,0},{-31,0}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Bitmap(extent={{-90,-120},{94,68}},fileName="modelica://FinalProject/gridfin.png"),
        Text(
          extent={{-62,92},{56,66}},
          lineColor={0,0,0},
          textString="%name"),
        Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0})}),
      Diagram(coordinateSystem(preserveAspectRatio=false)));
end Gridfins;

