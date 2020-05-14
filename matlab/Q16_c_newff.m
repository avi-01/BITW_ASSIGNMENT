%%newff creates a new network with a dialog box.
%%newff(PR,[S1 S2...SNl],{TF1 TF2...TFNl},BTF,BLF,PF) takes,

%%PR -- R x 2 matrix of min and max values for R input elements

%%Si -- Size of ith layer, for Nl layers

%%TFi -- Transfer function of ith layer, default = 'tansig'

%%BTF -- Backpropagation network training function, default = 'traingdx'

%%BLF -- Backpropagation weight/bias learning function, default = 'learngdm'

%%PF -- Performance function, default = 'mse'

%%and returns an N layer feed-forward backprop network.

%%Example
%%Here is a problem consisting of inputs P and targets T that we would like to solve with a network.
P = [0 1 2 3 4 5 6 7 8 9 10];
T = [0 1 2 3 4 3 2 1 2 3 4];

%%Here a two-layer feed-forward network is created. The network's input ranges from [0 to 10]. The first layer has five tansig neurons, the second layer has one purelin neuron. The trainlm network training function is to be used.

net = newff([0 10],[5 1],{'tansig' 'purelin'});

%%Here the network is simulated and its output plotted against the targets.

Y = sim(net,P);
plot(P,T,P,Y,'o')

%%Here the network is trained for 50 epochs. Again the network's output is plotted.

net.trainParam.epochs = 50;
net = train(net,P,T);
Y = sim(net,P);
plot(P,T,P,Y,'o')