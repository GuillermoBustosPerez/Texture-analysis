## **General information**

**Title:** Quantification of surface abrasion on flint stone tools.  
**Authors:**

-   Guillermo Bustos-Pérez <sup>1, 2, 3, 4</sup>  
-   Andreu Ollé <sup>2, 3</sup>

<sup>1</sup> Universidad Autónoma de Madrid. Departamento de Prehistoria
y Arqueología, Campus de Cantoblanco, 28049 Madrid, Spain.  
<sup>2</sup> Institut Català de Paleoecologia Humana i Evolució Social
(IPHES), Zona Educacional 4, Campus Sescelades URV (Edifici W3), 43007
Tarragona, Spain.  
<sup>3</sup> Àrea de Prehistoria, Universitat Rovira i Virgili (URV),
Avinguda de Catalunya 35, 43002 Tarragona, Spain.  
<sup>(4)</sup> Corresponding authors at: <guillermo.bustos@uam.es> |
<francesca.romagnoli@uam.es>  
**ORCID**: 0000-0002-1089-818X

**Abstract**

Lithic artifacts are some of the most common and numerous remains from
paleolithic archaeological sites. However, after their introduction into
the archaeological record they can undergo multiple post-depositional
alterations. Because the numerous amounts of lithic remains, a quick,
flexible, and effective method for identifying degrees of alteration in
the surface of lithic implements is highly desirable. The present study
examines the use gray scale level images to obtain quantitative measures
from the surface of flint artifacts and determine if they capture
changes due to post-depositional alterations. An experimental collection
of flints was subjected to sequential episodes of rounding in a tumbling
machine. After each episode, photographs with a microscope were taken,
allowing to obtain quantitative values of surface using gray scale level
values. The surface quantitative values were employed as variables in
machine learning models to determine time of exposure and the most
important variables for discrimination. Results indicate that the
extraction of metrics from gray scale level images successfully capture
changes in the surface of flint artifacts caused by post-depositional
alterations. Additional results provide insights into which areas to
sample in search for post-depositional alterations and underline the
importance of particle size causing alterations.

**Key words**: lithic taphonomy; experimental archaeology; machine
learning

**Funding**  
The following research has been possible thanks to the Program for the
Requalification of the University System Margarita Salas
(CA1/RSUE/2021-00743) financed through the Spanish “Recovery,
Transformation and Resilience Plan” and managed from the Ministry of
Universities (Ministerio de Universidades) and the Autonomous University
of Madrid (Universidad Autónoma de Madrid).

This work has been carried out with the financial support of the
Generalitat de Catalunya, AGAUR agency (2017SGR1040 Research Group), the
Universitat Rovira i Virgili (2021PFR-URV-126), and the Spanish Ministry
of Science and Innovation (MICINN/FEDER project
PID2021-122355NB-C32).The Institut Català de Paleoecologia Humana i
Evolució Social (IPHES-CERCA) has received financial support from the
Spanish Ministry of Science and Innovation through the “María de Maeztu”
program for Units of Excellence (CEX2019-000945-M). The research
technical support of Maria Dolors Guillén was supported by the Spanish
Ministry of Science and Innovation through the “María de Maeztu”
excellence accreditation (CEX2019-000945-M).

This article is the result of the research projects “Como, Quien Y
Donde?: Variabilidad De Comportamientos En La Captaci´on Y
Transformaci´on De Los Recursos Liticos Dentro De Grupos Neandertales 2”
(HAR2016-76760-C3-2-P) financed by Agencia Estatal de Investigación
(AEI), Fondo Europeo de Desarrollo Regional (FEDER); and “En Los Limites
De La Diversidad: Comportamiento Neandertal En El Centro Y Sur De La
Penisula Iberica” (ID2019- 103987 GB-C33) financed by the Programa
Estatal de Generación de Conocimiento y Fortalecimiento Científico y
Tecnológico del Sistema de I + D + i y de I + D + i Orientada a los
Retos de la Sociedad, del Plan Estatal de Investigación Científica y
Técnica y de Innovación (2017–2020).

## **Access information**

**License**  
The following data and code is publish under a **Non Commercial 4.0
International (CC BY-NC 4.0) licnse**. For more details, see the
[**License**](License.md) file.

## **Structure of the repository**

The folder [Raw-images](Raw-Images) contains the original images. These
images were taken using a Dino-Lite Edge 3.0 AM73915MZT USB microscope
at 120 magnifications with a field of view (FOV) of 3.28 x 2.46 mm and a
pixel ratio of 2548 x 1918. The region of interest was manually
positioned as horizontal as possible and several photographs at
different distances were taken. The obtained sequences were mounted
using Helicon Focus 7.7.2. to reduce problems due to focus variation.

The [Scripts](Scripts) folder contains the subfolder [Fiji
macros](Scripts/Fiji%20macros).

The file [01 Retrieve Backgorun &
Normalize.ijm](Scripts/Fiji%20macros/01%20Retrieve%20Backgorun%20&%20Normalize.ijm)
pass the functions “retrieve background” (to remove changes due to color
change or different lightning) and “normalize histogram” (to desaturate
the color channel) to all the images in a folder.

The files [02 Descriptive
stats.txt](Scripts/Fiji%20macros/02%20Descriptive%20stats.txt), [03
Macro Roughness.txt](Scripts/Fiji%20macros/03%20Macro%20Roughness.txt)
and [04 Macro GLCM All
Angles.txt](Scripts/Fiji%20macros/04%20Macro%20GLCM%20All%20Angles.txt)
compute the three types of metrics on the images. Note that the
computation of the GLCM requires to introduce the distance between the
reference pixel and the neighbor pixel.  
The resulting original three files of data can be found at the [Raw
Data](Report/Data/Raw%20Data) folder. The file [01 Wrangle
Data](Scripts/01%20Wrangle%20data.R) works in four steps:  
1) it loads the three raw data files;  
2) it combines the metrics from each of the files into a data frame in
which each row is an image and each column a variable;  
3) from each of the file names it extracts information regarding time of
exposure, type of flint, number of the photograph, location of the
photograph or if the artifact was screened to locate abrasion or not;  
4) it creates factors and labels for the variables and categories, and
it exports the final data frame as an .RData file.

The wrangled data can be found as a [.csv
file](Report/Data/Sequential%20Data%20v1.01.csv) or as a
[.RData](Report/Data/Sequential%20Data%20v1.01.RData). The present
repository makes use of the later file.

The [Data folder](Report/Data) also contains two files containing the AI
models trained to identify exposure time to abrasion. The file
[AI-models-Surface.RData](Report/Data/AI-models-Surface.RData) contains
all models trained using all non-perfectly colinear variables. The file
[AI-PCA-models-Surface.RData](Report/Data/AI-PCA-models-Surface.RData)
contains all models trained after reducing the dimensionality of the
data through the use of a Principal Component Analysis. The models were
trained on the first five PC (99% of variance).

The complete workflow of the article can be followed through the files
[Texture\_analysis.md](00-Texture-analysis/Report/Texture_analysis.md)
and
[Texture\_analysis.Rmd](00-Texture-analysis/Report/Texture_analysis.Rmd)
