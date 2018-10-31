function img = preprocess(img)
[r,c] = size(img);   %获取img 的高宽
win = window2(r,c,@hann);   %初始化hann窗
eps = 1e-5;
img = log(double(img)+1);
img = (img-mean(img(:)))/(std(img(:))+eps);   %对图像数据进行标准化处理
img = img.*win;    %给图片加上hann窗
end
