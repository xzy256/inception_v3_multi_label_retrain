### 要求

[TensorFlow 1.1.0](https://github.com/tensorflow/tensorflow/releases/tag/v1.1.0) 

所有的图片需是 JPEG 格式.

### 文件说明
`retrain.py`：重训练的代码
`eval_retrain.sh`: 重训练执行脚本，里面含有参数
'images'：包含所有的图片，共3个类，boat、junk、carrier，每个类50张图片
`label_image_v1.py`：测试训练模型的效果，版本较新
`label_image_v0.py`：测试训练模型的效果，旧版
`model_dir`：inception v3的模型数据
`image_labels_dir`：放置所有的`img_filename.jpg.txt`
`test.jpg`：测试图片
`retrained_labels.txt`：数据集的种类名称，一行一个

### 用途
我们知道，inception训练的分类有1000种，本工程旨在inception v3的基础框架，在自己的数据
集上训练数据，让其适用于具体的数据集，不同于迁移学习

#### 存放图片的目录
1. 创建 `images` 目录，再创建子目录`multi-label`存放所有的图片，不要分类存放


#### 数据准备工作
1. 需要对每张`<image_file_name.jpg>` 文件生成 `<image_file_name.jpg>.txt`  

   执行`getclass.sh`文件生成相应的txt文件。假设现在我有许多船的照片，
   临时创建一个boat目录，存放所有的图片，将getclass.sh拷贝在boat下，执行
   再将生成的图片txt拷贝到目录`image_labels_dir`，将所有的船图拷到`multi-label`下


2. 创建 `labels.txt` 输入具体的类别的名字，每个类别占一行. 

#### 训练
运行命令 `sh -x eval_retrain.sh` 或者 `./eval_retrain.sh`.


#### 测试结果 
Run: `python label_image.py <path/image_name>`

#### 训练的可视化

`tensorboard --logdir retrain_logs`

浏览器输入 http://127.0.0.1:6006/ 

