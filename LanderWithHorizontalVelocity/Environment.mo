within RocketLanding.LanderWithHorizontalVelocity;
model Environment
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape(
    shapeType="cylinder",
    lengthDirection(displayUnit="1") = {0,0,1},
    length=1,
    animation=true,
    color={100,100,100},
    width=150,
    height=150)
    annotation (Placement(transformation(extent={{-20,8},{0,28}})));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed(animation=false, r={10000,
        0,0})
    annotation (Placement(transformation(extent={{-50,6},{-30,26}})));
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape1(
    animation=true,
    width=500,
    shapeType="box",
    lengthDirection(displayUnit="1") = {1,0,0},
    height=1,
    color={0,180,0},
    length=12000)
    annotation (Placement(transformation(extent={{-20,38},{0,58}})));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed1(animation=false, r={0,0,0})
    annotation (Placement(transformation(extent={{-50,36},{-30,56}})));
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape2(
    animation=true,
    shapeType="box",
    lengthDirection(displayUnit="1") = {1,0,0},
    width=1,
    height=167000,
    color={0,128,255},
    length=12000)
    annotation (Placement(transformation(extent={{-20,70},{0,90}})));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed2(animation=false, r={0,250,
        83500})
    annotation (Placement(transformation(extent={{-50,68},{-30,88}})));
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape3(
    animation=true,
    shapeType="cylinder",
    lengthDirection(displayUnit="1") = {0,0,1},
    width=1,
    height=1,
    length=5,
    color={139,69,19})
    annotation (Placement(transformation(extent={{172,14},{192,34}})));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed3(animation=false, r={9930,
        -100,0})
    annotation (Placement(transformation(extent={{138,14},{158,34}})));
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape4(
    animation=true,
    lengthDirection(displayUnit="1") = {0,0,1},
    shapeType="cone",
    color={0,128,0},
    width=5,
    length=10,
    height=5)
    annotation (Placement(transformation(extent={{172,48},{192,68}})));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed4(animation=false, r={9930,
        -100,5})
    annotation (Placement(transformation(extent={{136,48},{156,68}})));
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape5(
    animation=true,
    shapeType="cylinder",
    lengthDirection(displayUnit="1") = {0,0,1},
    width=1,
    height=1,
    length=5,
    color={139,69,19})
    annotation (Placement(transformation(extent={{88,10},{108,30}})));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed5(animation=false, r={10130,
        0,0})
    annotation (Placement(transformation(extent={{58,10},{78,30}})));
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape6(
    animation=true,
    lengthDirection(displayUnit="1") = {0,0,1},
    shapeType="cone",
    color={0,128,0},
    width=5,
    length=10,
    height=5)
    annotation (Placement(transformation(extent={{90,44},{110,64}})));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed6(animation=false, r={10130,
        0,5})
    annotation (Placement(transformation(extent={{56,44},{76,64}})));
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape7(
    animation=true,
    shapeType="cylinder",
    lengthDirection(displayUnit="1") = {0,0,1},
    width=1,
    height=1,
    length=5,
    color={139,69,19})
    annotation (Placement(transformation(extent={{132,-72},{152,-52}})));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed7(animation=false, r={9980,
        100,0})
    annotation (Placement(transformation(extent={{98,-72},{118,-52}})));
  Modelica.Mechanics.MultiBody.Visualizers.FixedShape fixedShape8(
    animation=true,
    lengthDirection(displayUnit="1") = {0,0,1},
    shapeType="cone",
    color={0,128,0},
    width=5,
    length=10,
    height=5)
    annotation (Placement(transformation(extent={{132,-38},{152,-18}})));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed8(animation=false, r={9980,
        100,5})
    annotation (Placement(transformation(extent={{96,-38},{116,-18}})));
equation 
  connect(fixed.frame_b, fixedShape.frame_a) annotation (Line(
      points={{-30,16},{-26,16},{-26,18},{-20,18}},
      color={95,95,95},
      thickness=0.5));
  connect(fixed1.frame_b, fixedShape1.frame_a) annotation (Line(
      points={{-30,46},{-26,46},{-26,48},{-20,48}},
      color={95,95,95},
      thickness=0.5));
  connect(fixed2.frame_b, fixedShape2.frame_a) annotation (Line(
      points={{-30,78},{-26,78},{-26,80},{-20,80}},
      color={95,95,95},
      thickness=0.5));
  connect(fixed3.frame_b, fixedShape3.frame_a) annotation (Line(
      points={{158,24},{172,24}},
      color={95,95,95},
      thickness=0.5));
  connect(fixed4.frame_b, fixedShape4.frame_a) annotation (Line(
      points={{156,58},{172,58}},
      color={95,95,95},
      thickness=0.5));
  connect(fixed5.frame_b, fixedShape5.frame_a) annotation (Line(
      points={{78,20},{88,20}},
      color={95,95,95},
      thickness=0.5));
  connect(fixed6.frame_b, fixedShape6.frame_a) annotation (Line(
      points={{76,54},{90,54}},
      color={95,95,95},
      thickness=0.5));
  connect(fixed7.frame_b, fixedShape7.frame_a) annotation (Line(
      points={{118,-62},{132,-62}},
      color={95,95,95},
      thickness=0.5));
  connect(fixed8.frame_b, fixedShape8.frame_a) annotation (Line(
      points={{116,-28},{132,-28}},
      color={95,95,95},
      thickness=0.5));
  annotation (Diagram(coordinateSystem(extent={{-60,-100},{200,120}})),
      Icon(coordinateSystem(extent={{-60,-100},{200,120}}), graphics={
          Bitmap(extent={{-80,-96},{218,90}}, fileName=
              "modelica://FinalProject/environment.jpg"), Text(
          extent={{8,116},{134,106}},
          lineColor={0,0,0},
          textString="%name")}));
end Environment;






