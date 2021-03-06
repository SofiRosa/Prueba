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


# Aparece que tengo 5 lineas de código.
# Puedo seleccionar que quiero tildar para commitear. En este caso todo.
# Además dejo el mensaje del commit.
# > Hago commit y close

# Si apreto botón de historia me muestra:
#     Que fue lo que se hizo
#     Quien lo hizo
#     Cuando lo hizo
#     el ID > Identifica cada cambio que se fue haciendo.

# Cierro y sigo codeando

df = tips
ggplot(df, aes(x= total_bill, y=tip, color=sex))+
  geom_point()

# Voy a guardar esa imagen > Export (arriba de imagen) > save as image > Que lo guarde en la misma carpeta (directorio en donde vengo trabajando)

# Si vuelvo a guardar mi git (solapa git), me aparece para guardarlo. 
# >>> ¿Por qué aparece disponible para guardarlo?
# >>> Porque cuando hice el git.ignore, le dije que no versione ni jpg ni pdf, entonces png lo va a versionar
# Se puede hacer, no es recomendable versionar png.

# Hago un commit (Exactamente el mismo proceso)
# Voy a historia y veo que se me generó otro hito

# Cierro y sigo modificando código:

df = tips
ggplot(df, aes(x= total_bill, y=tip, color=sex))+
  geom_point() +
  labs(title = 'hola')

# Guardo script (discket)

# Notar que Cuando lo guardo, en la solapa git aparece el nombre del script con status = M
# Este archivo ya estaba guardado pero lo modifiqué, entonces lo tengo que pasar de nuevo a staged
# Y lo commiteo 
# De nuevo, voy a la historia y me paro sobre los cambios 

# Sigo con otro cambio:
df$tip_pes=df$tip*5
# Guardo script y lo commiteo (idem que anterior)


## Voy a viajar en el tiempo. La cotizacion estaba mal
#  Abajo de solapa git > engranage > Shell > Aparece consola
# Escribo : git checkout 
# Seguido de codigo id de hito (SHA): 4868bbd8
# Seguido de nombre de archivo: Script_git_clase.R
## Cuando lo ejecuto, notar que en la consola se me desaparece lo que había escrito,
## Es como volver el tiempo atrás y cambie el codigo.



## Como hacer push desde Rstudio a mi carpeta de Git.
## Una vez que tengo repositorio remoto, desde Rstudio sincronizar el proyecto y decirle que
##los push que haga, los haga sobre ese repositorio.
# Copio la url de mi repo/proyecto en github
# Abro shell, escribo : git remote add origen (+ el link) > enter > Ahi quedaron sincronizadas.

# La primera vez que se haga, va a pedir el usuario y la clave
# Una vez que ya queden sincronizadas, ya sabe que ese proyecto va a hacer push sobre esa carpeta.

# Ahora hace en shell: git push origin master -f
# Pide el usuario,
# Voy a mi repo en github
# Notar que pisa todo lo que había en la carpeta (el readme debería bajarlo en mi carpeta entonces )

