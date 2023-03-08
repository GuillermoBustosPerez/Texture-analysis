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
Sequential.Data %>% 
  filter(Photo.Type != "Sequential" | Flake.Time ==  "Fresh" ) %>% 
  group_by(Flake.Time) %>% 
  summarise(
    N.by.Flakes = n()
  )
```

    ## # A tibble: 5 × 2
    ##   Flake.Time N.by.Flakes
    ##   <fct>            <int>
    ## 1 Fresh               42
    ## 2 One.Hour            68
    ## 3 Five.Hours          68
    ## 4 Ten.Hours           68
    ## 5 Neocortex           23

### **2.2 Cleaning protocol, image acquisition and processing**

### **2.2 Image capturing workflow**

The present work takes a series of steps prior to realizing any analysis
and extracting data form images. These steps are: the cleaning protocol
to remove contaminants, image capture, and image enhancement.  
 

#### **2.2.1 Cleaning protocol**

Multiple works emphasize the need of cleaning protocols to remove modern
contaminants prior to analysis ([Asryan and Ollé,
2020](#ref-asryan_results_2020); [Fernández-Marchena and Ollé,
2016](#ref-fernandez-marchena_microscopic_2016); [Ollé and Vergès,
2014](#ref-olle_use_2014); [Pedergnana et al.,
2016](#ref-pedergnana_modern_2016)). Figure @ref(fig:Figure-01) shows
the effect of manual manipulation on the texture of a surface. Because
of this, a multi-step procedure based on previous studies was adopted
([Pedergnana et al., 2016](#ref-pedergnana_modern_2016)). This
multi-step procedure included a sonic bath in 2% neutral soap (Derquim)
solution during 10 to 15 minutes. This was followed by a second sonic
bath in pure acetone during another 10 to 15 minutes. After each step
the lithic artefacts were introduced in a water bath and finally dried
using pressure air. During the cleaning protocol and microscopic
analysis all artefacts were manipulated using surgical gloves.  
 

#### **2.2.2 Image capture**

Dino-Lite Edge 3.0 AM73915MZT USB microscope

-capsule vertical stand -pelota esa  
 

#### **2.2.3 Image enhancement**

A common problem of images obtained from USB microscopes is the lack of
detail due to saturation in one of the grey level values and effects of
different lightning. This saturation is often observed as a general
glaze in one of the grey level values and results in a low quality image
with poor detail. To increase detail and quality prior to the analysis,
all images were subjected to a two-step process. First, the Fiji pluging
*Substract background* was employed to avoid effects of different
lightning. Second, the function *enhance contrast* was employed to
desaturize the images by normalizing their histograms (Figure
@ref(fig:Figure3)).  
 

### **2.3 Image statistical analysis**

The present work uses three sets of statistical metrics to analyze
obtained images. The first set of statistical metrics correspond to
descriptive statistics (mean, standard deviation, mode, median and
kurtosis). The second set of statistical measures corresponds to
measures of roughness:

- **Root mean square deviation (Rq)**: indicator of surface roughness.  
- **Arithmetical mean deviation (Ra)**: which indicates the deviation of
  a surface from a mean height.  
- **Skewness of the assessed profile (Rsk)**: indicator of the departure
  from surface symmetry. Negative values indicate a surface made of deep
  valey, and positive values indicates peaks and asperities.  
- **Kurtosis of the assessed profile (Rku)**: which indicates the
  sharpness of the peaks. Low values indicate blunt peaks, while high
  values indicate sharp peaks.

The implementation of these measures is done in ImageJ software
([Schneider et al., 2012](#ref-schneider_nih_2012)) through the
Roughness calculation plugin ([Chinga and Dougherty,
2002](#ref-chinga_roughness_2002)).  
 

A problem exists when images are analyzed through the intensity
distribution of pixels and using descriptive statistics and roughness
metrics. Figure @ref(fig:Figure2) illustrates the problem. Figure
@ref(fig:Figure2) shows a series of pattern images with similar values
of intensity, but with different spatial distribution. Regarding
descriptive statistics, all images present similar values of mean (127),
standard deviation (125), sk (0.01) and kurtosis (-1.99). Regarding
measures of roughness, all images present similar values of Rq (180), Ra
(127), Rsk (1.42), and Rku (2).

 

Analysis of intensity values through the Gray Level Co-occurrence Matrix
(GLCM; Haralick et al. ([1973](#ref-haralick_textural_1973))) takes into
consideration the spatial distribution of intensity values. The GLCM
works in two steps ([Haralick et al.,
1973](#ref-haralick_textural_1973)). First, using a given distance and
direction (@ref(fig:Scheme-GLCM)), it builds a matrix which captures the
relationship of intensity between pairs of pixels (reference and
neighbor). Second, for every *x* and *y* it considers the co-occurrence
of values, forming a new matrix. From this new matrix, a series of
statistical descriptors are derived ([Haralick et al.,
1973](#ref-haralick_textural_1973)).

- **Angular Second Moment (ASM)** is measure of homogeneity in the
  image. Homogeneous images (with low gray-tone transitions) will have
  fewer entries of large magnitude. Thus homogeneous images will have
  high ASM values, while the opposite will be true for non-homogeneous
  images.  
- **Contrast (CONT)** is a value of the amount of local variations, with
  high values indicating a lot of local variation and low values few
  local variation.  
- **Correlation (CORR)** which measures gray-tone linear-dependencies in
  the image. It indicates how a reference pixel is related to its
  neighbor. A 0 value indicates it is uncorrelated, and 1 indicates a
  perfect correlation.  
- **Inverse Different Moment (IDM)** also referred as **homogeneity**.
  It obtains the measures of the closeness of the distribution of the
  GLCM elements to the GLCM diagonal.  
- **Entropy (ENT)**: is a measure of the amount of irremediable chaos or
  disorder in an image. High values of entropy indicate values of
  similar magnitude, while low values indicate unequal entries.

 

The present work implements Haralick et al.
([1973](#ref-haralick_textural_1973)) analysis and metrics in ImageJ
software ([Schneider et al., 2012](#ref-schneider_nih_2012)).
Calculation of GLCM and second order statistics is done through Cabrera
([2006](#ref-cabrera_texture_2006)) plugin.

### **2.4 Proof of Concept of GLCM and texture analysis**

Prior to the application of Haralick et al.
([1973](#ref-haralick_textural_1973)) texture metrics a proof of concept
from a pilot study is undertaken. This proof of concept is aimed to two
objectives. First, determine if the GLCM provides suitable variable
values to discriminate between degrees of sedimentary abrasion. Second,
to determine to the best interval of pixels under which the GLCM works

The proof of concept sample is composed of 23 images corresponding to
geological neocortex, 56 images corresponding to flakes undergone 10
hours of sedimentary abrasion in a previous experimental study
([Bustos-Pérez et al., 2019](#ref-bustos-perez_experimental_2019)) and
42 images corresponding to fresh surfaces from experimentally knapped
flakes. All flints correspond to South Madrid Miocen Flint (Bustillo and
Pérez-Jiménez ([2005](#ref-bustillo_caracteristicas_2005)); Bustillo et
al. ([2012](#ref-bustillo_caracterizacion_2012))).

The GLCM requires to test for several distances between the reference
pixel and the neighboring pixel on which the spatial relationships are
established. The present work tests for five different sequences of
distances (Table @ref(tab:distances)). The first sequence composes the
GLCM based on pixels located at distances 1, 2 3 and 4 from the
reference pixel. Sequence 2 composes the GLCM based on pixels located at
distances 2, 4, 6 and 8 from the reference pixel (Table
@ref(tab:distances). All sequences of intervals are tested in the four
cardinal directions (north, east, south and west). This results in 16
(four per each cardinal direction) values of Haralick et al.
([1973](#ref-haralick_textural_1973)) textural metrics. Final values are
obtained by averaging the different values of each of the variables
although range is not considered ([Bietti,
1996](#ref-bietti_image_1996)).

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

<div id="ref-chambers_like_2003" class="csl-entry">

Chambers, J.C., 2003. Like a rolling stone? The identification of
fluvial transportation damage signatures on secondary context bifaces.
Lithics 24, 66–77.

</div>

<div id="ref-chinga_roughness_2002" class="csl-entry">

Chinga, G., Dougherty, B., 2002. [Roughness
calculation](https://imagej.nih.gov/ij/plugins/roughness.html).

</div>

<div id="ref-chu_micro-abrasion_2015" class="csl-entry">

Chu, W., Thompson, C., Hosfield, R., 2015. Micro-abrasion of flint
artifacts by mobile sediments: A taphonomic approach. Archaeological and
Anthropological Sciences 7, 3–11.
<https://doi.org/10.1007/s12520-013-0157-0>

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

<div id="ref-grace_quantification_1985" class="csl-entry">

Grace, R., Graham, I.D.G., Newcomer, M.H., 1985. [The quantification of
microwear polishes](http://www.jstor.org/stable/124679). World
Archaeology 17, 112–120.

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

<div id="ref-schneider_nih_2012" class="csl-entry">

Schneider, C.A., Rasband, W.S., Eliceiri, K.W., 2012. NIH image to
ImageJ: 25 years of image analysis. Nat Methods 9, 671–675.
<https://doi.org/10.1038/nmeth.2089>

</div>

<div id="ref-shackley_stream_1974" class="csl-entry">

Shackley, M.S., 1974. Stream abrasion of flint implements. Nature 248,
501–502.

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

</div>
