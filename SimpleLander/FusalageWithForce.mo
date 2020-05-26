within RocketLanding.SimpleLander;
model FusalageWithForce
  extends FusalageInGravity(FirstStage(
      r_0(fixed=false),
      v_0(fixed=false),
      a_0(fixed=false)));
  Modelica.SIunits.Force[3] f;
  Modelica.Mechanics.MultiBody.Forces.WorldForce force
    annotation (Placement(transformation(extent={{-30,6},{-10,26}})));
  Modelica.Blocks.Sources.RealExpression realExpression[3](y=f)
    annotation (Placement(transformation(extent={{-72,4},{-44,28}})));
  Modelica.Mechanics.MultiBody.Visualizers.Ground ground(length=100,
      groundColor={0,166,0})
    annotation (Placement(transformation(extent={{2,-56},{22,-36}})));
  Modelica.Blocks.Interfaces.RealInput throttle
    annotation (Placement(transformation(extent={{-120,-22},{-80,18}})));
  Modelica.Blocks.Interfaces.RealOutput altitude
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  Modelica.Mechanics.MultiBody.Sensors.AbsolutePosition absolutePosition
    annotation (Placement(transformation(extent={{46,-10},{66,10}})));
  Modelica.Blocks.Interfaces.RealOutput velocity
    annotation (Placement(transformation(extent={{90,18},{110,38}})));
  Modelica.Mechanics.MultiBody.Sensors.AbsoluteVelocity absoluteVelocity
    annotation (Placement(transformation(extent={{46,18},{66,38}})));

equation

  when FirstStage.frame_a.r_0[3] <= 0 then
    terminate("done");
  end when;

  f = {0,0,throttle};
  connect(realExpression.y,force. force) annotation (Line(points={{-42.6,16},
          {-32,16}},              color={0,0,127}));
  connect(absolutePosition.r[3], altitude) annotation (Line(points={{67,0.666667},
          {84,0.666667},{84,0},{100,0}}, color={0,0,127}));
  connect(absoluteVelocity.v[3], velocity) annotation (Line(points={{67,28.6667},
          {80,28.6667},{80,28},{100,28}}, color={0,0,127}));
  connect(velocity, velocity) annotation (Line(points={{100,28},{98,28},{98,28},
          {100,28}}, color={0,0,127}));
  connect(force.frame_b, FirstStage.frame_a) annotation (Line(
      points={{-10,16},{0,16},{0,48}},
      color={95,95,95},
      thickness=0.5));
  connect(absoluteVelocity.frame_a, FirstStage.frame_a) annotation (Line(
      points={{46,28},{0,28},{0,48},{-5.55112e-16,48}},
      color={95,95,95},
      thickness=0.5));
  connect(absolutePosition.frame_a, FirstStage.frame_a) annotation (Line(
      points={{46,0},{0,0},{0,48},{-5.55112e-16,48}},
      color={95,95,95},
      thickness=0.5));
end FusalageWithForce;
