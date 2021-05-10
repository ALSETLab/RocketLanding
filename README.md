# Retrograde Rocket Landing Modelica Library
The rocket landing library features examples and visualization of a retrograde rocket landing, validated against real data. The corresponding models are also included in the library.

### Background
This library was created as part of a student course project from the Modeling and Simulation for Cyber-Physical Systems course at RPI. The final presentation for the project is here: https://www.youtube.com/watch?v=M0Ss0BvqkQk

### Library components
After downloading and unzipping the code, open the library using the file ``RocketLanding/package.mo``. The library has three main subpackages:
1. SimpleLander
2. LanderWithHorizontalVelocity
3. LanderWithVisualization

The ``SimpleLander`` package contains models for the simple rocket and its controls. The rocket is defined in this package, whic calculates the force and throttle of the rocket over time. Other simple controls are also included in this package for the velocity, throttle, and position.

The ``LanderWithHorizontalVelocity`` package contains all of the models to be used in the ``RetrogradeRocketLanding`` model. All of the components are shown in the retorgrade rocket landing image below. It consists of the gridfins of the rocket, various controllers from the rocket, and the fuel injection/burning of the rocket. Another notable feature is the environment is defined, so the rocket landing is simulated in a real life environment with aerodynamic considerations such as drag.
![Retrograde rocket landing](https://github.com/ALSETLab/RocketLanding/blob/master/Resources/Images/RocketModel.JPG)

The ``LanderWithVisualization`` package contains all of the models to be used in the ``RetrogradeRocketLanding`` model. All of the components are shown in the retorgrade rocket landing image below. It consists of the gridfins of the rocket, various controllers from the rocket, and the fuel injection/burning of the rocket. Another notable feature is the environment is defined, so the rocket landing is simulated in a real life environment with aerodynamic considerations such as drag. This subpackage simulate the same rocket as shown in the Retrograde rocket landing image, but now the DLR Visualization library is used to show the rocket in a virtual reality environment.

The following libraries are required to run the models with visualization:
  - DLR Visualization library

## Copyright
(c) Christian Canham, Meaghan Podlaski, and Luigi Vanfretti. Rensselaer Polytechnic Institute, Troy, NY.

    

