# KoreaStockData
3028 stocks on South Korea stock market from 2008/01/02 to 2020/06/30.
Each stock have 6 basic features consisting of (open, high, low, close, volume, num_of_shares).
We collected data from https://investing.com and https://finance.yahoo.com/.
* Number of stocks: 3,028   
* Number of dates: 3,089   
* Number of features: 6

## Tensor Data
Due to the size of data, we upload tensor data to Google Drive.
* [\[Download\]](https://drive.google.com/file/d/1YBpYfvo7qZzE2Hu0cH4OCEs0TeQCAlgq/view?usp=sharing) Numpy array of the size  (3028, 3089, 6) for python.
* [\[Download\]](https://drive.google.com/file/d/1Q0k7EeHEvNc1Rcl7sYNbnoVxw_mie6VA/view?usp=sharing) Dense tensor data of the size (3028, 3089, 6) for matlab.
* [\[Download\]](https://drive.google.com/file/d/1akh72wwx6iMjYozlpgSCasBs0nIT8Exq/view?usp=sharing) Sparse tensor data of the size (3028, 3089, 6). The number of entries is 37,607,688 (577,484 entries are zero among them). Note that the start index is 0. When you read data in matlab code, please add 1 to every index.

## Additional Information
We provide stock table, feature dictionary, and date dictionary.
In `data` directory, there are three files. 
* `stock_table`: stock table. We provide 7 fields for each stock: (index, symbol, name, description, sector, from date, to date).
* `feature_dic`: feature dictionary (index-feature pairs).
* `date_dic`: date dictionary (index-date pairs).

### Missing Entires in Stock Table
There are several missing entries in stock table, denoted as "No Information".
If an entry of "name" field of a stock is "No Information", it may be a delisted stock.

## Demo
We provide simple codes to read tensor data and information related data. Please check how to read data in `demo_python` and `demo_matlab` directories.

### Requirements

#### MATLAB
In matlab code, Tensor Toolbox is required to get a sparse tensor (available at https://www.tensortoolbox.org/).

#### PYTHON
In python code, `numpy` and `pandas` are required to read tensor data and additional information data.


## Citation
Please cite the following if you use resources in this repository:

```TeX
@inproceedings{JangK21,
  author    = {Jun{-}Gi Jang and U Kang},
  title     = {Fast and Memory-Efficient Tucker Decomposition for Answering Diverse Time Range Queries},
  booktitle = {KDD},
  year      = {2021},
}
```
