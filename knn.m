function target = knn(train_set,train_labels,test_set,k)
    % train_set:    training samples data,n*d matrix
    % train_labels: training samples' class label,n*1
    % test_set:     testing data
    % target:       class label given by knn
    % k:            the number of neighbors

    
    labels = unique(train_labels); % all different class label
    c = length(labels); % class num
    n = size(train_set,1);

    target = zeros(n,1); % result

    testNum = size(test_set,1);
    %% find label of each test object
    for i = 1 : testNum
        
        %% find the k closest objects in train_set
        dis = zeros(n,1);
        for j = 1 : n
            dis(j) = norm(test_set(i)-train_set(j)); % Euclidean distance
        end
        [d, index] = sort(dis); % sort dis by ascending order, in order to find top-k
        
        %% let the k objects vote the label of the test object
        cnt = zeros(c,1); % appear times of each label
        for j = 1 : k
            ind = find(labels, train_labels(index(j)));
            cnt(ind) = cnt(ind) + 1;
        end
        [maxcnt, max_index] = max(cnt);
        target(i) = labels(max_index);
    end
end
