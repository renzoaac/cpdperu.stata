*************************************************************************************************************************
*------------------------------------------------------CLASE 1----------------------------------------------------------*
*-------------------------------------------COMUNIDAD PARA EL DESARROLLO------------------------------------------------*
*--------------------------------------------cpdperu.contacto@gmail.com-------------------------------------------------*
*-------------------------------------------Prof. Renzo Álvarez Carcheri------------------------------------------------*
*************************************************************************************************************************

// limpieza de datos

clear all
cls

****************************************** Carga de datos: data interna *************************************************

// data interna: auto

sysuse auto, clear

// exploración de datos

br 													                                    // abrir el editor de datos
br price rep78 weight length displacement-foreign   // abrir editor de datos para ciertas variables
br rep78-turn
br price rep78 weight length
br in 11/23											                              // abrir editor de datos para ciertas variables usando índices
br, nolabel											                              // abrir editor de datos sin mostrar las etiquetas
br price foreign, nolabel

br price rep78 weight length if price<8000			       // abrir editor de datos bajo el cumplimiento de ciertas condiciones
br if price>8000
br if price<8000
br if foreign==1

// tabulación de datos

ta rep78, m											                              // tabulación de variable mostrando los missing values			
ta foreign											                               // tabulación de variable sin mostrar los missing values	
ta foreign, nol										                           // tabulación de variable sin mostrar etiquetas	
ta foreign rep78									                           // tabulación de dos variables

table foreign										                             // tabla de frecuencias de una variables
table foreign rep78									                        // tabla de frecuencias de dos variables
table foreign rep78, row col						                  // tabla de frecuencias de dos variables considerando totales
table rep78 foreign , row col
table rep78 foreign , row col  ///
 c(max price min price mean price sd price) 		      // tabla de frecuencias de dos variables considerando totales y estadísticos sobre variable precio

**************************************** Carga de datos: data externa **********************************************
****************************************** (con formato tipo .dta) *************************************************

// fijar ruta (path) para la carga de datos

cd "D:(...)\abrir_cargar_datos"                     // Aquí debes ingresar la ruta en donde albergas tus archivos

use anemia_15, clear

describe											                                 // descripción general de datos
codebook sexo fiebre								                        // información general de variable sexo y fiebre

table sexo fiebre, row								                      // table de totales de varaible sexo y fiebre
table sexo fiebre, c(mean hw1)						                // table con el promedo de la variable hw1 (edad) según sexo y fiebre 

****************************************** Carga de datos: data externa ***********************************************
***************************************** (con formato distinto al .dta) **********************************************

// fijar ruta (path) para la carga de datos

cd "D:(...)\abrir_cargar_datos"                     // Aquí debes ingresar la ruta en donde albergas tus archivos

* Importando bases de datos tipo Excel - XLSX (también aplica xls)
import excel serie_temp, sheet("Sheet1") firstrow clear

tsset Año                                           // Establecer variable "Año" como variable temporal

tsline consumo, name(graph1, replace)               // Gráfico de líneas para variable consumo
tsline PBI, name(graph2, replace)                   // Gráfico de líneas para variable PBI

graph combine graph1 graph2, ycommon                // Gráfico combinado con eje de las ordenadas igual

* Importando bases de datos tipo CSV
import delimited data_carros.csv, delimiter(comma) clear
                                                    // Gráficos de torta
graph pie, over(tipo_combustible) plabel(_all percent, color(white)) name(graph3, replace)
graph pie, over(estilo_carroceria) plabel(_all percent, color(white)) name(graph4, replace)

graph combine graph3 graph4                         // Gráficos de torta combinado

* Importando bases de datos tipo DBF

import dbase epe_1trim, clear

sum INGTOT, d                                       // Resumen de datos para variable "ingresos"                          
hist INGTOT                                         // Histograma de variable "ingresos"
kdensity INGTOT, normal                             // Gráfico de densidad de variable ingresos

* Importando bases de datos tipo SAS

import spss sumaria-2020, clear

tabstat INGMO2HD                                    // Tabla de estadísticos
tabstat INGMO2HD, s(sk k med mean n)                // Tabla de estadísticos: sesgo, kurtosis, mediana, media y total de observaciones

*************************************************************************************************************************
*************************************************************************************************************************
*************************************************************************************************************************
*************************************************************************************************************************

