within RocketLanding.LanderWithHorizontalVelocity;
model TiltFusalageInGravity
  inner Modelica.Mechanics.MultiBody.World world(label2="z", n(displayUnit="1")=
         {0,0,-1})
    annotation (Placement(transformation(extent={{-60,-56},{-40,-36}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder FirstStage(
    length=48,
    diameter=3.7,
    innerDiameter=0,
    a_0(fixed=false),
    angles_fixed=true,
    lengthDirection(displayUnit="1") = {0,0,1},
    r_shape={0,0,0},
    r={48,0,0},
    r_0(start={0,0,166000}, fixed=true),
    density=300,
    v_0(fixed=true, start={293,0,0}),
    angles_start={0,-1.3962634015955,0})
                      annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={0,34})));


  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end TiltFusalageInGravity;
