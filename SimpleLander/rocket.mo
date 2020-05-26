within RocketLanding.SimpleLander;
model rocket
 type Inertia=Real(unit="Kg");
      type Position=Real(unit="m");
      type Velocity=Real(unit="m/s");
      type Force=Real(unit="N");
      type BurnRate=Real(unit="kg/m3");
      type Density=Real(unit="kg/s");
      type Area=Real(unit="m2");

      parameter Inertia EmptyRocket = 100;
      parameter Inertia InitialFuelMass = 100;
      parameter BurnRate FuelBurnRate= 10;
      parameter Force Fengine = 2500;
      parameter Density rho = 1.225;
      parameter Area S = 1.632;
      parameter Real cd = 0.2;

      Position y;
      Velocity v;
      Inertia rocket_mass;
      Inertia fuel_mass;
      Force Fnet;
      Force Fgravity;
      Force Fdrag;

      Boolean EngineOn;
      Boolean Ascending;
      Real qbar;

initial equation
      y=0;
      v=0;
      fuel_mass = InitialFuelMass;

equation
      EngineOn = (fuel_mass > 0);
      Ascending = (v >= 0);

      Fnet = if EngineOn then Fengine + Fgravity + Fdrag else Fgravity + Fdrag;
      Fgravity = rocket_mass * (-9.81);
      qbar = 0.5 * rho * v^2;
      Fdrag = if Ascending then  -cd * qbar * S else cd * qbar * S;
      v= der(y);
      der(v) = Fnet / rocket_mass;
      rocket_mass = EmptyRocket + fuel_mass;
      der(fuel_mass) = if EngineOn then -FuelBurnRate else 0;

      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
end rocket;
