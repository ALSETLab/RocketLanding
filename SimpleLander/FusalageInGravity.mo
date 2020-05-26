within RocketLanding.SimpleLander;
model FusalageInGravity
 inner Modelica.Mechanics.MultiBody.World world(label2="z", n(displayUnit="1")=
             {0,0,-1})
        annotation (Placement(transformation(extent={{-60,-56},{-40,-36}})));
      Modelica.Mechanics.MultiBody.Parts.BodyCylinder FirstStage(
        r={0,0,1},
        lengthDirection(displayUnit="1") = {0,0,1},
        r_shape={0,0,0},
        length=48,
        diameter=3.7,
        innerDiameter=0,
        v_0(fixed=false),
        a_0(fixed=false),
        density=300,
        r_0(start={0,0,166000}, fixed=false))
                          annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={0,58})));

      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
end FusalageInGravity;
