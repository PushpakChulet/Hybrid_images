f='images/bicycle.jpg';
s='images/bike.jpg';

f1=im2double( rgb2gray(  imread(f) ) );
s1=im2double( rgb2gray(  imread(s) ) );
gaussianFilter=3*6*2+1;
iHP=highPassFilter(f1,gaussianFilter);
gaussianFilter=3*1*2+1;
iLP=lowPassFilter(s1,gaussianFilter);

final_image=iLP+iHP;
imshow(final_image, []);


