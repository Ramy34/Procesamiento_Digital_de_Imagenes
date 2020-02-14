clear all; %Limpiamos el workspace
clc; %Limpiamos el command window
A = imread("imagenes\lena_color_512.tif"); %Leemos la imagen
%Creamos tres matrices que tendrán los colores primarios de la imagen
A_R = A; 
A_G = A;
A_B = A;
R = A(:,:,1); 
G = A(:,:,2);
B = A(:,:,3);

%Dejamos en 0 los colores que no nos interesan en cada matriz
A_R(:,:,2) = 0;
A_R(:,:,3) = 0;
A_G(:,:,1) = 0;
A_G(:,:,3) = 0;
A_B(:,:,1) = 0;
A_B(:,:,2) = 0;
b = rgb2gray(A); %RGB a escala de grises
C = rgb2hsv(A); %RGB a hsv
D = rgb2ycbcr(A); %RGB a YUV

Y = 0.299 * R + 0.587 * G + 0.114 * B;
U = 0.493*(B-Y);
V = 0.877*(R-Y);
E = cat(3,Y,U,V);

F = imcrop(A,[0 0 171 512]); %Recortamos la imagen a un tercio
G = imcrop(A,[313.5 0.5 199 512]); %Recortamos la imagen a un tercio
H = imcrop(A,[140 410 210 109]); %Recortamos la imagen arbitrariamente

%Impresión de las imágenes
subplot(3,4,1);
imshow(A);
title('Original');

subplot(3,4,2);
imshow(A_R);
title('Original solo rojo');

subplot(3,4,3);
imshow(A_G);
title('Original solo verde');

subplot(3,4,4);
imshow(A_B);
title('Original solo azul');

subplot(3,4,5);
imshow(b);
title('Imagen a escala de grises');

subplot(3,4,6);
imshow(C);
title('Imagen a HSV');

subplot(3,4,7);
imshow(D);
title('Imagen a YUV');

subplot(3,4,8);
imshow(E);
title('Imagen a YUV por fórmula');

subplot(3,4,9);
imshow(F);
title('Imagen recortada un tercio');

subplot(3,4,10);
imshow(G);
title('Imagen recortada esquina inferior derecha');

subplot(3,4,11);
imshow(H);
title('Imagen recortada arbitrariamente');