within RocketLanding.LanderWithVisualization;
model FuelInjector

  Modelica.Fluid.Sources.Boundary_pT Liquid_Oxygen(
    use_p_in=false,
    use_T_in=false,
    use_X_in=false,
    use_C_in=false,
    redeclare package Medium =
        Modelica.Media.Water.ConstantPropertyLiquidWater,
    nPorts=1,
    p(displayUnit="MPa") = 9700000) annotation (Placement(transformation(
        extent={{-18,-8},{18,8}},
        rotation=270,
        origin={44,88})));

  Modelica.Fluid.Pipes.StaticPipe pipe(
    redeclare package Medium =
        Modelica.Media.Water.ConstantPropertyLiquidWater,
    diameter=0.1,
    length=1,
    height_ab=1)  annotation (Placement(transformation(
        extent={{-10,-11},{10,11}},
        rotation=270,
        origin={44,-31})));

  Modelica.Fluid.Pipes.StaticPipe pipe1(
    redeclare package Medium =
        Modelica.Media.Water.ConstantPropertyLiquidWater,
    length=40,
    diameter=0.1,
    height_ab=40) annotation (Placement(transformation(
        extent={{-10,-11},{10,11}},
        rotation=270,
        origin={44,51})));

  Modelica.Fluid.Valves.ValveLinear LOX_valve(
    redeclare package Medium =
        Modelica.Media.Water.ConstantPropertyLiquidWater,
    m_flow_nominal=100,
    dp_nominal(displayUnit="MPa") = 9700000) annotation (Placement(
        transformation(
        extent={{-10,10},{10,-10}},
        rotation=270,
        origin={44,0})));

  Modelica.Blocks.Interfaces.RealInput Thrust_Control(min=0, max=1) annotation (
     Placement(transformation(rotation=0, extent={{-31,-11},{-12,8}}),
        iconTransformation(extent={{-31,-11},{-12,8}})));
  Modelica.Fluid.Sources.FixedBoundary ambient(
    redeclare package Medium =
        Modelica.Media.Water.ConstantPropertyLiquidWater,
    nPorts=1,
    p=100000) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={44,-64})));

  Modelica.Blocks.Sources.RealExpression LOX_Consumption(y=LOX_valve.V_flow)
    annotation (Placement(transformation(extent={{104,22},{132,46}})));
  Modelica.Blocks.Continuous.Integrator LOX_Total_Volume_Consumption
    annotation (Placement(transformation(extent={{142,24},{162,44}})));
  Modelica.Fluid.Sources.Boundary_pT Kerosene_RP1(
    use_p_in=false,
    use_T_in=false,
    use_X_in=false,
    use_C_in=false,
    redeclare package Medium =
        Modelica.Media.Water.ConstantPropertyLiquidWater,
    nPorts=1,
    p(displayUnit="MPa") = 9700000) annotation (Placement(transformation(
        extent={{-17,-8},{17,8}},
        rotation=270,
        origin={84,89})));
  Modelica.Fluid.Pipes.StaticPipe pipe2(
    redeclare package Medium =
        Modelica.Media.Water.ConstantPropertyLiquidWater,
    diameter=0.1,
    length=1,
    height_ab=1)  annotation (Placement(transformation(
        extent={{-10,-11},{10,11}},
        rotation=270,
        origin={84,-31})));
  Modelica.Fluid.Pipes.StaticPipe pipe3(
    redeclare package Medium =
        Modelica.Media.Water.ConstantPropertyLiquidWater,
    length=40,
    diameter=0.1,
    height_ab=40) annotation (Placement(transformation(
        extent={{-10,-11},{10,11}},
        rotation=270,
        origin={84,51})));
  Modelica.Fluid.Valves.ValveLinear RP1_Valve(
    redeclare package Medium =
        Modelica.Media.Water.ConstantPropertyLiquidWater,
    dp_nominal(displayUnit="MPa") = 9700000,
    m_flow_nominal=40) annotation (Placement(transformation(
        extent={{-10,10},{10,-10}},
        rotation=270,
        origin={84,18})));
  Modelica.Fluid.Sources.FixedBoundary ambient1(
    redeclare package Medium =
        Modelica.Media.Water.ConstantPropertyLiquidWater,
    nPorts=1,
    p=100000) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={84,-66})));
  Modelica.Blocks.Sources.RealExpression RP1_Consumption(y=RP1_Valve.V_flow)
    annotation (Placement(transformation(extent={{102,-32},{130,-8}})));
  Modelica.Blocks.Continuous.Integrator RP1_Total_Volume_Consumption
    annotation (Placement(transformation(extent={{140,-30},{160,-10}})));
equation 
  connect(pipe1.port_a, Liquid_Oxygen.ports[1])
    annotation (Line(points={{44,61},{44,70}}, color={0,127,255}));
  connect(LOX_valve.port_a, pipe1.port_b)
    annotation (Line(points={{44,10},{44,41}}, color={0,127,255}));
  connect(LOX_valve.port_b, pipe.port_a)
    annotation (Line(points={{44,-10},{44,-21}}, color={0,127,255}));
  connect(Thrust_Control, LOX_valve.opening) annotation (Line(points={{-21.5,
          -1.5},{-6,-1.5},{-6,0},{36,0}},       color={0,0,127}));
  connect(pipe.port_b, ambient.ports[1])
    annotation (Line(points={{44,-41},{44,-54}}, color={0,127,255}));
  connect(LOX_Total_Volume_Consumption.u, LOX_Consumption.y)
    annotation (Line(points={{140,34},{133.4,34}}, color={0,0,127}));
  connect(pipe3.port_a, Kerosene_RP1.ports[1])
    annotation (Line(points={{84,61},{84,72}},   color={0,127,255}));
  connect(RP1_Valve.port_a, pipe3.port_b)
    annotation (Line(points={{84,28},{84,41}},   color={0,127,255}));
  connect(RP1_Valve.port_b, pipe2.port_a)
    annotation (Line(points={{84,8},{84,-21}},   color={0,127,255}));
  connect(pipe2.port_b, ambient1.ports[1])
    annotation (Line(points={{84,-41},{84,-56}},   color={0,127,255}));
  connect(RP1_Valve.opening, LOX_valve.opening) annotation (Line(points={{76,18},
          {36,18},{36,16},{-6,16},{-6,0},{36,0},{36,1.55431e-15}},
                                                           color={0,0,127}));
  connect(RP1_Total_Volume_Consumption.u, RP1_Consumption.y)
    annotation (Line(points={{138,-20},{131.4,-20}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-50,-110},{240,110}})), Icon(
        coordinateSystem(extent={{-50,-110},{240,110}}), graphics={
        Bitmap(extent={{10,-98},{216,70}}, fileName=
              "modelica://FinalProject/Fuel_Injector.png"),
        Text(
          extent={{-6,108},{194,78}},
          lineColor={0,0,0},
          textString="%name"),
        Rectangle(extent={{-50,110},{240,-110}}, lineColor={0,0,0})}));
end FuelInjector;








