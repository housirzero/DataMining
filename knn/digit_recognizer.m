train_data = csvread('train1.csv',1,0);
train_labels = train_data(:,1);
[n, d] = size(train_data);
train_set = train_data(:,2:d);

% test_set = csvread('test.csv',1,0,[1,0,30,783]);
% X = show_digit(train_set(1,:),28,28);
test_set = csvread('test.csv',1,0);
test_labels = knn(train_set,train_labels,test_set,11);

% write to file
n = size(test_labels,1);
fid = fopen('submission_knn.csv', 'w');
fprintf(fid, 'ImageId,Label\r\n');
for i = 1:n
	fprintf(fid, '%g,%g\r\n', i, result(i));
end
fclose(fid);