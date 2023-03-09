$^1$Universidad Autónoma de Madrid. Departamento de Prehistoria y
Arqueología, Campus de Cantoblanco, 28049 Madrid, Spain.  
$^2$Institut Català de Paleoecologia Humana i Evolució Social (IPHES),
Zona Educacional 4, Campus Sescelades URV (Edifici W3), 43007 Tarragona,
Spain.  
$^3$Àrea de Prehistoria, Universitat Rovira i Virgili (URV), Avinguda de
Catalunya 35, 43002 Tarragona, Spain.

 

<div align="justify">

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

 

## **1. Introduction**

  Lithic artifacts constitute one of the most common remains from
paleolithic archaeological sites. When analyzing lithic assemblages, a
key factor to consider is determining the degree of post-depositional
alterations undergone by the assemblage, since eco-cultural inferences
are drawn from them. Methods for determining assemblage integrity
usually focus on the assemblage as a hole. These methods often include
spatial analysis of artifacts and analysis of fabrics to determine if
water flow has resulted in a reorganization of the spatial distribution
and orientations ([Lenoble and Bertran, 2004](#ref-lenoble_fabric_2004);
[McPherron, 2005](#ref-mcpherron_artifact_2005); [McPherron,
2018](#ref-mcpherron_additional_2018); [Petraglia and Potts,
1994](#ref-petraglia_water_1994); [Schick,
1987](#ref-schick_experimentally-derived_1987)). Also, lithic size
distribution analysis are realized to determine if post-depositional
processes have resulted in sorting of the materials ([Bertran et al.,
2012](#ref-bertran_particle_2012); [Maíllo Fernández,
1998](#ref-maillo_fernandez_proporciones_1998)). Another option is to
focus directly on individual lithic artifacts to determine the degree of
alteration that they have undergone ([Chu et al.,
2015](#ref-chu_micro-abrasion_2015); [Levi Sala,
1986](#ref-levi_sala_use_1986)). Although being more time consuming,
this type of analysis provides a higher resolution, allowing to
establish a graduation in the degree of post-depositional alterations,
combine individual data of stone tools with spatial analysis, possible
dissection of archaeological episodes, or to detect several episodes of
recycling. Individual determination of degree of alteration undergone by
a lithic artifact uses microscopic analysis to measure ridge width,
visually analyze the surface to determine the existence and intensity of
abrasion, and examine the edges to determine the presence of detachments
coming from particle impact or dulling of the edges in more extreme
cases ([Bustos-Pérez et al., 2019](#ref-bustos-perez_experimental_2019);
[Chambers, 2003](#ref-chambers_like_2003); [Shackley,
1974](#ref-shackley_stream_1974)).

Post-depositional alterations can affect and interact with stone tools
in two broad ways which will be recorded by the tool surface. First, the
type of fluvial sedimentary processes which can affect lithic artifacts.
Fluvial sedimentary processes are characterized by particle transport
and these processes are not homogeneous. Lithic artifacts can form part
of these process as another particle, or remain static and be affected
by particles being transported. Commonly, three modes of particle
transport are described in fluvial sedimentary contexts: rolling,
sliding and saltation ([Alhusban and Valyrakis,
2021](#ref-alhusban_assessing_2021)), although the last one is not a
common form of alteration in the case of stone tools ([Petraglia and
Potts, 1994](#ref-petraglia_water_1994)). Additional to alterations
coming from fluvial contexts, stone artifacts might also be affected by
aeolian particle transport, usually resulting in wind abrasion
([Stapert, 1976](#ref-stapert_natural_1976)). The second factor of
variability affecting post-depositional alterations of stone tools is
the degree of exposure and speed on which a stone tool enters the
archaeological record ([Petraglia and Potts,
1994](#ref-petraglia_water_1994); [Schick,
1987](#ref-schick_experimentally-derived_1987); [Schiffer,
1972](#ref-schiffer_archaeological_1972)). For example, it is expected
that partially buried artifacts with water and sediment flowing above
them will present modifications in the exposed surface, while the edges
and the burred surface will remain semi-intact ([Petraglia and Potts,
1994](#ref-petraglia_water_1994)). A different scenario happens when
artifacts are transported by rolling in coarse sediments, resulting in
abrasion of all surfaces, dulling of the edges, but at the same time,
the impact from coarse particles might result in freshly detached
surfaces and edges which undergo new modifications until the artifact
enters the archaeological record ([Harding et al.,
1987](#ref-sieveking_transport_1987); [Petraglia and Potts,
1994](#ref-petraglia_water_1994)). Finally, a same homogeneous lithic
assemblage might be affected differentially by stream abrasion. This
differential alteration is consequence of the complex structure of water
streams, were the overall slope of the terrain, energy and charge of the
flow, morphology of the channel (which also affects the lateral
deposition of sediments) and several other factors result in complex and
uneven structures ([Jain et al., 2008](#ref-jain_where_2008);
[Montgomery and Buffington, 1997](#ref-montgomery_channel-reach_1997);
[Rust, 1972](#ref-rust_structure_1972)).

Thus, obtaining quantitative data of surface modifications can
complement values of ridge width, and help identify and interpret type
of particle transport undergone by, or affecting a stone artifact.
Ideally, quantitative values of surface abrasion would be extracted from
each stone artifact, allowing to maximize information and interpretation
of the formation process of an archaeological site. However, as
previously mentioned, stone artifacts are some of the most common
remains from Paleolithic archaeological sites. Thus, a versatile, fast
and light time-consuming method is highly desirable since it would
enable to analyze large quantities of lithic materials.

Use-wear studies have shown surface quantification can discriminate
worked materials and offer a high resolution analysis of the activities
carried out ([Boström and Lundin, 2022](#ref-bostrom_quantifying_2022);
[Evans and Donahue, 2008](#ref-evans_laser_2008); [Ibáñez et al.,
2019](#ref-ibanez_identifying_2019); [Ibáñez et al.,
2016](#ref-ibanez_cereal_2016); [Ibáñez and Mazzucco,
2021](#ref-ibanez_quantitative_2021); [Pedergnana et al.,
2020](#ref-pedergnana_polish_2020); [Stemp et al.,
2009](#ref-stemp_quantification_2009)). Previous approaches in the study
of use-wear have used grayscale level values for surface analysis of
different worked materials ([Adán et al., 2003](#ref-adan_spatial_2003);
[Barceló et al., 2001](#ref-barcelo_image_2001); [Bietti,
1996](#ref-bietti_image_1996); [Grace et al.,
1985](#ref-grace_quantification_1985); [Pijoan-López et al.,
2002](#ref-pijoan-lopez_variabilidad_2002); [Vila and Gallart,
1993](#ref-vila_caracterizacion_1993)). Gray scale level analysis offers
a series of advantages such as being fast to perform, require low
equipment investment and can be applied in the field. This research
presents results from a sequential experimentation in which a set of
experimentally knapped flakes have undergone rounding process in a
tumbler. After each episode of rounding, the same areas are
photographed, and quantitative measures of flake surface using grayscale
level values are employed to characterize the surface. Following the
extraction of quantitative values, machine learning models are employed
to determine the degree of separation between rounding times and most
important features.

## **2. Methods**

### **2.1 Experimental sample and setting**

Two blocks of flint representing two different types (Type I and Type
II) were experimentally knapped. The two types correspond to the South
Madrid Miocene Flint ([Bustillo et al.,
2012](#ref-bustillo_caracterizacion_2012); [Bustillo and Pérez-Jiménez,
2005](#ref-bustillo_caracteristicas_2005)) although from two different
locations. South Madrid Miocene flints were formed by the replacement of
sedimentary rocks which had filled the original basin. This replacement
of the sedimentary rocks is considered to have taken place under
continental conditions such as alluvial plain deposits, shallow
lacustrine waters, and marshes ([Bustillo et al.,
2012](#ref-bustillo_caracterizacion_2012)). Macroscopic analysis of the
flints shows that they present a fine opaque homogeneous surface, with
colors being blue/grey and reddish/ocher. There is also a relative
absence of opal, although geodes and pseudo-morphs can be observed. From
these two blocks three flakes were selected from Type 1, and four flakes
were selected from Type 2.  
![“Experimental sample of flint flakes (photographs by M. D.
Guillén).”](Figures/01-Presenting-materials.png)

In order to simulate sedimentary abrasion, the flakes were introduced by
pairs into a tumbler machine (KT-3010 SUPER-TUMBLER) along with a mix of
sand and water (30/40% of water with a total weight of 5 kg). Sediment
was obtained from the quaternary levels of the Madrid basin and it is
composed of fine sands with silt and partial carbonation.

All flakes were submitted to three cumulative cycles of tumbling with
times set to 1h, 5h and 10h. Prior to their introduction into the
tumbling machine, 6 photographs (3 per each side) of the surface of each
flake were taken in order to have references of texture metrics from
flint flakes. Previous research ([Bustos-Pérez et al.,
2019](#ref-bustos-perez_experimental_2019); [Chu et al.,
2015](#ref-chu_micro-abrasion_2015)) suggests that, for the development
of post depositional alterations, a decrease in particle size increases
the heterogeneity in the speed, intensity and location of their
development. Thus, after the first cycle of rounding (1h), each flint
flake was screened using the Dino-Lite Edge 3.0 AM73915MZT USB
microscope in order to determine and photograph areas which had
developed sedimentary abrasion. These areas were photographed in the
subsequent rounding cycles, allowing to obtain sequential images and
data of surface change for cumulative times of 1h, 5h and 10h. The
dataset of images was supplemented by the inclusion of sample
photographs of macroscopically recognizable geological neocortex of
flints from the same formation, providing a total of 269 photographs.

``` r
# Load and inspect the data
load("Data/Sequential Data v1.01.RData")
kableExtra::kable(head(Sequential.Data))
```

    ## Warning in !is.null(rmarkdown::metadata$output) && rmarkdown::metadata$output
    ## %in% : 'length(x) = 4 > 1' in coercion to 'logical(1)'

<table>
<thead>
<tr>
<th style="text-align:left;">
ID
</th>
<th style="text-align:right;">
Mean
</th>
<th style="text-align:right;">
SD
</th>
<th style="text-align:right;">
Modal
</th>
<th style="text-align:right;">
Median
</th>
<th style="text-align:right;">
Kurtosis
</th>
<th style="text-align:right;">
Skewness
</th>
<th style="text-align:right;">
Rq
</th>
<th style="text-align:right;">
Ra
</th>
<th style="text-align:right;">
Rsk
</th>
<th style="text-align:right;">
Rku
</th>
<th style="text-align:right;">
ASM
</th>
<th style="text-align:right;">
CONT
</th>
<th style="text-align:right;">
CORR
</th>
<th style="text-align:right;">
IDM
</th>
<th style="text-align:right;">
ENT
</th>
<th style="text-align:left;">
Flake.ID
</th>
<th style="text-align:left;">
Flake.Time
</th>
<th style="text-align:left;">
Dorsal.Ventral
</th>
<th style="text-align:left;">
No.Photo
</th>
<th style="text-align:left;">
Photo.Type
</th>
<th style="text-align:left;">
Flake.Number
</th>
<th style="text-align:left;">
Flint.Type
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
HDisc_01_11 Neocortex 01c.tif
</td>
<td style="text-align:right;">
78.8051
</td>
<td style="text-align:right;">
48.0084
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
72
</td>
<td style="text-align:right;">
0.192800
</td>
<td style="text-align:right;">
0.6877
</td>
<td style="text-align:right;">
92.238
</td>
<td style="text-align:right;">
78.962
</td>
<td style="text-align:right;">
1.404
</td>
<td style="text-align:right;">
2.265
</td>
<td style="text-align:right;">
0.0007549
</td>
<td style="text-align:right;">
2590.374
</td>
<td style="text-align:right;">
0.0001907
</td>
<td style="text-align:right;">
0.0439237
</td>
<td style="text-align:right;">
7.478644
</td>
<td style="text-align:left;">
HDisc_01_11
</td>
<td style="text-align:left;">
Neocortex
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
1
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
11
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
<tr>
<td style="text-align:left;">
HDisc_01_11 Neocortex 2c.tif
</td>
<td style="text-align:right;">
79.4588
</td>
<td style="text-align:right;">
49.0694
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
72
</td>
<td style="text-align:right;">
0.220100
</td>
<td style="text-align:right;">
0.7342
</td>
<td style="text-align:right;">
93.279
</td>
<td style="text-align:right;">
79.431
</td>
<td style="text-align:right;">
1.425
</td>
<td style="text-align:right;">
2.324
</td>
<td style="text-align:right;">
0.0006760
</td>
<td style="text-align:right;">
2580.717
</td>
<td style="text-align:right;">
0.0001932
</td>
<td style="text-align:right;">
0.0435694
</td>
<td style="text-align:right;">
7.616038
</td>
<td style="text-align:left;">
HDisc_01_11
</td>
<td style="text-align:left;">
Neocortex
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
2
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
11
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
<tr>
<td style="text-align:left;">
HDisc_01_11 Neocortex 3c.tif
</td>
<td style="text-align:right;">
79.2460
</td>
<td style="text-align:right;">
48.6480
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
72
</td>
<td style="text-align:right;">
0.096450
</td>
<td style="text-align:right;">
0.6573
</td>
<td style="text-align:right;">
92.902
</td>
<td style="text-align:right;">
79.279
</td>
<td style="text-align:right;">
1.412
</td>
<td style="text-align:right;">
2.268
</td>
<td style="text-align:right;">
0.0005305
</td>
<td style="text-align:right;">
2622.327
</td>
<td style="text-align:right;">
0.0001890
</td>
<td style="text-align:right;">
0.0397000
</td>
<td style="text-align:right;">
7.818300
</td>
<td style="text-align:left;">
HDisc_01_11
</td>
<td style="text-align:left;">
Neocortex
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
3
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
11
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
<tr>
<td style="text-align:left;">
HDisc_01_11 Neocortex 4c.tif
</td>
<td style="text-align:right;">
83.6360
</td>
<td style="text-align:right;">
49.8806
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
80
</td>
<td style="text-align:right;">
-0.184100
</td>
<td style="text-align:right;">
0.5215
</td>
<td style="text-align:right;">
97.097
</td>
<td style="text-align:right;">
83.571
</td>
<td style="text-align:right;">
1.384
</td>
<td style="text-align:right;">
2.157
</td>
<td style="text-align:right;">
0.0004967
</td>
<td style="text-align:right;">
2769.124
</td>
<td style="text-align:right;">
0.0001789
</td>
<td style="text-align:right;">
0.0393344
</td>
<td style="text-align:right;">
7.856781
</td>
<td style="text-align:left;">
HDisc_01_11
</td>
<td style="text-align:left;">
Neocortex
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
4
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
11
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
<tr>
<td style="text-align:left;">
HDisc_01_11 Neocortex 5c.tif
</td>
<td style="text-align:right;">
72.9310
</td>
<td style="text-align:right;">
42.9089
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
65
</td>
<td style="text-align:right;">
1.112800
</td>
<td style="text-align:right;">
0.9028
</td>
<td style="text-align:right;">
84.399
</td>
<td style="text-align:right;">
73.105
</td>
<td style="text-align:right;">
1.428
</td>
<td style="text-align:right;">
2.390
</td>
<td style="text-align:right;">
0.0009690
</td>
<td style="text-align:right;">
2430.545
</td>
<td style="text-align:right;">
0.0001860
</td>
<td style="text-align:right;">
0.0449431
</td>
<td style="text-align:right;">
7.275731
</td>
<td style="text-align:left;">
HDisc_01_11
</td>
<td style="text-align:left;">
Neocortex
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
5
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
11
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
<tr>
<td style="text-align:left;">
Hdisc_01_12 Neocortex 01c.tif
</td>
<td style="text-align:right;">
81.6403
</td>
<td style="text-align:right;">
47.6198
</td>
<td style="text-align:right;">
78
</td>
<td style="text-align:right;">
78
</td>
<td style="text-align:right;">
0.006416
</td>
<td style="text-align:right;">
0.5100
</td>
<td style="text-align:right;">
94.272
</td>
<td style="text-align:right;">
81.652
</td>
<td style="text-align:right;">
1.365
</td>
<td style="text-align:right;">
2.125
</td>
<td style="text-align:right;">
0.0005129
</td>
<td style="text-align:right;">
2489.187
</td>
<td style="text-align:right;">
0.0001996
</td>
<td style="text-align:right;">
0.0412394
</td>
<td style="text-align:right;">
7.828831
</td>
<td style="text-align:left;">
Hdisc_01_12
</td>
<td style="text-align:left;">
Neocortex
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
1
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
12
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
</tbody>
</table>

``` r
#load packages
library(tidyverse)
```

``` r
# Counts of number of images per time of exposure
# (sequential images taken after the first episode of abrasion are not included)
kableExtra::kable(Sequential.Data %>% 
  filter(Photo.Type != "Sequential" | Flake.Time ==  "Fresh" ) %>% 
  group_by(Flake.Time) %>% 
  summarise(
    N.by.Flakes = n()))
```

<table>
<thead>
<tr>
<th style="text-align:left;">
Flake.Time
</th>
<th style="text-align:right;">
N.by.Flakes
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:right;">
42
</td>
</tr>
<tr>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:right;">
68
</td>
</tr>
<tr>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:right;">
68
</td>
</tr>
<tr>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:right;">
68
</td>
</tr>
<tr>
<td style="text-align:left;">
Neocortex
</td>
<td style="text-align:right;">
23
</td>
</tr>
</tbody>
</table>

### **2.2 Cleaning protocol, image acquisition and processing**

Workflow developed in the present study includes a series of steps prior
to extracting quantitative data from the images. These steps are:
cleaning protocol to remove contaminants from the stone tool surface,
image capture, and image enhancement.

Multiple works emphasize the need of cleaning protocols to remove modern
contaminants prior to analysis ([Asryan and Ollé,
2020](#ref-asryan_results_2020); [Fernández-Marchena and Ollé,
2016](#ref-fernandez-marchena_microscopic_2016); [Ollé and Vergès,
2014](#ref-olle_use_2014); [Pedergnana et al.,
2016](#ref-pedergnana_modern_2016)). A multi-step procedure based on
previous studies was adopted ([Pedergnana et al.,
2016](#ref-pedergnana_modern_2016)) in order to retrieve possible
contaminants. This multi-step procedure included a sonic bath in 2%
neutral soap (Derquim) solution during 10 to 15 minutes, followed by a
second sonic bath in pure acetone during another 10 to 15 minutes. After
each step the lithic artefacts were introduced in a water bath and
finally dried using pressure air. During the cleaning protocol and
microscopic analysis all artefacts were manipulated using surgical
gloves.

![“Effects of manual manipulation without protection on flint surface.
Left: surface photographed after the application of cleaning protocol
and manipulation of the artefact using protection. Right: same surface
after manual manipulation without
protection”](Figures/02-Effects-of-grease.png)

All surface photographs were taken using a Dino-Lite Edge 3.0 AM73915MZT
USB microscope at 120 magnifications with a field of view (FOV) of 3.28
x 2.46 mm and a pixel ratio of 2548 x 1918. The USB microscope was
mounted in a Dino-Lite RK-06-AE stand in order to ensure verticality,
and a N3C-D2 diffuser cap was used to ensure homogeneous distribution of
light. During the realization of each photograph, the region of interest
of the flint was manually positioned as horizontal as possible
([Calandra, 2022](#ref-calandra_workflow_2022)). To avoid problems due
to focus variation, each surface was photographed several times at
different heights, and the obtained sequences were mounted using Helicon
Focus 7.7.2.

A common problem of images obtained from USB microscopes is the lack of
detail due to saturation in one of the grey level values and the effects
of different lightning or surface color. This saturation is often
observed as a general glaze in one of the grey level values and results
in a low-quality image with poor detail. To increase detail and quality
prior to the analysis, all images were subjected to a two-step process.
First, the Fiji ([Schindelin et al., 2012](#ref-schindelin_fiji_2012))
plugging “Subtract background” was employed to minimize effects of
different lightning and changes in flint color. Second, the function
“Enhance contrast” was employed to desaturate the images by normalizing
their histograms. This process provides a gray-scale level image
employed as input for the statistical analysis.

![“Two examples of image enhancement. Left: original images taken with
the AM73915MZT USB microscope and using a N3C-D2 diffuser cap. Center:
images after retrieving the background to avoid effects of different
lightning or color. Right: after normalizing the histogram to increase
detail and avoid saturation. Top row: geological neocortex. Bottom row:
fresh surface of an experimentally knapped
flake.”](Figures/03-Retrieve-background-and-normalize.jpg)

### **2.3 Statistical analysis**

The present work uses three sets of statistical metrics to analyze
obtained images. The first set of statistical metrics correspond to
descriptive statistics (mean, standard deviation, mode, median skewness,
and kurtosis). The second set of statistical measures corresponds to
measures of roughness. Surface parameters using the “R” prefix use
profiles as input. The present work uses a Fiji/ImageJ plugging were
R-values are obtained on the hole surface following the ISO 4287/2000
standard ([Chinga et al., 2007](#ref-chinga_quantification_2007);
[Chinga and Dougherty, 2002](#ref-chinga_roughness_2002)). These
measures are:

- **Root mean square deviation/roughness (Rq):** indicator of surface
  roughness.  
- **Arithmetical mean deviation (Ra):** which indicates the deviation of
  a surface from a mean height.  
- **Skewness of the assessed profile (Rsk):** indicator of the departure
  from surface symmetry. Negative values indicate a surface made of deep
  valleys, and positive values indicates peaks and asperities.  
- **Kurtosis of the assessed profile (Rku):** which indicates the
  sharpness of the peaks. Low values indicate blunt peaks, while high
  values indicate sharp peaks.

Analysis of intensity values through the Gray Level Co-occurrence Matrix
(GLCM; ([Haralick et al., 1973](#ref-haralick_textural_1973))) takes
into consideration the spatial distribution of intensity values. The
GLCM works in two steps ([Haralick et al.,
1973](#ref-haralick_textural_1973)). First, using a given distance and
direction it builds a matrix which captures the relationship of
intensity between pairs of pixels (reference and neighbor). Second, for
every x and y it considers the co-occurrence of values, forming a new
matrix. From this new matrix, a series of statistical descriptors are
derived ([Haralick et al., 1973](#ref-haralick_textural_1973)).

- **Angular Second Moment (ASM)** is measure of homogeneity in the
  image. Homogeneous images (with low gray-tone transitions) will have
  fewer entries of large magnitude. Thus, homogeneous images will have
  high ASM values, while the opposite will be true for non-homogeneous
  images.  
- **Contrast (CONT)** is a value of the amount of local variations. High
  values are indicating a lot of local variation and low values indicate
  few local variations.  
- **Correlation (CORR)** which measures gray-tone linear-dependencies in
  the image. It indicates how a reference pixel is related to its
  neighbor. A 0 value indicates it is uncorrelated, and 1 indicates a
  perfect correlation.  
- **Inverse Different Moment (IDM)** also referred as homogeneity. It
  obtains the measures of the closeness of the distribution of the GLCM
  elements to the GLCM diagonal.  
- **Entropy (ENT)** is a measure of the amount of irremediable chaos or
  disorder in an image. High values of entropy indicate values of
  similar magnitude, while low values indicate unequal entries.

As previously mentioned, use of the GLCM requires selecting pixel
distance between reference and neighbor, and direction on which to
establish the distance ([Haralick et al.,
1973](#ref-haralick_textural_1973)). For this, it is common to test for
different combinations of distances and directions since images at
different magnifications, different field of view and different
resolution might require variation in pixel distance and directions
([Bietti, 1996](#ref-bietti_image_1996); [Grace et al.,
1985](#ref-grace_quantification_1985)). For the present study, a
preliminary test indicated that using four distances at 5, 10, 15 and 20
pixels in the four possible directions (north, east, south and west) to
set the GLCM presented the best results for discrimination.

Calculation of all metrics was done using the free software Fiji
([Schindelin et al., 2012](#ref-schindelin_fiji_2012)). Roughness
metrics calculation was implemented through the “Roughness calculation”
plugin ([Chinga and Dougherty, 2002](#ref-chinga_roughness_2002)). GLCM
and texture metrics were calculated using the “GLCM Texture” plugging
([Cabrera, 2006](#ref-cabrera_texture_2006)).

### **2.4 Machine Learning models and evaluation**

Data from descriptive statistics, roughness and texture were employed as
variable for the training of Machine Learning models in order to predict
the time of exposure to sedimentary abrasion. The ten models tested
were:

- **Linear discriminant analysis (LDA):** reduces dimensionality for the
  purpose of maximizing the separation between classes while decision
  boundaries divide the predictor range into regions ([Fisher,
  1936](#ref-fisher_use_1936); [James et al.,
  2013](#ref-james_introduction_2013)).  
- **K-nearest neighbor (KNN):** classifies cases by assigning the class
  of similar known cases. The ‘k’ in KNN refers to the number of cases
  (neighbors) to consider when assigning a class, which must be found by
  testing different values. Given that KNN uses distance metrics to
  compute nearest neighbors and that each variable is in different
  scales, the data must be scaled and centered prior to fitting the
  model ([Cover and Hart, 1967](#ref-cover_nearest_1967); [Lantz,
  2019](#ref-lantz_machine_2019)).  
- **Logistic regression:** essentially adapts continuous regression
  predictions to categorical outcomes ([Cramer,
  2004](#ref-cramer_early_2004); [Walker and Duncan,
  1967](#ref-walker_estimation_1967)).  
- **Decision tree with C5.0 algorithm:** an improvement on decision
  trees for classification ([Quinlan, 2014](#ref-quinlan_c4_2014);
  [Quinlan, 1996](#ref-quinlan_improved_1996)).  
- **Random forest:** made of decision trees. Each tree is grown from a
  random sample of the data and variables, allowing for each tree to
  grow differently and to better reflect the complexity of the data
  ([Breiman, 2001](#ref-breiman_random_2001)).  
- **Generalized boosted model ([Greenwell et al.,
  2019](#ref-greenwell_package_2019); [Ridgeway,
  2007](#ref-ridgeway_generalized_2007)):** implements the gradient
  boosted machine ([Friedman, 2002](#ref-friedman_stochastic_2002),
  [2001](#ref-friedman_greedy_2001)) making it possible to detect
  learning deficiencies and increase model accuracy for a set of random
  forests.  
- **Supported vector machines (SVM):** fit hyperplanes into a
  multidimensional space with the objective of creating homogeneous
  partitions ([Cortes and Vapnik,
  1995](#ref-cortes_support-vector_1995); [Frey and Slate,
  1991](#ref-frey_letter_1991)). The present study tests SVM with
  linear, radial and polynomial kernels.  
- **Naïve Bayes classifier:** computes class probabilities using Bayes’
  rule ([Weihs et al., 2005](#ref-weihs_klar_2005)).

<figure>
<img src="Figures/04-Thresholds-multiple-categories.png" width="600"
alt="“Example of the”one versus all” approach in order to obtain ROC curves and AUC values in the case of multiclass problems”" />
<figcaption aria-hidden="true">“Example of the”one versus all” approach
in order to obtain ROC curves and AUC values in the case of multiclass
problems”</figcaption>
</figure>

All models are evaluated using 10×100 k-fold cross validation (10 folds
and 100 cycles), providing measures of accuracy. Using a 10-fold
division, each fold will have 43 data points. Each fold serves
subsequently as test set for a trained model. Although computationally
more expensive, this guarantees that all data points will serve as test
sets. The 100 cycles provide a random shuffling of the dataset prior to
fold division, thus ensuring that the composition of the folds varies in
each cycle and it does not play a significant role in the evaluation of
the models.

Machine Learning models commonly use a 0.5 classification threshold to
assign categories. However, classification thresholds can be modified to
balance the ability of model to detect true positives and avoid false
positives which are respectively referred as sensitivity and
specificity. The receiver operating characteristic (ROC) curve is
employed to systematically evaluate the ratio of detected true positives
while avoiding false positives ([Bradley, 1997](#ref-bradley_use_1997);
[Spackman, 1989](#ref-spackman_signal_1989)). The ROC curve allows
visually analyzing model performance and calculating the AUC, which
ranges from 1 (perfect classifier) to 0.5 (random classifier). The AUC
is a measure of performance derived from the receiver operating
characteristic (ROC) curve. The ROC curve is used to evaluate the ratio
of detected true positives while avoiding false positives ([Bradley,
1997](#ref-bradley_use_1997); [Spackman,
1989](#ref-spackman_signal_1989)). The ROC curve makes it possible to
visually analyze model performance and calculate the AUC, which ranges
from 1 (perfect classifier) to 0.5 (random classifier). The ROC and AUC
are commonly applied in two-class problems and their extension to
multiclass problems is usually done through pairwise analysis.

``` r
# Check for collinearity of the data
r <- cor(Sequential.Data[,2:16], use="complete.obs")^2

ggcorrplot::ggcorrplot(r, 
           hc.order = TRUE, 
           type = "lower",
           lab_size = 2,
           tl.cex = 8,
           lab = TRUE) +
  ggsci::scale_fill_gsea(reverse = FALSE) +
  theme(legend.position = "none",
        axis.text = element_text(color = "black"))
```

![](Texture_analysis_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

## References

</div>

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-adan_spatial_2003" class="csl-entry">

Adán, M., Barceló, J.A., Pijoan-López, J., Piqué, R., Toselli, A., 2003.
Spatial statistics in archaeological texture analysis. The digital
heritage of archaeology.

</div>

<div id="ref-alhusban_assessing_2021" class="csl-entry">

Alhusban, Z., Valyrakis, M., 2021. Assessing and modelling the
interactions of instrumented particles with bed surface at low transport
conditions. Applied Sciences 11, 7306.
<https://doi.org/10.3390/app11167306>

</div>

<div id="ref-asryan_results_2020" class="csl-entry">

Asryan, L., Ollé, A., 2020. Results of a functional study on the middle
to early upper pleistocene lithic assemblages from the azokh 1 cave site
(south caucasus). Quaternary International 569-570, 168–180.
<https://doi.org/10.1016/j.quaint.2020.05.028>

</div>

<div id="ref-barcelo_image_2001" class="csl-entry">

Barceló, J.A., Pijoan, J., Vicente, O., 2001. Image quantification as
archaeological description, in: Stancic, Z., Veljanovski, T. (Eds.),
Computing Archaeology for Understanding the Past, BAR International
Series. Oxford: Archaeopress, Oxford, pp. 69–78.

</div>

<div id="ref-bertran_particle_2012" class="csl-entry">

Bertran, P., Lenoble, A., Todisco, D., Desrosiers, P.M., Sørensen, M.,
2012. Particle size distribution of lithic assemblages and taphonomy of
palaeolithic sites. Journal of Archaeological Science 39, 3148–3166.
<https://doi.org/10.1016/j.jas.2012.04.055>

</div>

<div id="ref-bietti_image_1996" class="csl-entry">

Bietti, A., 1996. Image processing in microwear studies of flint
artifacts. Archeologi e Calcolatori 7, 387–396.

</div>

<div id="ref-bostrom_quantifying_2022" class="csl-entry">

Boström, S., Lundin, J., 2022. Quantifying use-wear polish through 3D
imaging software. Lund Archaeological Review 26-27, 7–22.

</div>

<div id="ref-bradley_use_1997" class="csl-entry">

Bradley, A.P., 1997. The use of the area under the ROC curve in the
evaluation of machine learning algorithms. Pattern recognition 30,
1145–1159.

</div>

<div id="ref-breiman_random_2001" class="csl-entry">

Breiman, L., 2001. Random forests. Machine Learning 45, 5–32.
<https://doi.org/10.1023/A:1010933404324>

</div>

<div id="ref-bustillo_caracteristicas_2005" class="csl-entry">

Bustillo, M.A., Pérez-Jiménez, J.L., 2005. Características diferenciales
y génesis de los niveles silíceos explotados en el yacimiento
arqueológico de casa montero (vicálvaro, madrid). Geogaceta 38, 243–246.

</div>

<div id="ref-bustillo_caracterizacion_2012" class="csl-entry">

Bustillo, M.Á., Pérez-Jiménez, J.L., Bustillo, M., 2012. Caracterización
geoquímica de rocas sedimentarias formadas por silicificación como
fuentes de suministro de utensilios líticos (mioceno, cuenca de madrid).
Revista Mexicana de Ciencias Geológicas 29, 233–247.

</div>

<div id="ref-bustos-perez_experimental_2019" class="csl-entry">

Bustos-Pérez, G., Díaz, S., Baena, J., 2019. An experimental approach to
degrees of rounding among lithic artifacts. Journal of Archaeological
Method and Theory 26, 1243–1275.
<https://doi.org/10.1007/s10816-018-9409-8>

</div>

<div id="ref-cabrera_texture_2006" class="csl-entry">

Cabrera, J.E., 2006. [Texture
analyzer](https://imagej.nih.gov/ij/plugins/texture.html).

</div>

<div id="ref-calandra_workflow_2022" class="csl-entry">

Calandra, I., 2022. A workflow for quality control in surface texture
analysis applied to teeth and tools. Journal of Archaeological Science:
Reports 46, 103692. <https://doi.org/10.1016/j.jasrep.2022.103692>

</div>

<div id="ref-chambers_like_2003" class="csl-entry">

Chambers, J.C., 2003. Like a rolling stone? The identification of
fluvial transportation damage signatures on secondary context bifaces.
Lithics 24, 66–77.

</div>

<div id="ref-chinga_roughness_2002" class="csl-entry">

Chinga, G., Dougherty, B., 2002. [Roughness
calculation](https://imagej.nih.gov/ij/plugins/roughness.html).

</div>

<div id="ref-chinga_quantification_2007" class="csl-entry">

Chinga, G., Johnsen, P.O., Dougherty, R., Berli, E.L., Walter, J., 2007.
Quantification of the 3D microstructure of SC surfaces. J Microsc 227,
254–265. <https://doi.org/10.1111/j.1365-2818.2007.01809.x>

</div>

<div id="ref-chu_micro-abrasion_2015" class="csl-entry">

Chu, W., Thompson, C., Hosfield, R., 2015. Micro-abrasion of flint
artifacts by mobile sediments: A taphonomic approach. Archaeological and
Anthropological Sciences 7, 3–11.
<https://doi.org/10.1007/s12520-013-0157-0>

</div>

<div id="ref-cortes_support-vector_1995" class="csl-entry">

Cortes, C., Vapnik, V., 1995. Support-vector networks. Machine learning
20, 273–297.

</div>

<div id="ref-cover_nearest_1967" class="csl-entry">

Cover, T., Hart, P., 1967. Nearest neighbor pattern classification. IEEE
Trans. Inform. Theory 13, 21–27.
<https://doi.org/10.1109/TIT.1967.1053964>

</div>

<div id="ref-cramer_early_2004" class="csl-entry">

Cramer, J.S., 2004. The early origins of the logit model. Studies in
History and Philosophy of Science Part C: Studies in History and
Philosophy of Biological and Biomedical Sciences 35, 613–626.
<https://doi.org/10.1016/j.shpsc.2004.09.003>

</div>

<div id="ref-evans_laser_2008" class="csl-entry">

Evans, A.A., Donahue, R.E., 2008. Laser scanning confocal microscopy: A
potential technique for the study of lithic microwear. Journal of
Archaeological Science 35, 2223–2230.
<https://doi.org/10.1016/j.jas.2008.02.006>

</div>

<div id="ref-fernandez-marchena_microscopic_2016" class="csl-entry">

Fernández-Marchena, J.L., Ollé, A., 2016. Microscopic analysis of
technical and functional traces as a method for the use-wear analysis of
rock crystal tools. Quaternary International 424, 171–190.
<https://doi.org/10.1016/j.quaint.2015.10.064>

</div>

<div id="ref-fisher_use_1936" class="csl-entry">

Fisher, R.A., 1936. The use of multiple measurements in taxonomic
problems. Annals of Eugenics 7, 179–188.

</div>

<div id="ref-frey_letter_1991" class="csl-entry">

Frey, P.W., Slate, D.J., 1991. Letter recognition using holland-style
adaptive classifiers. Machine learning 6, 161–182.

</div>

<div id="ref-friedman_stochastic_2002" class="csl-entry">

Friedman, J.H., 2002. Stochastic gradient boosting. Computational
Statistics & Data Analysis 38, 367–378.
<https://doi.org/10.1016/S0167-9473(01)00065-2>

</div>

<div id="ref-friedman_greedy_2001" class="csl-entry">

Friedman, J.H., 2001. [Greedy function approximation: A gradient
boosting machine](https://www.jstor.org/stable/2699986). Annals of
statistics 29, 1189–1232.

</div>

<div id="ref-grace_quantification_1985" class="csl-entry">

Grace, R., Graham, I.D.G., Newcomer, M.H., 1985. [The quantification of
microwear polishes](http://www.jstor.org/stable/124679). World
Archaeology 17, 112–120.

</div>

<div id="ref-greenwell_package_2019" class="csl-entry">

Greenwell, B., Boehmke, B., Cunningham, J., Developers, G.B.M.,
Greenwell, M.B., 2019. Package “gbm.” R package version 2.

</div>

<div id="ref-haralick_textural_1973" class="csl-entry">

Haralick, R.M., Shanmugam, K., Dinstein, I.H., 1973. Textural features
for image classification. IEEE Transactions on systems, man, and
cybernetics 3, 610–621.

</div>

<div id="ref-sieveking_transport_1987" class="csl-entry">

Harding, P., Gibbard, P.L., Lewin, J., Macklin, M.G., Moss, E.H., 1987.
The transport and abrasion of flint handaxes in a gravel-bed river, in:
Sieveking, G., Newcomer, M. (Eds.), The Human Uses of Flint and Chert:
Proceedings of the Fourth International Flint Symposium Held at Brighton
Polytechnic. Cambridge University Press, Cambridge, pp. 115–126.

</div>

<div id="ref-ibanez_cereal_2016" class="csl-entry">

Ibáñez, J.J., Anderson, P.C., González-Urquijo, J., Gibaja, J., 2016.
Cereal cultivation and domestication as shown by microtexture analysis
of sickle gloss through confocal microscopy. Journal of Archaeological
Science 73, 62–81. <https://doi.org/10.1016/j.jas.2016.07.011>

</div>

<div id="ref-ibanez_identifying_2019" class="csl-entry">

Ibáñez, J.J., Lazuen, T., González-Urquijo, J., 2019. Identifying
experimental tool use through confocal microscopy. J Archaeol Method
Theory 26, 1176–1215. <https://doi.org/10.1007/s10816-018-9408-9>

</div>

<div id="ref-ibanez_quantitative_2021" class="csl-entry">

Ibáñez, J.J., Mazzucco, N., 2021. Quantitative use-wear analysis of
stone tools: Measuring how the intensity of use affects the
identification of the worked material. PLoS ONE 16, e0257266.
<https://doi.org/10.1371/journal.pone.0257266>

</div>

<div id="ref-jain_where_2008" class="csl-entry">

Jain, V., Fryirs, K., Brierley, G., 2008. Where do floodplains begin?
The role of total stream power and longitudinal profile form on
floodplain initiation processes. Geological Society of America Bulletin
120, 127–141. <https://doi.org/10.1130/B26092.1>

</div>

<div id="ref-james_introduction_2013" class="csl-entry">

James, G., Witten, D., Hastie, T., Tibshirani, R., 2013. An introduction
to statistical learning with applications in r, Second Edition. ed.
Springer.

</div>

<div id="ref-lantz_machine_2019" class="csl-entry">

Lantz, B., 2019. Machine learning with r: Expert techniques for
predictive modeling. Packt publishing ltd.

</div>

<div id="ref-lenoble_fabric_2004" class="csl-entry">

Lenoble, A., Bertran, P., 2004. Fabric of palaeolithic levels: Methods
and implications for site formation processes. Journal of Archaeological
Science 31, 457–469. <https://doi.org/10.1016/j.jas.2003.09.013>

</div>

<div id="ref-levi_sala_use_1986" class="csl-entry">

Levi Sala, I., 1986. Use wear and post-depositional surface
modification: A word of caution. Journal of Archaeological Science 13,
229–244.

</div>

<div id="ref-maillo_fernandez_proporciones_1998" class="csl-entry">

Maíllo Fernández, J.M., 1998. Proporciones de debris en réplicas de
talla experimental. ETFI. <https://doi.org/10.5944/etfi.11.1998.4665>

</div>

<div id="ref-mcpherron_artifact_2005" class="csl-entry">

McPherron, S.J.P., 2005. Artifact orientations and site formation
processes from total station proveniences. Journal of Archaeological
Science 32, 1003–1014.

</div>

<div id="ref-mcpherron_additional_2018" class="csl-entry">

McPherron, S.P., 2018. Additional statistical and graphical methods for
analyzing site formation processes using artifact orientations. PLoS ONE
13, e0190195. <https://doi.org/10.1371/journal.pone.0190195>

</div>

<div id="ref-montgomery_channel-reach_1997" class="csl-entry">

Montgomery, D.R., Buffington, J.M., 1997. Channel-reach morphology in
mountain drainage basins. Geological Society of America Bulletin 109,
596–611.
[https://doi.org/10.1130/0016-7606(1997)109\<0596:CRMIMD\>2.3.CO;2](https://doi.org/10.1130/0016-7606(1997)109<0596:CRMIMD>2.3.CO;2)

</div>

<div id="ref-olle_use_2014" class="csl-entry">

Ollé, A., Vergès, J.M., 2014. The use of sequential experiments and SEM
in documenting stone tool microwear. Journal of Archaeological Science
48, 60–71. <https://doi.org/10.1016/j.jas.2013.10.028>

</div>

<div id="ref-pedergnana_modern_2016" class="csl-entry">

Pedergnana, A., Asryan, L., Fernández-Marchena, J.L., Ollé, A., 2016.
Modern contaminants affecting microscopic residue analysis on stone
tools: A word of caution. Micron 86, 1–21.
<https://doi.org/10.1016/j.micron.2016.04.003>

</div>

<div id="ref-pedergnana_polish_2020" class="csl-entry">

Pedergnana, A., Calandra, I., Evans, A.A., Bob, K., Hildebrandt, A.,
Ollé, A., 2020. Polish is quantitatively different on quartzite flakes
used on different worked materials. PLoS ONE 15, e0243295.
<https://doi.org/10.1371/journal.pone.0243295>

</div>

<div id="ref-petraglia_water_1994" class="csl-entry">

Petraglia, M.D., Potts, R., 1994. Water flow and the formation of early
pleistocene artifact sites in olduvai gorge, tanzania. Journal of
Anthropological Archaeology 13, 228–254.
<https://doi.org/10.1006/jaar.1994.1014>

</div>

<div id="ref-pijoan-lopez_variabilidad_2002" class="csl-entry">

Pijoan-López, J., Barceló-Álvarez, J.A., Clemente-Conte, I., Vila-Mitjà,
A., 2002. [Variabilidad estadística en imágenes digitalizadas de rastros
de uso: Resultados
preliminares](https://digital.csic.es/handle/10261/10418), in: Clemente
Conte, I., Risch, R., Gibaja Bao, J.F. (Eds.), Análisis Funcional: Su
Aplicación Al Estudio de Sociedades Prehistóricas. Archaeopress, pp.
55–64.

</div>

<div id="ref-quinlan_c4_2014" class="csl-entry">

Quinlan, J.R., 2014. C4. 5: Programs for machine learning. Elsevier.

</div>

<div id="ref-quinlan_improved_1996" class="csl-entry">

Quinlan, J.R., 1996. Improved use of continuous attributes in C4.5. jair
4, 77–90. <https://doi.org/10.1613/jair.279>

</div>

<div id="ref-ridgeway_generalized_2007" class="csl-entry">

Ridgeway, G., 2007. [Generalized boosted models: A guide to the gbm
package](http://CRAN.R-project.org/package=gbm). R package vignette
2007.

</div>

<div id="ref-rust_structure_1972" class="csl-entry">

Rust, B.R., 1972. Structure and process in a braided river.
Sedimentology 18, 221–245.

</div>

<div id="ref-schick_experimentally-derived_1987" class="csl-entry">

Schick, K.D., 1987. Experimentally-derived criteria for assessing
hydrologic disturbance of archaeological sites, in: Nash, D.T.,
Petraglia, M.D. (Eds.), Natural Formation Processes and the
Archaeological Record, BAR International Series. pp. 86–107.

</div>

<div id="ref-schiffer_archaeological_1972" class="csl-entry">

Schiffer, M.B., 1972. Archaeological context and systemic context. Am.
antiq. 37, 156–165. <https://doi.org/10.2307/278203>

</div>

<div id="ref-schindelin_fiji_2012" class="csl-entry">

Schindelin, J., Arganda-Carreras, I., Frise, E., Kaynig, V., Longair,
M., Pietzsch, T., Preibisch, S., Rueden, C., Saalfeld, S., Schmid, B.,
Tinevez, J.-Y., White, D.J., Hartenstein, V., Eliceiri, K., Tomancak,
P., Cardona, A., 2012. Fiji: An open-source platform for
biological-image analysis. Nat Methods 9, 676–682.
<https://doi.org/10.1038/nmeth.2019>

</div>

<div id="ref-shackley_stream_1974" class="csl-entry">

Shackley, M.S., 1974. Stream abrasion of flint implements. Nature 248,
501–502.

</div>

<div id="ref-spackman_signal_1989" class="csl-entry">

Spackman, K.A., 1989. Signal detection theory: Valuable tools for
evaluating inductive learning, in: Proceedings of the Sixth
International Workshop on Machine Learning. Elsevier, pp. 160–163.

</div>

<div id="ref-stapert_natural_1976" class="csl-entry">

Stapert, D., 1976. Some natural surface modifications on flint in the
netherlands. Paleohistoria 18, 9–41.

</div>

<div id="ref-stemp_quantification_2009" class="csl-entry">

Stemp, W.J., Childs, B.E., Vionnet, S., Brown, C.A., 2009.
Quantification and discrimination of lithic use-wear: Surface profile
measurements and length-scale fractal analysis. Archaeometry 51,
366–382. <https://doi.org/10.1111/j.1475-4754.2008.00404.x>

</div>

<div id="ref-vila_caracterizacion_1993" class="csl-entry">

Vila, A., Gallart, F., 1993. Caracterización de los micropulidos de uso:
Ejemplo de aplicación del análisis de imágenes digitalizadas, in:
Anderson, P.C., Beyries, S., Otte, M., Plisson, H. (Eds.), Traces Et
Fonction: Les Gestes Retrouvés, : E.r.a.u.l. Etudes Et Recherches
Archéologiques de l’université de Liège. Série a. Service de
Préhistoire, Université de Liège, Liège, pp. 459–466.

</div>

<div id="ref-walker_estimation_1967" class="csl-entry">

Walker, S.H., Duncan, D.B., 1967. Estimation of the probability of an
event as a function of several independent variables. Biometrika 54,
167–179. <https://doi.org/10.2307/2333860>

</div>

<div id="ref-weihs_klar_2005" class="csl-entry">

Weihs, C., Ligges, U., Luebke, K., Raabe, N., 2005. <span
class="nocase">klaR</span> analyzing german business cycles, in: Data
Analysis and Decision Support. Springer, pp. 335–343.

</div>

</div>
