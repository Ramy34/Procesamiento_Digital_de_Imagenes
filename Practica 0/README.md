# Práctica 0 - Procesamiento Digital de Imágenes

## Autores
* Castro Molano Ramsés
* Ordoñez Pérez Mauricio Edward
* Tellez Salto Kevin

## Descripción general
Este directorio contiene el desarrollo de la **Práctica 0** para la materia de Procesamiento Digital de Imágenes. A través de un script principal de MATLAB, se exploran las herramientas y funciones básicas para la lectura, manipulación, visualización y escritura de archivos de imágenes.

## Contenido del Script
El archivo principal `Script_CastroMolano_OrdoñezPérez_TellezSalto.m` está dividido en 10 secciones prácticas:

1. **Separación de canales de color:** Extracción individual de los canales Rojo (R), Verde (G) y Azul (B) de una imagen original.
2. **Conversión de espacios de color:** Transformación de imágenes del espacio RGB a Escala de grises, HSV y YUV (calculado matemáticamente).
3. **Recorte de imágenes (Cropping):** Uso de la función `imcrop` para realizar recortes simétricos (un tercio) y recortes arbitrarios.
4. **Visualización estándar:** Carga y visualización de imágenes en su formato original utilizando las funciones `image` e `imshow`.
5. **Visualización escalada:** Visualización de imágenes ajustando los datos al mapa de color actual mediante la función `imagesc`.
6. **Barras de color:** Implementación de escalas de referencia visual usando `colorbar`.
7. **Mapas de color (Colormaps):** Aplicación de filtros y paletas de colores integradas en MATLAB como `winter`, `summer` y `spring` sobre imágenes médicas.
8. **Transformaciones espaciales:** Rotación de imágenes en diferentes grados (45°, 90°, 180°) mediante `imrotate`.
9. **Escritura y guardado de archivos:** Conversión de una imagen a escala de grises y exportación a un nuevo archivo con formato `.tif` usando `imwrite`.
10. **Visualización interactiva y redimensionamiento:** Uso de la herramienta `implay` para explorar imágenes satelitales densas y reducción de la dimensionalidad de las mismas usando `imresize`.

## Requisitos del entorno
Para ejecutar el código correctamente, asegúrate de contar con lo siguiente:
* **MATLAB** (Versión reciente recomendada).
* **Image Processing Toolbox** instalado (necesario para funciones como `rgb2hsv`, `imcrop`, `imrotate`, `imresize` e `implay`).

## Estructura de carpetas requerida
El script requiere que existan ciertas carpetas de imágenes en el mismo directorio donde se ejecute. Asegúrate de tener los siguientes recursos:
* Carpeta `imagenes2/` (debe contener: `magriclonRGB.jpg`, `retinaRGB.jpg`, `corte.bmp`, `rxpie-rodilla.tif`, `abdomen.png`, `cta_scan_index.bmp`, `mri.jpg`).
* Carpeta `Satelital/` (debe contener: `S1A_EW_9E49_TN_Cal_dB_uint8.tif`).

## Ejecución
1. Abre MATLAB y navega hasta el directorio que contiene el script.
2. Ejecuta el archivo `Script_CastroMolano_OrdoñezPérez_TellezSalto.m`.
3. Se irán desplegando distintas figuras (de la `Figure 1` a la `Figure 9`) además de las ventanas interactivas del reproductor de video.