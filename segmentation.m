function segmentation( X )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
opts = statset('Display','final');
[idx,C] = kmeans(X,4,'Distance','cityblock',...
    'Replicates',5,'Options',opts);
figure;
plot(X(idx==1,1),X(idx==1,2),'r.','MarkerSize',12)
hold on
plot(X(idx==2,1),X(idx==2,2),'b.','MarkerSize',12)
plot(X(idx==3,1),X(idx==3,2),'y.','MarkerSize',12)
plot(X(idx==4,1),X(idx==4,2),'k','MarkerSize',12)
plot(X(idx==5,1),X(idx==5,2),'green.','MarkerSize',12)
plot(X(idx==6,1),X(idx==6,2),'Color',[0.8,0.4,0.1],'MarkerSize',12)
plot(X(idx==7,1),X(idx==7,2),'c.','MarkerSize',12)
plot(X(idx==8,1),X(idx==8,2),'black.','MarkerSize',12)
plot(X(idx==9,1),X(idx==9,2),'magenta.','MarkerSize',12)
plot(X(idx==10,1),X(idx==10,2),'Color',[0.4,0.4,0.4],'MarkerSize',12)
plot(C(:,1),C(:,2),'kx',...
     'MarkerSize',15,'LineWidth',3)
%legend('Cluster 1','Cluster 2','Centroids',...
 %      'Location','NW')

end

