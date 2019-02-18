function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

NotAdmitted = zeros(1,3);

Admitted = zeros(1,3);

for j = 1 : size(X,1)
    if y(j) == 0
        NotAdmitted = [NotAdmitted; X(j,:) y(j)];
    else 
        Admitted = [Admitted; X(j,:) y(j)];
    end
end

plot(NotAdmitted(:,1), NotAdmitted(:,2), 'yo', 'MarkerSize', 7);
plot(Admitted(:,1), Admitted(:,2), 'b+', 'MarkerSize' , 7);






% =========================================================================



hold off;

end
