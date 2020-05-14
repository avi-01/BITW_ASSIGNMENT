%%Radial basis networks can be used to approximate functions. newrb adds neurons to the hidden layer of a radial basis network until it meets the specified mean squared error goal.
%%net = newrb(P,T,goal,spread,MN,DF) takes two of these arguments and returns a new radial basis network.

% newrb creates a two-layer network. The first layer has radbas neurons, and calculates its weighted inputs with dist and its net input with netprod. The second layer has purelin neurons, and calculates its weighted input with dotprod and its net inputs with netsum. Both layers have biases.
%  
%  Initially the radbas layer has no neurons. The following steps are repeated until the network’s mean squared error falls below goal.
%  
%   1. The network is simulated.
%  
%   2. The input vector with the greatest error is found.
%  
%   3. A radbas neuron is added with weights equal to that vector.
%  
%   4. The purelin layer weights are redesigned to minimize error.

%%Example
%%Here you design a radial basis network, given inputs P and targets T.

P = [1 2 3];
T = [2.0 4.1 5.9];
net = newrb(P,T);

%%The network is simulated for a new input.

P = 1.5;
Y = sim(net,P)