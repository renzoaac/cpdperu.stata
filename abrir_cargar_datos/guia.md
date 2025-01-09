# COMUNIDAD PARA EL DESARROLLO
## GUÍA

Para garantizar la funcionabilidad del dofile compartido debe reemplazar correctamente su ruta de trabajo en lugar
de la siguiente declaración presente en el dofile: 

cd "D:(...)\abrir_cargar_datos"

Para ello, debe tener los cuatro (4) archivos ubicados en la carpeta "abrir_cargar_datos" los cuales son: 

anemia_15 \
serie_temp \
epe_1trim \
sumaria-2020 

Estos deben estar contenidos en una única ruta. En mi caso, he optado por crear la siguiente ruta para albergar estos
archivos: 

C:\Users\renzo\OneDrive\Stata\abrir_cargar_datos 

Esta última debe estar incluida en la ruta de trabajo luego de la declaración del comando cd: 

cd "C:\Users\renzo\OneDrive\Stata\abrir_cargar_datos"                     

