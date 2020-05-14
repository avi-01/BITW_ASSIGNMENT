%%k-means clustering is a partitioning method.
%%The function kmeans partitions data into k mutually exclusive clusters and returns the index of the cluster
%%to which it assigns each observation. kmeans treats each observation in your data as an object that has a location in space.
%%The function finds a partition in which objects within each cluster are as close to each other as possible, and as far from objects
%%in other clusters as possible. You can choose a distance metric to use with kmeans based on attributes of your data. Like many clustering
%%methods, k-means clustering requires you to specify the number of clusters k before clustering.

load fisheriris
X = meas(:,3:4);

figure;
plot(X(:,1),X(:,2),'k*','MarkerSize',5);
title 'Fisher''s Iris Data';
xlabel 'Petal Lengths (cm)'; 
ylabel 'Petal Widths (cm)';

