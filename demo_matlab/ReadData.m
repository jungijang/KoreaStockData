
%% Read sparse data and transform it into a sparse tensor
data_table = table2array(readtable('../data/stock_coo_data', 'Delimiter', '\t'));
sparse_stock_tensor = sptensor(data_table(:,1:end-1)+1, data_table(:,end));

%% Read a dense tensor
dense_stock_tensor = load('../../stock_dense_matlab.mat').x;

%% Read Information
stock_table = readtable('../data/stock_table', 'Delimiter', '\t');
feature_table = readtable('../data/feature_dic', 'Delimiter', '\t');
date_table = readtable('../data/date_dic', 'Delimiter', '\t');