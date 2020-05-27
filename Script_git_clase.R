################## RStudio con Git ####################

# Para crear una carpeta en donde se empiece a versionar el c?digo, vamos a trabajar en proyectos:
# >>> Ya no tengo archivos solos en donde los guardo en un lugar y los voy eligiendo, sino que creo un proyecto desde 0 en R
# Sino que crea una carpeta nueva en el lugar donde decida y todos los archivos que vaya generando se van a guardar en esa carpeta.
# Evito hacer los stwd()

# File >  New Proyect > New Directory > New Proyect > Directory name & El subdirectorio
# & Si quiero generar un git repository: git init, iniciaci?n de proyecto para ir controlando versiones (si)

# Abre de nuevo R, porque ahora todo lo que genere lo va a guardar ahí.

# Abajo en files:
# Git ignore: todo lo que quiero ignorar. Archivo de texto con extensiones que no quiero guardar.
# toco y veo que está bien, son cosas que no tiene sentido versionar:
# .Rproj.user > Donde guarda datos del proyecto
# .Rhistory > Todo lo que se va ejecutando en consola se va guardando en un archivo R
# .RData > Todo lo que está en el global enviroment, que se va guardando
# .Ruserdata > Donde guarda datos del usuario
# le agrego .jpg, .png

# Abro nuevo script y llamo a los paquetes: 
library(ggplot2)
library(tidyverse)
library(reshape2)

# >>> Voy a guardar el proyecto (discket) > En la misma carpeta que cree
# Notar que abajo me está apareciendo en listado todo lo que tiene esa carpeta.
# En el enviroment antes solo tenía Enviroment, history, Connections.
# Notar solapa nueva git en el enviroment, porque yo se lo indiqué al crear el proyecto.

# Enviroment > Solapa git :
# Selecciono cajitas( todas ) para que vayan a la zona de staged
# Todavia no commit, están como en una zona previa.
# Clickeo 'Commit'
# Se abre ventana:


# Me dice que tengo 5 lineas de codigo