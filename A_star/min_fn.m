function i_min = min_fn(OPEN,OPEN_COUNT)
%Function to return the Node with minimum fn
% This function takes the list OPEN as its input and returns the index of the
% node that has the least cost
%
%   Copyright 2009-2010 The MathWorks, Inc.

%Get all nodes that are on the list open
temp_array = [];
k = 1; 
for j = 1:OPEN_COUNT
    if (OPEN(j,1) == 1)
        temp_array(k,:) = [OPEN(j,:) j]; 
        k=k+1;
    end
end
%Get the index of the node of lowest cost
if ~isempty(temp_array)
    [min_val,min_idx]=min(temp_array(:,8)); %Index of the smallest node in temp array
    i_min = temp_array(min_idx,9); %Index of the smallest node in the OPEN array
else
    i_min = -1; %The temp_array is empty i.e No more paths are available.
end