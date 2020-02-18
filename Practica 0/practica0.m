%%%%%%%%%%%%%%%%%% 1  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Lena = imread("imagenes2\magriclonRGB.jpg"); %Leemos la imagen

%Creamos tres matrices que tendrán los colores primarios de la imagen
A_R = Lena; 
A_G = Lena;
A_B = Lena;

%Dejamos en 0 los colores que no nos interesan en cada matriz
A_R(:,:,2) = 0;
A_R(:,:,3) = 0;
A_G(:,:,1) = 0;
A_G(:,:,3) = 0;
A_B(:,:,1) = 0;
A_B(:,:,2) = 0;

figure(1);
subplot(2,2,1);
imshow(Lena);
title('Original');

subplot(2,2,2);
imshow(A_R);
title('Original solo rojo');

subplot(2,2,3);
imshow(A_G);
title('Original solo verde');

subplot(2,2,4);
imshow(A_B);
title('Original solo azul');

%%%%%%%%%%%%%%%%%% 2  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Retina = imread("imagenes2\retinaRGB.jpg"); %Leemos la imagen

%Creamos tres matrices que tendrán los colores primarios de la imagen
r = Retina(:,:,1); 
g = Retina(:,:,2);
b = Retina(:,:,3);

Retina_gray = rgb2gray(Retina); %RGB a escala de grises
Retina_hsv = rgb2hsv(Retina); %RGB a hsv
Y = 0.299 * r + 0.587 * g + 0.114 * b;
U = 0.493*(b-Y);
V = 0.877*(r-Y);
Retina_yuv = cat(3,Y,U,V);

figure(2);
subplot(2,2,1);
imshow(Retina);
title('Original');

subplot(2,2,2);
imshow(Retina_gray);
title('Imagen a escala de grises');

subplot(2,2,3);
imshow(Retina_hsv);
title('Imagen a HSV');

subplot(2,2,4);
imshow(Retina_yuv);
title('Imagen a YUV');

%%%%%%%%%%%%%%%%%% 3  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Corte = imread("imagenes2\corte.bmp"); %Leemos la imagen
F = imcrop(Corte,[0 0 171 512]); %Recortamos la imagen a un tercio
G = imcrop(Corte,[313.5 0.5 199 512]); %Recortamos la imagen a un tercio
H = imcrop(Corte,[140 410 210 100]); %Recortamos la imagen arbitrariamente

figure(3);
subplot(2,2,1);
imshow(Corte);
title('Original');

subplot(2,2,2);
imshow(F);
title('Imagen recortada un tercio');

subplot(2,2,3);
imshow(G);
title('Imagen recortada esquina inferior derecha');

subplot(2,2,4);
imshow(H);
title('Imagen recortada arbitrariamente');

%%%%%%%%%%%%%%%%%% 4  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Corte = imread("imagenes2\rxpie-rodilla.tif"); %Leemos la imagen
image(Lena);
figure(4);
imshow(Lena);

%%%%%%%%%%%%%%%%%% 5  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Abdomen = imread("imagenes2\abdomen.png"); %Leemos la imagen
image(Abdomen);
figure(5);
imagesc(Abdomen);

%%%%%%%%%%%%%%%%%% 6  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(6);
subplot(1,1,1);
imshow(Abdomen);
title('Original');
colorbar('southoutside');

%%%%%%%%%%%%%%%%%% 7  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Intestino = imread("imagenes2\cta_scan_index.bmp"); %Leemos la imagen

figure(7);
subplot(2,2,1);
imshow(Intestino);
title('Original');

Winter = subplot(2,2,2);
imshow(Intestino);
colormap(Winter, winter);
title('Imagen Winter');

Summer = subplot(2,2,3);
imshow(Intestino);
colormap(Summer, summer);
title('Imagen Summer');

Spring = subplot(2,2,4);
imshow(Intestino);
colormap(Spring, spring);
title('Imagen Spring');

%%%%%%%%%%%%%%%%%% 8  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Cte = imread("imagenes2\cta_scan_index.bmp"); %Leemos la imagen

J = imrotate(Cte,45);
L = imrotate(Cte,90);
M = imrotate(Cte,180);

figure(8);
subplot(2,2,1);
imshow(Cte);
title('Original');

subplot(2,2,2);
imshow(J);
title('Imagen rotada 45°');

subplot(2,2,3);
imshow(L);
title('Imagen rotada 90°');

subplot(2,2,4);
imshow(M);
title('Imagen rotada 180°');

%%%%%%%%%%%%%%%%%% 9  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Mri = imread("imagenes2\mri.jpg"); %Leemos la imagen
Mri_gray = rgb2gray(Mri); %RGB a escala de grises
imwrite(Mri_gray,'mri.tif');

figure(9);
subplot(1,2,1);
imshow(Mri);
title('Imagen mri');

subplot(1,2,2);
imshow(Mri_gray);
title('Imagen mri blanco y negro');
%%%%%%%%%%%%%%%%%% 10 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Satelite = imread("Satelital\S1A_EW_9E49_TN_Cal_dB_uint8.tif"); %Leemos la imagen
figure(10);
implay(Satelite);
