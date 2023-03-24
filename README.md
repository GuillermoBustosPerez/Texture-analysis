## **General information**

**Title:** A geometric morphometric approach to testing discrete
categories of backed flakes from recurrent centripetal core reduction.  
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
paleolithic archaeological sites. However, their deposition into the
archaeological record can be the result of multiple and distant episodes
of discard which can undergo a series of post depositional alterations.
Because the numerous amounts of lithic remains, a quick, flexible, and
effective method for identifying degrees of alteration in the surface of
lithic implements is highly desirable. This would favor the analysis of
complete lithic assemblages, inferring their overall integrity, identify
different episodes of alteration, and even identify post-depositional
alterations of different nature (such as rounding, dragging or wind
erosion). This study examines the use gray scale level images to obtain
quantitative measures from the surface of flint artifacts and determine
if they capture changes due to post-depositional alterations. An
experimental collection of flints was subjected to sequential episodes
of rounding in a tumbling machine. After each episode, photographs with
a Dino-Lite Edge 3.0 AM73915MZT USB microscope were taken, allowing to
obtain quantitative values of surface using gray scale level values. The
surface quantitative values were employed as variables in machine
learning models to determine degree of exposure time and the most
important variables for discrimination. Results indicate that the
extraction of metrics from gray scale level images successfully capture
changes in the surface of flint artifacts caused by post-depositional
alterations. Additional results provide insights into which areas to
sample in search for post-depositional alterations, and underline the
importance of particle size causing the damage.

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

The repository provides

The folder [Raw-images](Raw-Images) contains the original images. These
images were taken using a Dino-Lite Edge 3.0 AM73915MZT USB microscope
at 120 magnifications with a field of view (FOV) of 3.28 x 2.46 mm and a
pixel ratio of 2548 x 1918. The region of interest was manually
positioned as horizontal as possible and several photographs at
different distances were taken. The obtained sequences were mounted
using Helicon Focus 7.7.2. to reduce problems due to focus variation.

The [Scripts](Scripts) folder contains the subfolder [Fiji
macros](Scripts/Fiji%20macros).

-   The file [01 Retrieve Backgorun &
    Normalize.ijm](Scripts/Fiji%20macros/Scripts/Fiji%20macros) pass the
    functions “retrieve background” (to remove changes due to color
    change or different lightning) and “normalize histogram” (to
    desaturate the color channel) to all the images in a folder.

-   The files [02 Descriptive
    stats.txt](Scripts/Fiji%20macros/Scripts/02%20Descriptive%20stats),
    [03 Macro
    Roughness.txt](Scripts/Fiji%20macros/Scripts/03%20Macro%20Roughness)
    and [04 Macro GLCM All
    Angles.txt](Scripts/Fiji%20macros/Scripts/04%20Macro%20GLCM%20All%20Angles)
    respectively compute the metrics
