clc;
A = imread("imagenes\lena_color_512.tif");
A_R = A;
A_G = A;
A_B = A;
A_R(:,:,2) = 0;
A_R(:,:,3) = 0;
A_G(:,:,1) = 0;
A_G(:,:,3) = 0;
A_B(:,:,1) = 0;
A_B(:,:,2) = 0;
B = rgb2gray(A); %RGB a escala de grises
C = rgb2hsv(A); %RGB a hsv
%D = rgb2yuv(A); %RGB a yuv

subplot(2,3,1);
imshow(A);
title('Original');

subplot(2,3,2);
imshow(A_R);
title('Original solo rojo');

subplot(2,3,3);
imshow(A_G);
title('Original solo verde');

subplot(2,3,4);
imshow(A_B);
title('Original solo azul');

subplot(2,3,5);
imshow(B);
title('Imagen a escala de grises');

subplot(2,3,6);
imshow(C);
title('Imagen a HSV');

% subplot(1,2,4);
% imshow(D);
% title('Imagen a YUV');