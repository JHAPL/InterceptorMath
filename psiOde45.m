time = 0:.001:1;
initialConditions = [0,0]; %[velocity,x]
[t,Y] = ode45(@(t,Y) model(t,Y),time,initialConditions);
paths = Y;
lengthOfTube = 2; %meters
 
for i = 1:length(paths)
if paths(i,1) > lengthOfTube
    paths(i,:)
    break;
end 
end
v =  paths(i,2);
mph = v * 2.23694
