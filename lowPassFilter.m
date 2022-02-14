function filtered_image=lowPassFilter(image,filter_size)

i = fft2(image);
iShifted=fftshift(i);

[M, N]=size(i); 

X=0:N-1;
Y=0:M-1;
[X, Y]=meshgrid(X,Y);
Cx=0.5*N;
Cy=0.5*M;
G=exp(-((X-Cx).^2+(Y-Cy).^2)./(2*filter_size).^2);

iFiltered=iShifted.*G;
iFS=ifftshift(iFiltered);
filtered_image=ifft2(iFS);


end