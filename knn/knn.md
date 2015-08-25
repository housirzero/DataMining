##说明

数据来源于kaggle <br />
train.csv	https://www.kaggle.com/c/digit-recognizer/download/train.csv <br />
test.csv	https://www.kaggle.com/c/digit-recognizer/download/test.csv <br />
此处只上传部分样例 <br />
运行 digit_recognizer.m 即可 <br />

##修改

- 将knn.m移动到文件夹knn
- 上传数据样例文件train.csv和test.csv
- 增加文件digit_recognizer.m，调用knn实现手写数字识别
- 修改欧式距离的计算，dis(j) = norm(test_set(i)-train_set(j));  --> dis(j) = norm(test_set(i,:)-train_set(j,:)); 因为test_set(i)是一个元素，test_set(i,:)才是向量
- show_digit() 函数用于显示数据所对应的数字图像，可以直观的对比一下程序判断是否正确
- digit_recognizer.m 中增加了写文件操作，将识别结果写入文件
- 此方法很慢，下一步需要借助PCA

- 20150825 11:41 修改 digit_recognizer.m 中文件的输出格式，输出文件为 submission_knn.csv