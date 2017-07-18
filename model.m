function f = model(t,Y)
mass = .0427; %kilograms
initialPSI = 20; %pressure in PSI
initialPA = initialPSI*6894.76; %pressure in kilopascals
atmosphericPressure = 101325; %pressure in kilopascals
initialVolume = .0074; %volume, including tubes, at time t = 0 in m^3
bottleVolume = .0074; %cubic meters
nRT = initialPA * bottleVolume; %ideal gas law
radius = 0.0285; %meters
surfaceArea = pi*radius^2; %cross section of ball
g = 9.8; %m/s^2 

f(1,1) = Y(2);
f(2,1) = (nRT*surfaceArea) / (mass * (initialVolume + surfaceArea * Y(1)));
f(2,1) = f(2,1) - atmosphericPressure * surfaceArea / mass;
f(2,1) = f(2,1) - g * sin(pi / 4);
end
