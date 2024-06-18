function n_index = node_index(OPEN,xval,yval)
    %This function returns the index of the location of a node in the list
    %OPEN
    %
    %   Copyright 2009-2010 The MathWorks, Inc.
    xFind = find((OPEN(:,2)==xval));
    yFind = find((OPEN(:,3)==yval));
    n_index = intersect(xFind,yFind);
    % if not in OPEN, then reuturn empty
    % if in OPEN, return the inde x of the node in the list OPEN
end