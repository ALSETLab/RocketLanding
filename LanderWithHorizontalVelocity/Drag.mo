within RocketLanding.LanderWithHorizontalVelocity;
model Drag
  import SI = Modelica.SIunits;

  parameter Real CoefficientofDrag = 0.5;
  parameter Real Area =  10.75;
  SI.Density AirDensity;
  Modelica.Blocks.Interfaces.RealInput Velocity
    annotation (Placement(transformation(extent={{-100,-64},{-60,-24}}),
        iconTransformation(extent={{-100,-64},{-78,-42}})));
  Modelica.Blocks.Interfaces.RealOutput Drag
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));

  Modelica.Blocks.Interfaces.RealInput Altitude annotation (Placement(
        transformation(extent={{-100,38},{-60,78}}), iconTransformation(extent={{-100,38},
            {-78,60}})));
equation 
  AirDensity = max(-(Altitude*0.00013)+1.2,0);
  Drag = (CoefficientofDrag*AirDensity*Velocity^2*Area) * (1/900000);

  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Bitmap(extent={{-80,-66},{96,54}}, fileName=
              "modelica://FinalProject/drag.jpg"),
        Text(
          extent={{-46,96},{54,70}},
          lineColor={0,0,0},
          textString="%name"),
        Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0})}),
                                                                 Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Drag;








