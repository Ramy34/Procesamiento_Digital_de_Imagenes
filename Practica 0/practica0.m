clear all; %Limpiamos el workspace
clc; %Limpiamos el command window
A = imread("imagenes\lena_color_512.tif"); %Leemos la imagen
A1 = imread("imagenes2\retinaRGB.jpg"); %Leemos la imagen
A2 = imread("imagenes2\abdomen.png"); %Leemos la imagen
%Creamos tres matrices que tendr�n los colores primarios de la imagen
A_R = A; 
A_G = A;
A_B = A;
r = A1(:,:,1); 
g = A1(:,:,2);
b = A1(:,:,3);

%Dejamos en 0 los colores que no nos interesan en cada matriz
A_R(:,:,2) = 0;
A_R(:,:,3) = 0;
A_G(:,:,1) = 0;
A_G(:,:,3) = 0;
A_B(:,:,1) = 0;
A_B(:,:,2) = 0;
B = rgb2gray(A1); %RGB a escala de grises
C = rgb2hsv(A1); %RGB a hsv
D = rgb2ycbcr(A1); %RGB a YUV

Y = 0.299 * r + 0.587 * g + 0.114 * b;
U = 0.493*(b-Y);
V = 0.877*(r-Y);
E = cat(3,Y,U,V);

A_R(:,:,2) = 0;
A_R(:,:,3) = 0;
A_G(:,:,1) = 0;
A_G(:,:,3) = 0;
A_B(:,:,1) = 0;
A_B(:,:,2) = 0;

F = imcrop(A,[0 0 171 512]); %Recortamos la imagen a un tercio
G = imcrop(A,[313.5 0.5 199 512]); %Recortamos la imagen a un tercio
H = imcrop(A,[140 410 210 109]); %Recortamos la imagen arbitrariamente

%Impresi�n de las im�genes
% image(A2);
% figure(2);
% imshow(A);
% imagesc(A2);

figure(3);
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
imshow(B);
title('Imagen a escala de grises');

subplot(3,4,6);
imshow(C);
title('Imagen a HSV');

subplot(3,4,7);
imshow(D);
title('Imagen a YUV');

subplot(3,4,8);
imshow(E);
title('Imagen a YUV por f�rmula');

subplot(3,4,9);
imshow(F);
title('Imagen recortada un tercio');

subplot(3,4,10);
imshow(G);
title('Imagen recortada esquina inferior derecha');

subplot(3,4,11);
imshow(H);
title('Imagen recortada arbitrariamente');
