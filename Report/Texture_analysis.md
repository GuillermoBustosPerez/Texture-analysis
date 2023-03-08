$^1$Universidad Autónoma de Madrid. Departamento de Prehistoria y
Arqueología, Campus de Cantoblanco, 28049 Madrid, Spain.  
$^2$Institut Català de Paleoecologia Humana i Evolució Social (IPHES),
Zona Educacional 4, Campus Sescelades URV (Edifici W3), 43007 Tarragona,
Spain.  
$^3$Àrea de Prehistoria, Universitat Rovira i Virgili (URV), Avinguda de
Catalunya 35, 43002 Tarragona, Spain.

 

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
kableExtra::kable(Sequential.Data)
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
2590.3736
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
2580.7172
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
2622.3274
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
2769.1243
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
2430.5453
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
2489.1866
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
<tr>
<td style="text-align:left;">
Hdisc_01_14 Neocortex 1c.tif
</td>
<td style="text-align:right;">
92.8643
</td>
<td style="text-align:right;">
50.2287
</td>
<td style="text-align:right;">
86
</td>
<td style="text-align:right;">
90
</td>
<td style="text-align:right;">
-0.279500
</td>
<td style="text-align:right;">
0.3427
</td>
<td style="text-align:right;">
105.524
</td>
<td style="text-align:right;">
92.899
</td>
<td style="text-align:right;">
1.306
</td>
<td style="text-align:right;">
1.914
</td>
<td style="text-align:right;">
0.0005474
</td>
<td style="text-align:right;">
3166.6800
</td>
<td style="text-align:right;">
0.0001487
</td>
<td style="text-align:right;">
0.0386619
</td>
<td style="text-align:right;">
7.734569
</td>
<td style="text-align:left;">
Hdisc_01_14
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
14
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
<tr>
<td style="text-align:left;">
HDisc_02_04 Neocortex 01c.tif
</td>
<td style="text-align:right;">
72.9752
</td>
<td style="text-align:right;">
46.1215
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
66
</td>
<td style="text-align:right;">
0.451500
</td>
<td style="text-align:right;">
0.7352
</td>
<td style="text-align:right;">
86.321
</td>
<td style="text-align:right;">
72.905
</td>
<td style="text-align:right;">
1.430
</td>
<td style="text-align:right;">
2.381
</td>
<td style="text-align:right;">
0.0004077
</td>
<td style="text-align:right;">
2257.5344
</td>
<td style="text-align:right;">
0.0002211
</td>
<td style="text-align:right;">
0.0402781
</td>
<td style="text-align:right;">
8.101069
</td>
<td style="text-align:left;">
HDisc_02_04
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
04
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
<tr>
<td style="text-align:left;">
HDisc_07_14 Neocortex 01c.tif
</td>
<td style="text-align:right;">
97.5721
</td>
<td style="text-align:right;">
48.2273
</td>
<td style="text-align:right;">
100
</td>
<td style="text-align:right;">
96
</td>
<td style="text-align:right;">
-0.279500
</td>
<td style="text-align:right;">
0.2170
</td>
<td style="text-align:right;">
108.828
</td>
<td style="text-align:right;">
97.351
</td>
<td style="text-align:right;">
1.262
</td>
<td style="text-align:right;">
1.757
</td>
<td style="text-align:right;">
0.0004721
</td>
<td style="text-align:right;">
3214.7771
</td>
<td style="text-align:right;">
0.0001348
</td>
<td style="text-align:right;">
0.0339412
</td>
<td style="text-align:right;">
7.887331
</td>
<td style="text-align:left;">
HDisc_07_14
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
14
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
<tr>
<td style="text-align:left;">
HDisc_07_14 Neocortex 2c.tif
</td>
<td style="text-align:right;">
92.8069
</td>
<td style="text-align:right;">
46.6795
</td>
<td style="text-align:right;">
91
</td>
<td style="text-align:right;">
91
</td>
<td style="text-align:right;">
-0.108100
</td>
<td style="text-align:right;">
0.2884
</td>
<td style="text-align:right;">
103.636
</td>
<td style="text-align:right;">
92.765
</td>
<td style="text-align:right;">
1.287
</td>
<td style="text-align:right;">
1.833
</td>
<td style="text-align:right;">
0.0004387
</td>
<td style="text-align:right;">
2829.8636
</td>
<td style="text-align:right;">
0.0001627
</td>
<td style="text-align:right;">
0.0356962
</td>
<td style="text-align:right;">
7.981794
</td>
<td style="text-align:left;">
HDisc_07_14
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
14
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
<tr>
<td style="text-align:left;">
HDisc_07_14 Neocortex 3c.tif
</td>
<td style="text-align:right;">
97.8123
</td>
<td style="text-align:right;">
48.9589
</td>
<td style="text-align:right;">
104
</td>
<td style="text-align:right;">
98
</td>
<td style="text-align:right;">
-0.349900
</td>
<td style="text-align:right;">
0.1969
</td>
<td style="text-align:right;">
109.089
</td>
<td style="text-align:right;">
97.765
</td>
<td style="text-align:right;">
1.278
</td>
<td style="text-align:right;">
1.787
</td>
<td style="text-align:right;">
0.0003831
</td>
<td style="text-align:right;">
3187.4894
</td>
<td style="text-align:right;">
0.0001415
</td>
<td style="text-align:right;">
0.0323637
</td>
<td style="text-align:right;">
8.086837
</td>
<td style="text-align:left;">
HDisc_07_14
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
14
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
<tr>
<td style="text-align:left;">
HDisc_07_14 Neocortex 4c.tif
</td>
<td style="text-align:right;">
93.9463
</td>
<td style="text-align:right;">
46.1703
</td>
<td style="text-align:right;">
98
</td>
<td style="text-align:right;">
95
</td>
<td style="text-align:right;">
-0.188300
</td>
<td style="text-align:right;">
0.2046
</td>
<td style="text-align:right;">
104.512
</td>
<td style="text-align:right;">
94.145
</td>
<td style="text-align:right;">
1.262
</td>
<td style="text-align:right;">
1.765
</td>
<td style="text-align:right;">
0.0003437
</td>
<td style="text-align:right;">
2855.2807
</td>
<td style="text-align:right;">
0.0001570
</td>
<td style="text-align:right;">
0.0325156
</td>
<td style="text-align:right;">
8.212238
</td>
<td style="text-align:left;">
HDisc_07_14
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
14
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
<tr>
<td style="text-align:left;">
HDisc_07_14 Neocortex 5c.tif
</td>
<td style="text-align:right;">
88.5717
</td>
<td style="text-align:right;">
48.9443
</td>
<td style="text-align:right;">
77
</td>
<td style="text-align:right;">
83
</td>
<td style="text-align:right;">
-0.060560
</td>
<td style="text-align:right;">
0.4890
</td>
<td style="text-align:right;">
101.059
</td>
<td style="text-align:right;">
88.335
</td>
<td style="text-align:right;">
1.340
</td>
<td style="text-align:right;">
2.023
</td>
<td style="text-align:right;">
0.0003848
</td>
<td style="text-align:right;">
2844.6901
</td>
<td style="text-align:right;">
0.0001705
</td>
<td style="text-align:right;">
0.0342931
</td>
<td style="text-align:right;">
8.122350
</td>
<td style="text-align:left;">
HDisc_07_14
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
14
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
<tr>
<td style="text-align:left;">
HDisc_07_23 Neocortex 1c.tif
</td>
<td style="text-align:right;">
97.7909
</td>
<td style="text-align:right;">
50.0058
</td>
<td style="text-align:right;">
96
</td>
<td style="text-align:right;">
96
</td>
<td style="text-align:right;">
-0.398300
</td>
<td style="text-align:right;">
0.2404
</td>
<td style="text-align:right;">
109.881
</td>
<td style="text-align:right;">
97.861
</td>
<td style="text-align:right;">
1.275
</td>
<td style="text-align:right;">
1.796
</td>
<td style="text-align:right;">
0.0004658
</td>
<td style="text-align:right;">
3334.3056
</td>
<td style="text-align:right;">
0.0001349
</td>
<td style="text-align:right;">
0.0339525
</td>
<td style="text-align:right;">
7.881719
</td>
<td style="text-align:left;">
HDisc_07_23
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
23
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
<tr>
<td style="text-align:left;">
HDisc_07_23 Neocortex 2c.tif
</td>
<td style="text-align:right;">
92.9300
</td>
<td style="text-align:right;">
49.0223
</td>
<td style="text-align:right;">
88
</td>
<td style="text-align:right;">
92
</td>
<td style="text-align:right;">
-0.250000
</td>
<td style="text-align:right;">
0.3476
</td>
<td style="text-align:right;">
105.056
</td>
<td style="text-align:right;">
93.270
</td>
<td style="text-align:right;">
1.297
</td>
<td style="text-align:right;">
1.875
</td>
<td style="text-align:right;">
0.0004508
</td>
<td style="text-align:right;">
3317.4484
</td>
<td style="text-align:right;">
0.0001305
</td>
<td style="text-align:right;">
0.0332481
</td>
<td style="text-align:right;">
7.926694
</td>
<td style="text-align:left;">
HDisc_07_23
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
23
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
<tr>
<td style="text-align:left;">
HDisc_07_23 Neocortex 3c.tif
</td>
<td style="text-align:right;">
89.9835
</td>
<td style="text-align:right;">
47.3678
</td>
<td style="text-align:right;">
85
</td>
<td style="text-align:right;">
89
</td>
<td style="text-align:right;">
-0.144100
</td>
<td style="text-align:right;">
0.3863
</td>
<td style="text-align:right;">
101.720
</td>
<td style="text-align:right;">
89.864
</td>
<td style="text-align:right;">
1.302
</td>
<td style="text-align:right;">
1.882
</td>
<td style="text-align:right;">
0.0006916
</td>
<td style="text-align:right;">
3179.2809
</td>
<td style="text-align:right;">
0.0001318
</td>
<td style="text-align:right;">
0.0376919
</td>
<td style="text-align:right;">
7.506181
</td>
<td style="text-align:left;">
HDisc_07_23
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
23
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
<tr>
<td style="text-align:left;">
HDisc_07_23 Neocortex 4c.tif
</td>
<td style="text-align:right;">
96.9583
</td>
<td style="text-align:right;">
50.2892
</td>
<td style="text-align:right;">
92
</td>
<td style="text-align:right;">
96
</td>
<td style="text-align:right;">
-0.389700
</td>
<td style="text-align:right;">
0.2756
</td>
<td style="text-align:right;">
109.203
</td>
<td style="text-align:right;">
97.048
</td>
<td style="text-align:right;">
1.284
</td>
<td style="text-align:right;">
1.827
</td>
<td style="text-align:right;">
0.0004675
</td>
<td style="text-align:right;">
3267.0576
</td>
<td style="text-align:right;">
0.0001414
</td>
<td style="text-align:right;">
0.0344025
</td>
<td style="text-align:right;">
7.880987
</td>
<td style="text-align:left;">
HDisc_07_23
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
23
</td>
<td style="text-align:left;">
GeoSample
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_44 Neocortex 01c.tif
</td>
<td style="text-align:right;">
76.6749
</td>
<td style="text-align:right;">
46.2872
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
71
</td>
<td style="text-align:right;">
0.697900
</td>
<td style="text-align:right;">
0.8541
</td>
<td style="text-align:right;">
89.314
</td>
<td style="text-align:right;">
76.616
</td>
<td style="text-align:right;">
1.435
</td>
<td style="text-align:right;">
2.385
</td>
<td style="text-align:right;">
0.0005370
</td>
<td style="text-align:right;">
2667.2620
</td>
<td style="text-align:right;">
0.0001771
</td>
<td style="text-align:right;">
0.0384556
</td>
<td style="text-align:right;">
7.872069
</td>
<td style="text-align:left;">
RMS_44
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
44
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 00.01.01a.tif
</td>
<td style="text-align:right;">
47.2606
</td>
<td style="text-align:right;">
31.1064
</td>
<td style="text-align:right;">
36
</td>
<td style="text-align:right;">
42
</td>
<td style="text-align:right;">
7.538000
</td>
<td style="text-align:right;">
1.9779
</td>
<td style="text-align:right;">
56.373
</td>
<td style="text-align:right;">
47.305
</td>
<td style="text-align:right;">
1.675
</td>
<td style="text-align:right;">
3.826
</td>
<td style="text-align:right;">
0.0011773
</td>
<td style="text-align:right;">
1212.1274
</td>
<td style="text-align:right;">
0.0003879
</td>
<td style="text-align:right;">
0.0559244
</td>
<td style="text-align:right;">
7.188381
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 00.01.02a.tif
</td>
<td style="text-align:right;">
44.9346
</td>
<td style="text-align:right;">
31.5385
</td>
<td style="text-align:right;">
32
</td>
<td style="text-align:right;">
38
</td>
<td style="text-align:right;">
8.863900
</td>
<td style="text-align:right;">
2.2505
</td>
<td style="text-align:right;">
54.942
</td>
<td style="text-align:right;">
44.880
</td>
<td style="text-align:right;">
1.763
</td>
<td style="text-align:right;">
4.389
</td>
<td style="text-align:right;">
0.0014518
</td>
<td style="text-align:right;">
1166.7710
</td>
<td style="text-align:right;">
0.0004167
</td>
<td style="text-align:right;">
0.0589706
</td>
<td style="text-align:right;">
7.021650
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 00.01.03a.tif
</td>
<td style="text-align:right;">
49.7199
</td>
<td style="text-align:right;">
32.2344
</td>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
6.464300
</td>
<td style="text-align:right;">
1.8124
</td>
<td style="text-align:right;">
59.278
</td>
<td style="text-align:right;">
49.785
</td>
<td style="text-align:right;">
1.612
</td>
<td style="text-align:right;">
3.506
</td>
<td style="text-align:right;">
0.0009485
</td>
<td style="text-align:right;">
1310.1566
</td>
<td style="text-align:right;">
0.0003574
</td>
<td style="text-align:right;">
0.0515831
</td>
<td style="text-align:right;">
7.380419
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 00.02.04a.tif
</td>
<td style="text-align:right;">
42.0939
</td>
<td style="text-align:right;">
30.9800
</td>
<td style="text-align:right;">
32
</td>
<td style="text-align:right;">
35
</td>
<td style="text-align:right;">
10.927600
</td>
<td style="text-align:right;">
2.5954
</td>
<td style="text-align:right;">
52.313
</td>
<td style="text-align:right;">
42.031
</td>
<td style="text-align:right;">
1.885
</td>
<td style="text-align:right;">
5.155
</td>
<td style="text-align:right;">
0.0017868
</td>
<td style="text-align:right;">
1001.8329
</td>
<td style="text-align:right;">
0.0004987
</td>
<td style="text-align:right;">
0.0660794
</td>
<td style="text-align:right;">
6.855106
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 00.02.05a.tif
</td>
<td style="text-align:right;">
47.1748
</td>
<td style="text-align:right;">
31.5035
</td>
<td style="text-align:right;">
35
</td>
<td style="text-align:right;">
42
</td>
<td style="text-align:right;">
8.176400
</td>
<td style="text-align:right;">
2.1287
</td>
<td style="text-align:right;">
56.539
</td>
<td style="text-align:right;">
47.016
</td>
<td style="text-align:right;">
1.701
</td>
<td style="text-align:right;">
4.032
</td>
<td style="text-align:right;">
0.0016874
</td>
<td style="text-align:right;">
1208.4222
</td>
<td style="text-align:right;">
0.0003956
</td>
<td style="text-align:right;">
0.0602600
</td>
<td style="text-align:right;">
6.859319
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 00.02.06a.tif
</td>
<td style="text-align:right;">
58.4960
</td>
<td style="text-align:right;">
35.8843
</td>
<td style="text-align:right;">
44
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
3.310900
</td>
<td style="text-align:right;">
1.3384
</td>
<td style="text-align:right;">
68.602
</td>
<td style="text-align:right;">
58.541
</td>
<td style="text-align:right;">
1.500
</td>
<td style="text-align:right;">
2.834
</td>
<td style="text-align:right;">
0.0011103
</td>
<td style="text-align:right;">
1755.5200
</td>
<td style="text-align:right;">
0.0002491
</td>
<td style="text-align:right;">
0.0487612
</td>
<td style="text-align:right;">
7.202406
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 02.01.01b.tif
</td>
<td style="text-align:right;">
52.0630
</td>
<td style="text-align:right;">
32.7002
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
5.921200
</td>
<td style="text-align:right;">
1.7593
</td>
<td style="text-align:right;">
61.306
</td>
<td style="text-align:right;">
52.070
</td>
<td style="text-align:right;">
1.584
</td>
<td style="text-align:right;">
3.348
</td>
<td style="text-align:right;">
0.0016480
</td>
<td style="text-align:right;">
1415.8644
</td>
<td style="text-align:right;">
0.0003179
</td>
<td style="text-align:right;">
0.0573212
</td>
<td style="text-align:right;">
6.852544
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 02.01.02b.tif
</td>
<td style="text-align:right;">
52.0121
</td>
<td style="text-align:right;">
33.3782
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
5.798300
</td>
<td style="text-align:right;">
1.7649
</td>
<td style="text-align:right;">
61.777
</td>
<td style="text-align:right;">
52.038
</td>
<td style="text-align:right;">
1.612
</td>
<td style="text-align:right;">
3.399
</td>
<td style="text-align:right;">
0.0015320
</td>
<td style="text-align:right;">
1390.4437
</td>
<td style="text-align:right;">
0.0003388
</td>
<td style="text-align:right;">
0.0566844
</td>
<td style="text-align:right;">
6.925231
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 02.01.03b.tif
</td>
<td style="text-align:right;">
56.0441
</td>
<td style="text-align:right;">
36.1190
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
3.913400
</td>
<td style="text-align:right;">
1.5295
</td>
<td style="text-align:right;">
66.627
</td>
<td style="text-align:right;">
56.149
</td>
<td style="text-align:right;">
1.572
</td>
<td style="text-align:right;">
3.130
</td>
<td style="text-align:right;">
0.0015594
</td>
<td style="text-align:right;">
1573.4129
</td>
<td style="text-align:right;">
0.0003055
</td>
<td style="text-align:right;">
0.0567094
</td>
<td style="text-align:right;">
6.924950
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 02.01.04b.tif
</td>
<td style="text-align:right;">
54.7794
</td>
<td style="text-align:right;">
35.6548
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
4.245600
</td>
<td style="text-align:right;">
1.5890
</td>
<td style="text-align:right;">
65.181
</td>
<td style="text-align:right;">
54.787
</td>
<td style="text-align:right;">
1.593
</td>
<td style="text-align:right;">
3.264
</td>
<td style="text-align:right;">
0.0014586
</td>
<td style="text-align:right;">
1522.6105
</td>
<td style="text-align:right;">
0.0003167
</td>
<td style="text-align:right;">
0.0558250
</td>
<td style="text-align:right;">
6.996056
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 02.02.05b.tif
</td>
<td style="text-align:right;">
59.9296
</td>
<td style="text-align:right;">
35.9730
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
55
</td>
<td style="text-align:right;">
2.798300
</td>
<td style="text-align:right;">
1.2130
</td>
<td style="text-align:right;">
69.780
</td>
<td style="text-align:right;">
59.939
</td>
<td style="text-align:right;">
1.482
</td>
<td style="text-align:right;">
2.671
</td>
<td style="text-align:right;">
0.0010759
</td>
<td style="text-align:right;">
1780.8237
</td>
<td style="text-align:right;">
0.0002432
</td>
<td style="text-align:right;">
0.0480288
</td>
<td style="text-align:right;">
7.212081
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 02.02.06b.tif
</td>
<td style="text-align:right;">
71.9029
</td>
<td style="text-align:right;">
43.0257
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
65
</td>
<td style="text-align:right;">
1.263900
</td>
<td style="text-align:right;">
0.9848
</td>
<td style="text-align:right;">
83.736
</td>
<td style="text-align:right;">
72.005
</td>
<td style="text-align:right;">
1.432
</td>
<td style="text-align:right;">
2.462
</td>
<td style="text-align:right;">
0.0009085
</td>
<td style="text-align:right;">
2415.5018
</td>
<td style="text-align:right;">
0.0001890
</td>
<td style="text-align:right;">
0.0440200
</td>
<td style="text-align:right;">
7.374112
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 02.02.07b.tif
</td>
<td style="text-align:right;">
72.6882
</td>
<td style="text-align:right;">
42.1620
</td>
<td style="text-align:right;">
59
</td>
<td style="text-align:right;">
68
</td>
<td style="text-align:right;">
1.350000
</td>
<td style="text-align:right;">
0.9649
</td>
<td style="text-align:right;">
84.045
</td>
<td style="text-align:right;">
72.617
</td>
<td style="text-align:right;">
1.416
</td>
<td style="text-align:right;">
2.363
</td>
<td style="text-align:right;">
0.0011031
</td>
<td style="text-align:right;">
2426.3949
</td>
<td style="text-align:right;">
0.0001803
</td>
<td style="text-align:right;">
0.0463675
</td>
<td style="text-align:right;">
7.175813
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 02.02.08b.tif
</td>
<td style="text-align:right;">
73.8658
</td>
<td style="text-align:right;">
41.6066
</td>
<td style="text-align:right;">
59
</td>
<td style="text-align:right;">
68
</td>
<td style="text-align:right;">
1.230600
</td>
<td style="text-align:right;">
0.8869
</td>
<td style="text-align:right;">
84.796
</td>
<td style="text-align:right;">
73.793
</td>
<td style="text-align:right;">
1.390
</td>
<td style="text-align:right;">
2.264
</td>
<td style="text-align:right;">
0.0010856
</td>
<td style="text-align:right;">
2358.3841
</td>
<td style="text-align:right;">
0.0001860
</td>
<td style="text-align:right;">
0.0463675
</td>
<td style="text-align:right;">
7.173919
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
08
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 03.01.01b.tif
</td>
<td style="text-align:right;">
55.8962
</td>
<td style="text-align:right;">
35.9399
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
4.099100
</td>
<td style="text-align:right;">
1.5511
</td>
<td style="text-align:right;">
66.524
</td>
<td style="text-align:right;">
55.913
</td>
<td style="text-align:right;">
1.560
</td>
<td style="text-align:right;">
3.117
</td>
<td style="text-align:right;">
0.0011946
</td>
<td style="text-align:right;">
1639.0524
</td>
<td style="text-align:right;">
0.0002845
</td>
<td style="text-align:right;">
0.0520188
</td>
<td style="text-align:right;">
7.175594
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 03.01.02b.tif
</td>
<td style="text-align:right;">
51.6665
</td>
<td style="text-align:right;">
34.1900
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
5.720500
</td>
<td style="text-align:right;">
1.7950
</td>
<td style="text-align:right;">
61.778
</td>
<td style="text-align:right;">
51.501
</td>
<td style="text-align:right;">
1.641
</td>
<td style="text-align:right;">
3.584
</td>
<td style="text-align:right;">
0.0013373
</td>
<td style="text-align:right;">
1393.4983
</td>
<td style="text-align:right;">
0.0003467
</td>
<td style="text-align:right;">
0.0554356
</td>
<td style="text-align:right;">
7.068912
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 03.01.03b.tif
</td>
<td style="text-align:right;">
58.0241
</td>
<td style="text-align:right;">
37.1093
</td>
<td style="text-align:right;">
44
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
3.393400
</td>
<td style="text-align:right;">
1.4349
</td>
<td style="text-align:right;">
68.898
</td>
<td style="text-align:right;">
57.922
</td>
<td style="text-align:right;">
1.541
</td>
<td style="text-align:right;">
3.009
</td>
<td style="text-align:right;">
0.0013366
</td>
<td style="text-align:right;">
1693.8070
</td>
<td style="text-align:right;">
0.0002808
</td>
<td style="text-align:right;">
0.0534106
</td>
<td style="text-align:right;">
7.059800
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 03.01.04b.tif
</td>
<td style="text-align:right;">
55.5856
</td>
<td style="text-align:right;">
36.4150
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
3.949800
</td>
<td style="text-align:right;">
1.5518
</td>
<td style="text-align:right;">
66.411
</td>
<td style="text-align:right;">
55.632
</td>
<td style="text-align:right;">
1.585
</td>
<td style="text-align:right;">
3.219
</td>
<td style="text-align:right;">
0.0012794
</td>
<td style="text-align:right;">
1600.8922
</td>
<td style="text-align:right;">
0.0002998
</td>
<td style="text-align:right;">
0.0536050
</td>
<td style="text-align:right;">
7.122738
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 03.02.05b.tif
</td>
<td style="text-align:right;">
56.6419
</td>
<td style="text-align:right;">
35.3937
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
3.720500
</td>
<td style="text-align:right;">
1.4191
</td>
<td style="text-align:right;">
66.739
</td>
<td style="text-align:right;">
56.644
</td>
<td style="text-align:right;">
1.534
</td>
<td style="text-align:right;">
2.966
</td>
<td style="text-align:right;">
0.0009044
</td>
<td style="text-align:right;">
1588.7627
</td>
<td style="text-align:right;">
0.0002937
</td>
<td style="text-align:right;">
0.0477269
</td>
<td style="text-align:right;">
7.409531
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 03.02.06b.tif
</td>
<td style="text-align:right;">
68.4927
</td>
<td style="text-align:right;">
42.1957
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
61
</td>
<td style="text-align:right;">
1.527500
</td>
<td style="text-align:right;">
1.0613
</td>
<td style="text-align:right;">
80.310
</td>
<td style="text-align:right;">
68.448
</td>
<td style="text-align:right;">
1.462
</td>
<td style="text-align:right;">
2.580
</td>
<td style="text-align:right;">
0.0008500
</td>
<td style="text-align:right;">
2270.7416
</td>
<td style="text-align:right;">
0.0002046
</td>
<td style="text-align:right;">
0.0438731
</td>
<td style="text-align:right;">
7.450787
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 03.02.07b.tif
</td>
<td style="text-align:right;">
68.4871
</td>
<td style="text-align:right;">
41.5217
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
61
</td>
<td style="text-align:right;">
1.620700
</td>
<td style="text-align:right;">
1.0706
</td>
<td style="text-align:right;">
80.022
</td>
<td style="text-align:right;">
68.555
</td>
<td style="text-align:right;">
1.450
</td>
<td style="text-align:right;">
2.561
</td>
<td style="text-align:right;">
0.0010095
</td>
<td style="text-align:right;">
2228.5205
</td>
<td style="text-align:right;">
0.0002064
</td>
<td style="text-align:right;">
0.0462150
</td>
<td style="text-align:right;">
7.284450
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 03.02.08b.tif
</td>
<td style="text-align:right;">
71.6802
</td>
<td style="text-align:right;">
40.9917
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
65
</td>
<td style="text-align:right;">
1.407800
</td>
<td style="text-align:right;">
0.9308
</td>
<td style="text-align:right;">
82.533
</td>
<td style="text-align:right;">
71.793
</td>
<td style="text-align:right;">
1.399
</td>
<td style="text-align:right;">
2.350
</td>
<td style="text-align:right;">
0.0009406
</td>
<td style="text-align:right;">
2268.2571
</td>
<td style="text-align:right;">
0.0001952
</td>
<td style="text-align:right;">
0.0445425
</td>
<td style="text-align:right;">
7.319212
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
08
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 04.01.01b.tif
</td>
<td style="text-align:right;">
61.8293
</td>
<td style="text-align:right;">
38.9452
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
55
</td>
<td style="text-align:right;">
2.745400
</td>
<td style="text-align:right;">
1.3208
</td>
<td style="text-align:right;">
72.897
</td>
<td style="text-align:right;">
61.859
</td>
<td style="text-align:right;">
1.531
</td>
<td style="text-align:right;">
2.864
</td>
<td style="text-align:right;">
0.0010390
</td>
<td style="text-align:right;">
1946.4332
</td>
<td style="text-align:right;">
0.0002376
</td>
<td style="text-align:right;">
0.0483900
</td>
<td style="text-align:right;">
7.297137
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 04.01.02b.tif
</td>
<td style="text-align:right;">
50.3350
</td>
<td style="text-align:right;">
33.4567
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
5.925800
</td>
<td style="text-align:right;">
1.8293
</td>
<td style="text-align:right;">
60.445
</td>
<td style="text-align:right;">
50.213
</td>
<td style="text-align:right;">
1.646
</td>
<td style="text-align:right;">
3.592
</td>
<td style="text-align:right;">
0.0014538
</td>
<td style="text-align:right;">
1368.2009
</td>
<td style="text-align:right;">
0.0003486
</td>
<td style="text-align:right;">
0.0568575
</td>
<td style="text-align:right;">
6.998706
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 04.01.03b.tif
</td>
<td style="text-align:right;">
64.1880
</td>
<td style="text-align:right;">
38.9895
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
56
</td>
<td style="text-align:right;">
2.243100
</td>
<td style="text-align:right;">
1.1771
</td>
<td style="text-align:right;">
75.095
</td>
<td style="text-align:right;">
64.289
</td>
<td style="text-align:right;">
1.475
</td>
<td style="text-align:right;">
2.634
</td>
<td style="text-align:right;">
0.0011221
</td>
<td style="text-align:right;">
1890.7715
</td>
<td style="text-align:right;">
0.0002500
</td>
<td style="text-align:right;">
0.0499144
</td>
<td style="text-align:right;">
7.195444
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 04.01.04b.tif
</td>
<td style="text-align:right;">
62.8682
</td>
<td style="text-align:right;">
38.6867
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
2.551800
</td>
<td style="text-align:right;">
1.2458
</td>
<td style="text-align:right;">
73.673
</td>
<td style="text-align:right;">
62.840
</td>
<td style="text-align:right;">
1.491
</td>
<td style="text-align:right;">
2.750
</td>
<td style="text-align:right;">
0.0010692
</td>
<td style="text-align:right;">
1882.2337
</td>
<td style="text-align:right;">
0.0002492
</td>
<td style="text-align:right;">
0.0490869
</td>
<td style="text-align:right;">
7.251781
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 04.02.05b.tif
</td>
<td style="text-align:right;">
58.8823
</td>
<td style="text-align:right;">
36.6054
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
3.295300
</td>
<td style="text-align:right;">
1.3483
</td>
<td style="text-align:right;">
69.241
</td>
<td style="text-align:right;">
58.826
</td>
<td style="text-align:right;">
1.514
</td>
<td style="text-align:right;">
2.876
</td>
<td style="text-align:right;">
0.0008669
</td>
<td style="text-align:right;">
1694.4234
</td>
<td style="text-align:right;">
0.0002760
</td>
<td style="text-align:right;">
0.0465962
</td>
<td style="text-align:right;">
7.444325
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 04.02.06b.tif
</td>
<td style="text-align:right;">
65.7800
</td>
<td style="text-align:right;">
40.6021
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
2.042100
</td>
<td style="text-align:right;">
1.1687
</td>
<td style="text-align:right;">
77.252
</td>
<td style="text-align:right;">
65.679
</td>
<td style="text-align:right;">
1.485
</td>
<td style="text-align:right;">
2.669
</td>
<td style="text-align:right;">
0.0008515
</td>
<td style="text-align:right;">
2090.7710
</td>
<td style="text-align:right;">
0.0002231
</td>
<td style="text-align:right;">
0.0445294
</td>
<td style="text-align:right;">
7.466656
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 04.02.07b.tif
</td>
<td style="text-align:right;">
68.0246
</td>
<td style="text-align:right;">
40.9984
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
1.812000
</td>
<td style="text-align:right;">
1.1085
</td>
<td style="text-align:right;">
79.437
</td>
<td style="text-align:right;">
68.081
</td>
<td style="text-align:right;">
1.456
</td>
<td style="text-align:right;">
2.537
</td>
<td style="text-align:right;">
0.0010080
</td>
<td style="text-align:right;">
2214.0941
</td>
<td style="text-align:right;">
0.0002045
</td>
<td style="text-align:right;">
0.0459931
</td>
<td style="text-align:right;">
7.293294
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 04.02.08b.tif
</td>
<td style="text-align:right;">
71.2308
</td>
<td style="text-align:right;">
40.6068
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
64
</td>
<td style="text-align:right;">
1.584300
</td>
<td style="text-align:right;">
0.9642
</td>
<td style="text-align:right;">
82.008
</td>
<td style="text-align:right;">
71.249
</td>
<td style="text-align:right;">
1.406
</td>
<td style="text-align:right;">
2.330
</td>
<td style="text-align:right;">
0.0009383
</td>
<td style="text-align:right;">
2203.7091
</td>
<td style="text-align:right;">
0.0002030
</td>
<td style="text-align:right;">
0.0448988
</td>
<td style="text-align:right;">
7.326494
</td>
<td style="text-align:left;">
RMS_46
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
08
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_46 Neocortex 01c.tif
</td>
<td style="text-align:right;">
83.5744
</td>
<td style="text-align:right;">
44.8182
</td>
<td style="text-align:right;">
77
</td>
<td style="text-align:right;">
80
</td>
<td style="text-align:right;">
0.247500
</td>
<td style="text-align:right;">
0.5065
</td>
<td style="text-align:right;">
94.659
</td>
<td style="text-align:right;">
83.533
</td>
<td style="text-align:right;">
1.331
</td>
<td style="text-align:right;">
1.999
</td>
<td style="text-align:right;">
0.0003875
</td>
<td style="text-align:right;">
2525.8258
</td>
<td style="text-align:right;">
0.0001863
</td>
<td style="text-align:right;">
0.0352812
</td>
<td style="text-align:right;">
8.128969
</td>
<td style="text-align:left;">
RMS_46
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
46
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 00.01.01a.tif
</td>
<td style="text-align:right;">
53.8035
</td>
<td style="text-align:right;">
33.6550
</td>
<td style="text-align:right;">
40
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
4.964000
</td>
<td style="text-align:right;">
1.5898
</td>
<td style="text-align:right;">
63.600
</td>
<td style="text-align:right;">
53.642
</td>
<td style="text-align:right;">
1.535
</td>
<td style="text-align:right;">
3.123
</td>
<td style="text-align:right;">
0.0013094
</td>
<td style="text-align:right;">
1405.2497
</td>
<td style="text-align:right;">
0.0003367
</td>
<td style="text-align:right;">
0.0540412
</td>
<td style="text-align:right;">
7.041225
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 00.01.02a.tif
</td>
<td style="text-align:right;">
46.3561
</td>
<td style="text-align:right;">
37.3448
</td>
<td style="text-align:right;">
29
</td>
<td style="text-align:right;">
38
</td>
<td style="text-align:right;">
6.242000
</td>
<td style="text-align:right;">
2.1472
</td>
<td style="text-align:right;">
59.367
</td>
<td style="text-align:right;">
46.390
</td>
<td style="text-align:right;">
1.917
</td>
<td style="text-align:right;">
4.897
</td>
<td style="text-align:right;">
0.0017247
</td>
<td style="text-align:right;">
1408.4875
</td>
<td style="text-align:right;">
0.0003552
</td>
<td style="text-align:right;">
0.0630706
</td>
<td style="text-align:right;">
6.972963
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 00.01.03a.tif
</td>
<td style="text-align:right;">
54.3621
</td>
<td style="text-align:right;">
35.2673
</td>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
3.789200
</td>
<td style="text-align:right;">
1.4212
</td>
<td style="text-align:right;">
64.770
</td>
<td style="text-align:right;">
54.386
</td>
<td style="text-align:right;">
1.544
</td>
<td style="text-align:right;">
3.103
</td>
<td style="text-align:right;">
0.0008281
</td>
<td style="text-align:right;">
1572.0796
</td>
<td style="text-align:right;">
0.0002974
</td>
<td style="text-align:right;">
0.0474975
</td>
<td style="text-align:right;">
7.479031
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 00.02.04a.tif
</td>
<td style="text-align:right;">
48.5297
</td>
<td style="text-align:right;">
33.3570
</td>
<td style="text-align:right;">
35
</td>
<td style="text-align:right;">
42
</td>
<td style="text-align:right;">
6.675900
</td>
<td style="text-align:right;">
1.9876
</td>
<td style="text-align:right;">
58.834
</td>
<td style="text-align:right;">
48.613
</td>
<td style="text-align:right;">
1.700
</td>
<td style="text-align:right;">
3.925
</td>
<td style="text-align:right;">
0.0018372
</td>
<td style="text-align:right;">
1290.2200
</td>
<td style="text-align:right;">
0.0003785
</td>
<td style="text-align:right;">
0.0629606
</td>
<td style="text-align:right;">
6.794700
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 00.02.05a.tif
</td>
<td style="text-align:right;">
50.6021
</td>
<td style="text-align:right;">
34.3425
</td>
<td style="text-align:right;">
36
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
5.112100
</td>
<td style="text-align:right;">
1.7237
</td>
<td style="text-align:right;">
61.145
</td>
<td style="text-align:right;">
50.469
</td>
<td style="text-align:right;">
1.645
</td>
<td style="text-align:right;">
3.531
</td>
<td style="text-align:right;">
0.0013836
</td>
<td style="text-align:right;">
1420.5313
</td>
<td style="text-align:right;">
0.0003384
</td>
<td style="text-align:right;">
0.0567387
</td>
<td style="text-align:right;">
7.049787
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 00.02.06a.tif
</td>
<td style="text-align:right;">
65.1376
</td>
<td style="text-align:right;">
39.5531
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
2.175200
</td>
<td style="text-align:right;">
1.1766
</td>
<td style="text-align:right;">
76.151
</td>
<td style="text-align:right;">
65.195
</td>
<td style="text-align:right;">
1.465
</td>
<td style="text-align:right;">
2.651
</td>
<td style="text-align:right;">
0.0011282
</td>
<td style="text-align:right;">
2111.2717
</td>
<td style="text-align:right;">
0.0002096
</td>
<td style="text-align:right;">
0.0476406
</td>
<td style="text-align:right;">
7.185887
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 02.01.01b.tif
</td>
<td style="text-align:right;">
51.3131
</td>
<td style="text-align:right;">
33.1340
</td>
<td style="text-align:right;">
38
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
5.826200
</td>
<td style="text-align:right;">
1.7615
</td>
<td style="text-align:right;">
61.068
</td>
<td style="text-align:right;">
51.350
</td>
<td style="text-align:right;">
1.615
</td>
<td style="text-align:right;">
3.416
</td>
<td style="text-align:right;">
0.0015438
</td>
<td style="text-align:right;">
1380.8127
</td>
<td style="text-align:right;">
0.0003395
</td>
<td style="text-align:right;">
0.0570300
</td>
<td style="text-align:right;">
6.913050
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 02.01.02b.tif
</td>
<td style="text-align:right;">
68.1875
</td>
<td style="text-align:right;">
38.7339
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
61
</td>
<td style="text-align:right;">
1.864400
</td>
<td style="text-align:right;">
0.9996
</td>
<td style="text-align:right;">
78.283
</td>
<td style="text-align:right;">
68.395
</td>
<td style="text-align:right;">
1.416
</td>
<td style="text-align:right;">
2.390
</td>
<td style="text-align:right;">
0.0011692
</td>
<td style="text-align:right;">
2203.0585
</td>
<td style="text-align:right;">
0.0001796
</td>
<td style="text-align:right;">
0.0466637
</td>
<td style="text-align:right;">
7.100306
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 02.01.03b.tif
</td>
<td style="text-align:right;">
56.3574
</td>
<td style="text-align:right;">
35.5797
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
4.341600
</td>
<td style="text-align:right;">
1.5678
</td>
<td style="text-align:right;">
66.487
</td>
<td style="text-align:right;">
56.326
</td>
<td style="text-align:right;">
1.566
</td>
<td style="text-align:right;">
3.127
</td>
<td style="text-align:right;">
0.0020799
</td>
<td style="text-align:right;">
1533.2831
</td>
<td style="text-align:right;">
0.0003128
</td>
<td style="text-align:right;">
0.0621350
</td>
<td style="text-align:right;">
6.621613
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 02.01.04b.tif
</td>
<td style="text-align:right;">
60.5950
</td>
<td style="text-align:right;">
39.2278
</td>
<td style="text-align:right;">
40
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
2.885700
</td>
<td style="text-align:right;">
1.3933
</td>
<td style="text-align:right;">
72.373
</td>
<td style="text-align:right;">
60.706
</td>
<td style="text-align:right;">
1.534
</td>
<td style="text-align:right;">
2.951
</td>
<td style="text-align:right;">
0.0014355
</td>
<td style="text-align:right;">
1985.5080
</td>
<td style="text-align:right;">
0.0002316
</td>
<td style="text-align:right;">
0.0530994
</td>
<td style="text-align:right;">
6.997150
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 02.02.015b.tif
</td>
<td style="text-align:right;">
63.9115
</td>
<td style="text-align:right;">
39.5960
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
2.236100
</td>
<td style="text-align:right;">
1.1908
</td>
<td style="text-align:right;">
75.281
</td>
<td style="text-align:right;">
63.896
</td>
<td style="text-align:right;">
1.475
</td>
<td style="text-align:right;">
2.667
</td>
<td style="text-align:right;">
0.0008555
</td>
<td style="text-align:right;">
2043.8818
</td>
<td style="text-align:right;">
0.0002235
</td>
<td style="text-align:right;">
0.0443387
</td>
<td style="text-align:right;">
7.451937
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 02.02.05b.tif
</td>
<td style="text-align:right;">
68.8478
</td>
<td style="text-align:right;">
38.3473
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
65
</td>
<td style="text-align:right;">
2.314700
</td>
<td style="text-align:right;">
1.0742
</td>
<td style="text-align:right;">
78.593
</td>
<td style="text-align:right;">
68.729
</td>
<td style="text-align:right;">
1.412
</td>
<td style="text-align:right;">
2.406
</td>
<td style="text-align:right;">
0.0018486
</td>
<td style="text-align:right;">
1981.6781
</td>
<td style="text-align:right;">
0.0002240
</td>
<td style="text-align:right;">
0.0564219
</td>
<td style="text-align:right;">
6.665500
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 02.02.06b.tif
</td>
<td style="text-align:right;">
66.6958
</td>
<td style="text-align:right;">
38.6853
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
61
</td>
<td style="text-align:right;">
2.226600
</td>
<td style="text-align:right;">
1.1008
</td>
<td style="text-align:right;">
77.303
</td>
<td style="text-align:right;">
66.576
</td>
<td style="text-align:right;">
1.428
</td>
<td style="text-align:right;">
2.464
</td>
<td style="text-align:right;">
0.0016589
</td>
<td style="text-align:right;">
1980.0430
</td>
<td style="text-align:right;">
0.0002280
</td>
<td style="text-align:right;">
0.0550325
</td>
<td style="text-align:right;">
6.777219
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 02.02.07b.tif
</td>
<td style="text-align:right;">
62.9949
</td>
<td style="text-align:right;">
40.4582
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
55
</td>
<td style="text-align:right;">
2.618900
</td>
<td style="text-align:right;">
1.3444
</td>
<td style="text-align:right;">
74.453
</td>
<td style="text-align:right;">
62.354
</td>
<td style="text-align:right;">
1.565
</td>
<td style="text-align:right;">
2.966
</td>
<td style="text-align:right;">
0.0013154
</td>
<td style="text-align:right;">
2031.6266
</td>
<td style="text-align:right;">
0.0002327
</td>
<td style="text-align:right;">
0.0512806
</td>
<td style="text-align:right;">
7.081319
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 02.02.08b.tif
</td>
<td style="text-align:right;">
70.1254
</td>
<td style="text-align:right;">
40.2275
</td>
<td style="text-align:right;">
55
</td>
<td style="text-align:right;">
63
</td>
<td style="text-align:right;">
1.533300
</td>
<td style="text-align:right;">
0.9510
</td>
<td style="text-align:right;">
80.413
</td>
<td style="text-align:right;">
69.452
</td>
<td style="text-align:right;">
1.435
</td>
<td style="text-align:right;">
2.396
</td>
<td style="text-align:right;">
0.0010235
</td>
<td style="text-align:right;">
2304.6418
</td>
<td style="text-align:right;">
0.0001800
</td>
<td style="text-align:right;">
0.0443325
</td>
<td style="text-align:right;">
7.229581
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
08
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 02.02.09b.tif
</td>
<td style="text-align:right;">
59.8405
</td>
<td style="text-align:right;">
35.6478
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
56
</td>
<td style="text-align:right;">
3.829100
</td>
<td style="text-align:right;">
1.3876
</td>
<td style="text-align:right;">
69.875
</td>
<td style="text-align:right;">
59.965
</td>
<td style="text-align:right;">
1.476
</td>
<td style="text-align:right;">
2.750
</td>
<td style="text-align:right;">
0.0017644
</td>
<td style="text-align:right;">
1709.5151
</td>
<td style="text-align:right;">
0.0002597
</td>
<td style="text-align:right;">
0.0568906
</td>
<td style="text-align:right;">
6.741206
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
09
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 02.02.10b.tif
</td>
<td style="text-align:right;">
65.2075
</td>
<td style="text-align:right;">
38.0608
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
59
</td>
<td style="text-align:right;">
2.393100
</td>
<td style="text-align:right;">
1.1393
</td>
<td style="text-align:right;">
75.528
</td>
<td style="text-align:right;">
65.168
</td>
<td style="text-align:right;">
1.441
</td>
<td style="text-align:right;">
2.520
</td>
<td style="text-align:right;">
0.0013766
</td>
<td style="text-align:right;">
2044.2824
</td>
<td style="text-align:right;">
0.0002054
</td>
<td style="text-align:right;">
0.0499431
</td>
<td style="text-align:right;">
6.960569
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
10
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 02.02.11b.tif
</td>
<td style="text-align:right;">
60.6458
</td>
<td style="text-align:right;">
36.0199
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
56
</td>
<td style="text-align:right;">
3.188700
</td>
<td style="text-align:right;">
1.2739
</td>
<td style="text-align:right;">
70.531
</td>
<td style="text-align:right;">
60.759
</td>
<td style="text-align:right;">
1.474
</td>
<td style="text-align:right;">
2.678
</td>
<td style="text-align:right;">
0.0012504
</td>
<td style="text-align:right;">
1730.7097
</td>
<td style="text-align:right;">
0.0002586
</td>
<td style="text-align:right;">
0.0505644
</td>
<td style="text-align:right;">
7.063275
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
11
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 02.02.12b.tif
</td>
<td style="text-align:right;">
62.7780
</td>
<td style="text-align:right;">
38.1498
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
58
</td>
<td style="text-align:right;">
2.602600
</td>
<td style="text-align:right;">
1.2269
</td>
<td style="text-align:right;">
73.419
</td>
<td style="text-align:right;">
62.706
</td>
<td style="text-align:right;">
1.480
</td>
<td style="text-align:right;">
2.690
</td>
<td style="text-align:right;">
0.0010753
</td>
<td style="text-align:right;">
1924.9851
</td>
<td style="text-align:right;">
0.0002341
</td>
<td style="text-align:right;">
0.0477494
</td>
<td style="text-align:right;">
7.221494
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
12
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 02.02.13b.tif
</td>
<td style="text-align:right;">
68.8915
</td>
<td style="text-align:right;">
40.5968
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
63
</td>
<td style="text-align:right;">
1.799200
</td>
<td style="text-align:right;">
1.0630
</td>
<td style="text-align:right;">
79.967
</td>
<td style="text-align:right;">
68.969
</td>
<td style="text-align:right;">
1.438
</td>
<td style="text-align:right;">
2.475
</td>
<td style="text-align:right;">
0.0009575
</td>
<td style="text-align:right;">
2183.1222
</td>
<td style="text-align:right;">
0.0002065
</td>
<td style="text-align:right;">
0.0449087
</td>
<td style="text-align:right;">
7.323762
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
13
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 02.02.14b.tif
</td>
<td style="text-align:right;">
63.8249
</td>
<td style="text-align:right;">
39.3357
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
2.496500
</td>
<td style="text-align:right;">
1.2544
</td>
<td style="text-align:right;">
74.982
</td>
<td style="text-align:right;">
63.886
</td>
<td style="text-align:right;">
1.492
</td>
<td style="text-align:right;">
2.714
</td>
<td style="text-align:right;">
0.0011559
</td>
<td style="text-align:right;">
1990.3412
</td>
<td style="text-align:right;">
0.0002320
</td>
<td style="text-align:right;">
0.0493481
</td>
<td style="text-align:right;">
7.176075
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
14
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 03.01.01b.tif
</td>
<td style="text-align:right;">
51.6535
</td>
<td style="text-align:right;">
32.7798
</td>
<td style="text-align:right;">
40
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
5.624200
</td>
<td style="text-align:right;">
1.6996
</td>
<td style="text-align:right;">
61.337
</td>
<td style="text-align:right;">
51.634
</td>
<td style="text-align:right;">
1.557
</td>
<td style="text-align:right;">
3.266
</td>
<td style="text-align:right;">
0.0016568
</td>
<td style="text-align:right;">
1362.3990
</td>
<td style="text-align:right;">
0.0003422
</td>
<td style="text-align:right;">
0.0584412
</td>
<td style="text-align:right;">
6.833100
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 03.01.02b.tif
</td>
<td style="text-align:right;">
62.9490
</td>
<td style="text-align:right;">
36.5547
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
56
</td>
<td style="text-align:right;">
2.839100
</td>
<td style="text-align:right;">
1.1952
</td>
<td style="text-align:right;">
73.071
</td>
<td style="text-align:right;">
63.062
</td>
<td style="text-align:right;">
1.423
</td>
<td style="text-align:right;">
2.519
</td>
<td style="text-align:right;">
0.0013495
</td>
<td style="text-align:right;">
1885.4588
</td>
<td style="text-align:right;">
0.0002227
</td>
<td style="text-align:right;">
0.0503869
</td>
<td style="text-align:right;">
6.976919
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 03.01.03b.tif
</td>
<td style="text-align:right;">
55.8634
</td>
<td style="text-align:right;">
35.0942
</td>
<td style="text-align:right;">
44
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
4.526200
</td>
<td style="text-align:right;">
1.5753
</td>
<td style="text-align:right;">
65.816
</td>
<td style="text-align:right;">
55.799
</td>
<td style="text-align:right;">
1.549
</td>
<td style="text-align:right;">
3.122
</td>
<td style="text-align:right;">
0.0022031
</td>
<td style="text-align:right;">
1487.9840
</td>
<td style="text-align:right;">
0.0003228
</td>
<td style="text-align:right;">
0.0637812
</td>
<td style="text-align:right;">
6.561175
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 03.01.04b.tif
</td>
<td style="text-align:right;">
59.8635
</td>
<td style="text-align:right;">
38.8020
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
2.905800
</td>
<td style="text-align:right;">
1.3799
</td>
<td style="text-align:right;">
71.226
</td>
<td style="text-align:right;">
59.892
</td>
<td style="text-align:right;">
1.556
</td>
<td style="text-align:right;">
3.003
</td>
<td style="text-align:right;">
0.0015408
</td>
<td style="text-align:right;">
1964.9967
</td>
<td style="text-align:right;">
0.0002319
</td>
<td style="text-align:right;">
0.0542919
</td>
<td style="text-align:right;">
6.917981
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 03.02.05b.tif
</td>
<td style="text-align:right;">
67.0907
</td>
<td style="text-align:right;">
38.6493
</td>
<td style="text-align:right;">
56
</td>
<td style="text-align:right;">
61
</td>
<td style="text-align:right;">
2.379400
</td>
<td style="text-align:right;">
1.1347
</td>
<td style="text-align:right;">
77.657
</td>
<td style="text-align:right;">
66.958
</td>
<td style="text-align:right;">
1.426
</td>
<td style="text-align:right;">
2.464
</td>
<td style="text-align:right;">
0.0016928
</td>
<td style="text-align:right;">
1972.1030
</td>
<td style="text-align:right;">
0.0002294
</td>
<td style="text-align:right;">
0.0553950
</td>
<td style="text-align:right;">
6.767812
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 03.02.06b.tif
</td>
<td style="text-align:right;">
68.7700
</td>
<td style="text-align:right;">
39.6610
</td>
<td style="text-align:right;">
55
</td>
<td style="text-align:right;">
65
</td>
<td style="text-align:right;">
1.940700
</td>
<td style="text-align:right;">
1.0488
</td>
<td style="text-align:right;">
79.193
</td>
<td style="text-align:right;">
68.653
</td>
<td style="text-align:right;">
1.428
</td>
<td style="text-align:right;">
2.456
</td>
<td style="text-align:right;">
0.0017535
</td>
<td style="text-align:right;">
2068.9831
</td>
<td style="text-align:right;">
0.0002194
</td>
<td style="text-align:right;">
0.0560444
</td>
<td style="text-align:right;">
6.717462
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 03.02.07b.tif
</td>
<td style="text-align:right;">
61.8216
</td>
<td style="text-align:right;">
40.4457
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
53
</td>
<td style="text-align:right;">
2.369200
</td>
<td style="text-align:right;">
1.3015
</td>
<td style="text-align:right;">
73.681
</td>
<td style="text-align:right;">
61.810
</td>
<td style="text-align:right;">
1.542
</td>
<td style="text-align:right;">
2.945
</td>
<td style="text-align:right;">
0.0010656
</td>
<td style="text-align:right;">
2028.5645
</td>
<td style="text-align:right;">
0.0002333
</td>
<td style="text-align:right;">
0.0489900
</td>
<td style="text-align:right;">
7.284425
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 03.02.08b.tif
</td>
<td style="text-align:right;">
65.1855
</td>
<td style="text-align:right;">
39.3342
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
61
</td>
<td style="text-align:right;">
2.210100
</td>
<td style="text-align:right;">
1.1540
</td>
<td style="text-align:right;">
75.988
</td>
<td style="text-align:right;">
65.150
</td>
<td style="text-align:right;">
1.463
</td>
<td style="text-align:right;">
2.625
</td>
<td style="text-align:right;">
0.0009670
</td>
<td style="text-align:right;">
2025.0185
</td>
<td style="text-align:right;">
0.0002250
</td>
<td style="text-align:right;">
0.0458250
</td>
<td style="text-align:right;">
7.320663
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
08
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 03.02.09b.tif
</td>
<td style="text-align:right;">
60.6034
</td>
<td style="text-align:right;">
35.7516
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
3.521400
</td>
<td style="text-align:right;">
1.3237
</td>
<td style="text-align:right;">
70.275
</td>
<td style="text-align:right;">
60.471
</td>
<td style="text-align:right;">
1.472
</td>
<td style="text-align:right;">
2.723
</td>
<td style="text-align:right;">
0.0019085
</td>
<td style="text-align:right;">
1682.8101
</td>
<td style="text-align:right;">
0.0002694
</td>
<td style="text-align:right;">
0.0587306
</td>
<td style="text-align:right;">
6.656631
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
09
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 03.02.10b.tif
</td>
<td style="text-align:right;">
65.0176
</td>
<td style="text-align:right;">
38.1363
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
2.309400
</td>
<td style="text-align:right;">
1.1206
</td>
<td style="text-align:right;">
75.590
</td>
<td style="text-align:right;">
65.123
</td>
<td style="text-align:right;">
1.429
</td>
<td style="text-align:right;">
2.490
</td>
<td style="text-align:right;">
0.0014198
</td>
<td style="text-align:right;">
2003.9475
</td>
<td style="text-align:right;">
0.0002159
</td>
<td style="text-align:right;">
0.0507931
</td>
<td style="text-align:right;">
6.926475
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
10
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 03.02.11b.tif
</td>
<td style="text-align:right;">
64.3818
</td>
<td style="text-align:right;">
39.1938
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
2.422500
</td>
<td style="text-align:right;">
1.2045
</td>
<td style="text-align:right;">
75.309
</td>
<td style="text-align:right;">
64.438
</td>
<td style="text-align:right;">
1.470
</td>
<td style="text-align:right;">
2.691
</td>
<td style="text-align:right;">
0.0011473
</td>
<td style="text-align:right;">
1990.6657
</td>
<td style="text-align:right;">
0.0002307
</td>
<td style="text-align:right;">
0.0485112
</td>
<td style="text-align:right;">
7.158106
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
11
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 03.02.12b.tif
</td>
<td style="text-align:right;">
63.1867
</td>
<td style="text-align:right;">
38.8738
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
55
</td>
<td style="text-align:right;">
2.538700
</td>
<td style="text-align:right;">
1.2403
</td>
<td style="text-align:right;">
74.025
</td>
<td style="text-align:right;">
63.204
</td>
<td style="text-align:right;">
1.503
</td>
<td style="text-align:right;">
2.740
</td>
<td style="text-align:right;">
0.0009743
</td>
<td style="text-align:right;">
1998.1089
</td>
<td style="text-align:right;">
0.0002256
</td>
<td style="text-align:right;">
0.0462331
</td>
<td style="text-align:right;">
7.329475
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
12
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 03.02.13b.tif
</td>
<td style="text-align:right;">
66.8588
</td>
<td style="text-align:right;">
40.7355
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
61
</td>
<td style="text-align:right;">
1.809100
</td>
<td style="text-align:right;">
1.0991
</td>
<td style="text-align:right;">
78.217
</td>
<td style="text-align:right;">
66.777
</td>
<td style="text-align:right;">
1.469
</td>
<td style="text-align:right;">
2.587
</td>
<td style="text-align:right;">
0.0008149
</td>
<td style="text-align:right;">
2134.6758
</td>
<td style="text-align:right;">
0.0002164
</td>
<td style="text-align:right;">
0.0438119
</td>
<td style="text-align:right;">
7.493313
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
13
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 03.02.14b.tif
</td>
<td style="text-align:right;">
74.8494
</td>
<td style="text-align:right;">
46.0394
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
68
</td>
<td style="text-align:right;">
0.699600
</td>
<td style="text-align:right;">
0.8643
</td>
<td style="text-align:right;">
87.636
</td>
<td style="text-align:right;">
74.782
</td>
<td style="text-align:right;">
1.444
</td>
<td style="text-align:right;">
2.427
</td>
<td style="text-align:right;">
0.0006095
</td>
<td style="text-align:right;">
2590.7321
</td>
<td style="text-align:right;">
0.0001844
</td>
<td style="text-align:right;">
0.0399850
</td>
<td style="text-align:right;">
7.741106
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
14
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 03.02.15b.tif
</td>
<td style="text-align:right;">
65.5435
</td>
<td style="text-align:right;">
41.7776
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
59
</td>
<td style="text-align:right;">
1.743100
</td>
<td style="text-align:right;">
1.1367
</td>
<td style="text-align:right;">
77.469
</td>
<td style="text-align:right;">
65.375
</td>
<td style="text-align:right;">
1.512
</td>
<td style="text-align:right;">
2.745
</td>
<td style="text-align:right;">
0.0006830
</td>
<td style="text-align:right;">
2179.7660
</td>
<td style="text-align:right;">
0.0002163
</td>
<td style="text-align:right;">
0.0418506
</td>
<td style="text-align:right;">
7.681425
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
15
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 04.01.01b.tif
</td>
<td style="text-align:right;">
52.5327
</td>
<td style="text-align:right;">
33.8612
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
5.149800
</td>
<td style="text-align:right;">
1.6626
</td>
<td style="text-align:right;">
62.512
</td>
<td style="text-align:right;">
52.582
</td>
<td style="text-align:right;">
1.586
</td>
<td style="text-align:right;">
3.310
</td>
<td style="text-align:right;">
0.0014029
</td>
<td style="text-align:right;">
1444.8359
</td>
<td style="text-align:right;">
0.0003239
</td>
<td style="text-align:right;">
0.0554319
</td>
<td style="text-align:right;">
6.999437
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 04.01.02b.tif
</td>
<td style="text-align:right;">
68.1907
</td>
<td style="text-align:right;">
39.8505
</td>
<td style="text-align:right;">
53
</td>
<td style="text-align:right;">
64
</td>
<td style="text-align:right;">
1.765000
</td>
<td style="text-align:right;">
1.0136
</td>
<td style="text-align:right;">
78.980
</td>
<td style="text-align:right;">
68.220
</td>
<td style="text-align:right;">
1.427
</td>
<td style="text-align:right;">
2.418
</td>
<td style="text-align:right;">
0.0009682
</td>
<td style="text-align:right;">
2249.9753
</td>
<td style="text-align:right;">
0.0001854
</td>
<td style="text-align:right;">
0.0446381
</td>
<td style="text-align:right;">
7.287806
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 04.01.03b.tif
</td>
<td style="text-align:right;">
55.2503
</td>
<td style="text-align:right;">
35.6191
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
4.394600
</td>
<td style="text-align:right;">
1.5983
</td>
<td style="text-align:right;">
65.574
</td>
<td style="text-align:right;">
55.388
</td>
<td style="text-align:right;">
1.592
</td>
<td style="text-align:right;">
3.249
</td>
<td style="text-align:right;">
0.0019364
</td>
<td style="text-align:right;">
1504.2419
</td>
<td style="text-align:right;">
0.0003221
</td>
<td style="text-align:right;">
0.0618644
</td>
<td style="text-align:right;">
6.701881
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 04.01.04b.tif
</td>
<td style="text-align:right;">
61.8435
</td>
<td style="text-align:right;">
40.4677
</td>
<td style="text-align:right;">
40
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
2.553300
</td>
<td style="text-align:right;">
1.3491
</td>
<td style="text-align:right;">
74.080
</td>
<td style="text-align:right;">
61.963
</td>
<td style="text-align:right;">
1.537
</td>
<td style="text-align:right;">
2.937
</td>
<td style="text-align:right;">
0.0013554
</td>
<td style="text-align:right;">
2114.6567
</td>
<td style="text-align:right;">
0.0002175
</td>
<td style="text-align:right;">
0.0520900
</td>
<td style="text-align:right;">
7.054781
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 04.02.05b.tif
</td>
<td style="text-align:right;">
69.1708
</td>
<td style="text-align:right;">
40.1823
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
64
</td>
<td style="text-align:right;">
1.741700
</td>
<td style="text-align:right;">
1.0130
</td>
<td style="text-align:right;">
80.269
</td>
<td style="text-align:right;">
69.291
</td>
<td style="text-align:right;">
1.403
</td>
<td style="text-align:right;">
2.381
</td>
<td style="text-align:right;">
0.0011164
</td>
<td style="text-align:right;">
2053.4182
</td>
<td style="text-align:right;">
0.0002271
</td>
<td style="text-align:right;">
0.0488044
</td>
<td style="text-align:right;">
7.156975
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 04.02.06b.tif
</td>
<td style="text-align:right;">
68.3781
</td>
<td style="text-align:right;">
40.3936
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
62
</td>
<td style="text-align:right;">
1.698100
</td>
<td style="text-align:right;">
1.0107
</td>
<td style="text-align:right;">
79.277
</td>
<td style="text-align:right;">
68.322
</td>
<td style="text-align:right;">
1.440
</td>
<td style="text-align:right;">
2.470
</td>
<td style="text-align:right;">
0.0011727
</td>
<td style="text-align:right;">
2108.1299
</td>
<td style="text-align:right;">
0.0002185
</td>
<td style="text-align:right;">
0.0491050
</td>
<td style="text-align:right;">
7.103056
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 04.02.07b.tif
</td>
<td style="text-align:right;">
63.3114
</td>
<td style="text-align:right;">
42.1498
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
1.954900
</td>
<td style="text-align:right;">
1.2381
</td>
<td style="text-align:right;">
75.786
</td>
<td style="text-align:right;">
63.305
</td>
<td style="text-align:right;">
1.561
</td>
<td style="text-align:right;">
2.932
</td>
<td style="text-align:right;">
0.0007990
</td>
<td style="text-align:right;">
2172.3584
</td>
<td style="text-align:right;">
0.0002196
</td>
<td style="text-align:right;">
0.0453187
</td>
<td style="text-align:right;">
7.570437
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 04.02.08b.tif
</td>
<td style="text-align:right;">
68.5540
</td>
<td style="text-align:right;">
42.1899
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
62
</td>
<td style="text-align:right;">
1.623400
</td>
<td style="text-align:right;">
1.0723
</td>
<td style="text-align:right;">
80.634
</td>
<td style="text-align:right;">
68.471
</td>
<td style="text-align:right;">
1.452
</td>
<td style="text-align:right;">
2.562
</td>
<td style="text-align:right;">
0.0007108
</td>
<td style="text-align:right;">
2323.2985
</td>
<td style="text-align:right;">
0.0001964
</td>
<td style="text-align:right;">
0.0410300
</td>
<td style="text-align:right;">
7.617944
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
08
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 04.02.09b.tif
</td>
<td style="text-align:right;">
63.6906
</td>
<td style="text-align:right;">
37.5184
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
2.583800
</td>
<td style="text-align:right;">
1.1637
</td>
<td style="text-align:right;">
73.878
</td>
<td style="text-align:right;">
63.757
</td>
<td style="text-align:right;">
1.444
</td>
<td style="text-align:right;">
2.591
</td>
<td style="text-align:right;">
0.0012009
</td>
<td style="text-align:right;">
1865.9377
</td>
<td style="text-align:right;">
0.0002414
</td>
<td style="text-align:right;">
0.0501112
</td>
<td style="text-align:right;">
7.098525
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
09
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 04.02.10b.tif
</td>
<td style="text-align:right;">
68.7662
</td>
<td style="text-align:right;">
40.0380
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
61
</td>
<td style="text-align:right;">
1.769200
</td>
<td style="text-align:right;">
1.0262
</td>
<td style="text-align:right;">
79.533
</td>
<td style="text-align:right;">
68.856
</td>
<td style="text-align:right;">
1.420
</td>
<td style="text-align:right;">
2.452
</td>
<td style="text-align:right;">
0.0010092
</td>
<td style="text-align:right;">
2218.0924
</td>
<td style="text-align:right;">
0.0001941
</td>
<td style="text-align:right;">
0.0451719
</td>
<td style="text-align:right;">
7.258994
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
10
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 04.02.11b.tif
</td>
<td style="text-align:right;">
66.7724
</td>
<td style="text-align:right;">
40.5977
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
61
</td>
<td style="text-align:right;">
2.015100
</td>
<td style="text-align:right;">
1.1369
</td>
<td style="text-align:right;">
78.066
</td>
<td style="text-align:right;">
66.691
</td>
<td style="text-align:right;">
1.473
</td>
<td style="text-align:right;">
2.616
</td>
<td style="text-align:right;">
0.0008202
</td>
<td style="text-align:right;">
2121.4439
</td>
<td style="text-align:right;">
0.0002176
</td>
<td style="text-align:right;">
0.0435756
</td>
<td style="text-align:right;">
7.485500
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
11
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 04.02.12b.tif
</td>
<td style="text-align:right;">
64.9798
</td>
<td style="text-align:right;">
40.2637
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
59
</td>
<td style="text-align:right;">
2.144800
</td>
<td style="text-align:right;">
1.1841
</td>
<td style="text-align:right;">
76.514
</td>
<td style="text-align:right;">
64.942
</td>
<td style="text-align:right;">
1.480
</td>
<td style="text-align:right;">
2.683
</td>
<td style="text-align:right;">
0.0007341
</td>
<td style="text-align:right;">
2131.6219
</td>
<td style="text-align:right;">
0.0002128
</td>
<td style="text-align:right;">
0.0422019
</td>
<td style="text-align:right;">
7.607469
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
12
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 04.02.13b.tif
</td>
<td style="text-align:right;">
70.5706
</td>
<td style="text-align:right;">
42.7135
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
65
</td>
<td style="text-align:right;">
1.335100
</td>
<td style="text-align:right;">
0.9923
</td>
<td style="text-align:right;">
82.231
</td>
<td style="text-align:right;">
70.385
</td>
<td style="text-align:right;">
1.459
</td>
<td style="text-align:right;">
2.514
</td>
<td style="text-align:right;">
0.0005963
</td>
<td style="text-align:right;">
2360.8499
</td>
<td style="text-align:right;">
0.0001948
</td>
<td style="text-align:right;">
0.0390894
</td>
<td style="text-align:right;">
7.783569
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
13
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 04.02.14b.tif
</td>
<td style="text-align:right;">
75.7847
</td>
<td style="text-align:right;">
46.0134
</td>
<td style="text-align:right;">
53
</td>
<td style="text-align:right;">
68
</td>
<td style="text-align:right;">
0.653400
</td>
<td style="text-align:right;">
0.8250
</td>
<td style="text-align:right;">
88.511
</td>
<td style="text-align:right;">
75.734
</td>
<td style="text-align:right;">
1.427
</td>
<td style="text-align:right;">
2.372
</td>
<td style="text-align:right;">
0.0004455
</td>
<td style="text-align:right;">
2724.0129
</td>
<td style="text-align:right;">
0.0001696
</td>
<td style="text-align:right;">
0.0355094
</td>
<td style="text-align:right;">
8.039669
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
14
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_47 04.02.15b.tif
</td>
<td style="text-align:right;">
71.4652
</td>
<td style="text-align:right;">
44.6503
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
64
</td>
<td style="text-align:right;">
1.112700
</td>
<td style="text-align:right;">
0.9835
</td>
<td style="text-align:right;">
84.158
</td>
<td style="text-align:right;">
71.444
</td>
<td style="text-align:right;">
1.467
</td>
<td style="text-align:right;">
2.547
</td>
<td style="text-align:right;">
0.0005052
</td>
<td style="text-align:right;">
2459.9920
</td>
<td style="text-align:right;">
0.0001931
</td>
<td style="text-align:right;">
0.0379231
</td>
<td style="text-align:right;">
7.954225
</td>
<td style="text-align:left;">
RMS_47
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
15
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
47
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_48 Neocortex 01c.tif
</td>
<td style="text-align:right;">
87.6029
</td>
<td style="text-align:right;">
48.6034
</td>
<td style="text-align:right;">
85
</td>
<td style="text-align:right;">
85
</td>
<td style="text-align:right;">
-0.197600
</td>
<td style="text-align:right;">
0.4063
</td>
<td style="text-align:right;">
99.935
</td>
<td style="text-align:right;">
87.652
</td>
<td style="text-align:right;">
1.327
</td>
<td style="text-align:right;">
1.986
</td>
<td style="text-align:right;">
0.0002312
</td>
<td style="text-align:right;">
2677.8130
</td>
<td style="text-align:right;">
0.0001842
</td>
<td style="text-align:right;">
0.0326419
</td>
<td style="text-align:right;">
8.608175
</td>
<td style="text-align:left;">
RMS_48
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
48
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 00.01.01a.tif
</td>
<td style="text-align:right;">
44.6280
</td>
<td style="text-align:right;">
30.2482
</td>
<td style="text-align:right;">
34
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
9.368100
</td>
<td style="text-align:right;">
2.2234
</td>
<td style="text-align:right;">
53.824
</td>
<td style="text-align:right;">
44.539
</td>
<td style="text-align:right;">
1.734
</td>
<td style="text-align:right;">
4.255
</td>
<td style="text-align:right;">
0.0013729
</td>
<td style="text-align:right;">
1099.4935
</td>
<td style="text-align:right;">
0.0004375
</td>
<td style="text-align:right;">
0.0600562
</td>
<td style="text-align:right;">
7.049944
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 00.01.02a.tif
</td>
<td style="text-align:right;">
55.3201
</td>
<td style="text-align:right;">
33.6292
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
4.849000
</td>
<td style="text-align:right;">
1.5320
</td>
<td style="text-align:right;">
64.579
</td>
<td style="text-align:right;">
55.324
</td>
<td style="text-align:right;">
1.526
</td>
<td style="text-align:right;">
3.032
</td>
<td style="text-align:right;">
0.0013986
</td>
<td style="text-align:right;">
1517.5212
</td>
<td style="text-align:right;">
0.0002930
</td>
<td style="text-align:right;">
0.0537181
</td>
<td style="text-align:right;">
6.969362
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 00.01.03a.tif
</td>
<td style="text-align:right;">
45.8707
</td>
<td style="text-align:right;">
31.4681
</td>
<td style="text-align:right;">
35
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
9.150600
</td>
<td style="text-align:right;">
2.2917
</td>
<td style="text-align:right;">
55.506
</td>
<td style="text-align:right;">
45.921
</td>
<td style="text-align:right;">
1.754
</td>
<td style="text-align:right;">
4.367
</td>
<td style="text-align:right;">
0.0017469
</td>
<td style="text-align:right;">
1175.3700
</td>
<td style="text-align:right;">
0.0004118
</td>
<td style="text-align:right;">
0.0622325
</td>
<td style="text-align:right;">
6.830525
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 00.02.04a.tif
</td>
<td style="text-align:right;">
42.3669
</td>
<td style="text-align:right;">
33.3036
</td>
<td style="text-align:right;">
29
</td>
<td style="text-align:right;">
34
</td>
<td style="text-align:right;">
9.749400
</td>
<td style="text-align:right;">
2.5464
</td>
<td style="text-align:right;">
53.765
</td>
<td style="text-align:right;">
42.283
</td>
<td style="text-align:right;">
1.977
</td>
<td style="text-align:right;">
5.530
</td>
<td style="text-align:right;">
0.0013982
</td>
<td style="text-align:right;">
1127.2733
</td>
<td style="text-align:right;">
0.0004437
</td>
<td style="text-align:right;">
0.0635394
</td>
<td style="text-align:right;">
7.124056
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 00.02.05a.tif
</td>
<td style="text-align:right;">
42.8774
</td>
<td style="text-align:right;">
31.7938
</td>
<td style="text-align:right;">
31
</td>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
9.507700
</td>
<td style="text-align:right;">
2.4287
</td>
<td style="text-align:right;">
53.447
</td>
<td style="text-align:right;">
42.905
</td>
<td style="text-align:right;">
1.851
</td>
<td style="text-align:right;">
4.936
</td>
<td style="text-align:right;">
0.0015791
</td>
<td style="text-align:right;">
1098.5385
</td>
<td style="text-align:right;">
0.0004524
</td>
<td style="text-align:right;">
0.0631125
</td>
<td style="text-align:right;">
6.980700
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 00.02.06a.tif
</td>
<td style="text-align:right;">
41.8088
</td>
<td style="text-align:right;">
30.6737
</td>
<td style="text-align:right;">
34
</td>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
10.626600
</td>
<td style="text-align:right;">
2.5689
</td>
<td style="text-align:right;">
51.859
</td>
<td style="text-align:right;">
41.736
</td>
<td style="text-align:right;">
1.878
</td>
<td style="text-align:right;">
5.110
</td>
<td style="text-align:right;">
0.0020730
</td>
<td style="text-align:right;">
1022.2217
</td>
<td style="text-align:right;">
0.0004860
</td>
<td style="text-align:right;">
0.0683962
</td>
<td style="text-align:right;">
6.723600
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 02.01.01b.tif
</td>
<td style="text-align:right;">
52.1395
</td>
<td style="text-align:right;">
33.7813
</td>
<td style="text-align:right;">
36
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
5.284300
</td>
<td style="text-align:right;">
1.6812
</td>
<td style="text-align:right;">
62.149
</td>
<td style="text-align:right;">
52.026
</td>
<td style="text-align:right;">
1.599
</td>
<td style="text-align:right;">
3.341
</td>
<td style="text-align:right;">
0.0013220
</td>
<td style="text-align:right;">
1398.7704
</td>
<td style="text-align:right;">
0.0003406
</td>
<td style="text-align:right;">
0.0557537
</td>
<td style="text-align:right;">
7.060981
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 02.01.02b.tif
</td>
<td style="text-align:right;">
53.7688
</td>
<td style="text-align:right;">
33.9616
</td>
<td style="text-align:right;">
40
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
4.656100
</td>
<td style="text-align:right;">
1.5433
</td>
<td style="text-align:right;">
63.623
</td>
<td style="text-align:right;">
53.635
</td>
<td style="text-align:right;">
1.549
</td>
<td style="text-align:right;">
3.126
</td>
<td style="text-align:right;">
0.0015231
</td>
<td style="text-align:right;">
1466.3898
</td>
<td style="text-align:right;">
0.0003174
</td>
<td style="text-align:right;">
0.0572581
</td>
<td style="text-align:right;">
6.899325
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 02.01.03b.tif
</td>
<td style="text-align:right;">
49.9394
</td>
<td style="text-align:right;">
34.6403
</td>
<td style="text-align:right;">
36
</td>
<td style="text-align:right;">
42
</td>
<td style="text-align:right;">
6.151100
</td>
<td style="text-align:right;">
1.9545
</td>
<td style="text-align:right;">
60.717
</td>
<td style="text-align:right;">
49.949
</td>
<td style="text-align:right;">
1.709
</td>
<td style="text-align:right;">
3.909
</td>
<td style="text-align:right;">
0.0012546
</td>
<td style="text-align:right;">
1397.6573
</td>
<td style="text-align:right;">
0.0003488
</td>
<td style="text-align:right;">
0.0552238
</td>
<td style="text-align:right;">
7.182925
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 02.01.04b.tif
</td>
<td style="text-align:right;">
63.2438
</td>
<td style="text-align:right;">
40.5371
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
55
</td>
<td style="text-align:right;">
2.250100
</td>
<td style="text-align:right;">
1.2386
</td>
<td style="text-align:right;">
75.055
</td>
<td style="text-align:right;">
63.187
</td>
<td style="text-align:right;">
1.519
</td>
<td style="text-align:right;">
2.827
</td>
<td style="text-align:right;">
0.0007182
</td>
<td style="text-align:right;">
2141.3612
</td>
<td style="text-align:right;">
0.0002133
</td>
<td style="text-align:right;">
0.0426025
</td>
<td style="text-align:right;">
7.642069
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 02.01.05b.tif
</td>
<td style="text-align:right;">
60.9385
</td>
<td style="text-align:right;">
40.6142
</td>
<td style="text-align:right;">
40
</td>
<td style="text-align:right;">
53
</td>
<td style="text-align:right;">
2.425900
</td>
<td style="text-align:right;">
1.3168
</td>
<td style="text-align:right;">
73.238
</td>
<td style="text-align:right;">
60.933
</td>
<td style="text-align:right;">
1.556
</td>
<td style="text-align:right;">
2.998
</td>
<td style="text-align:right;">
0.0008170
</td>
<td style="text-align:right;">
2019.9818
</td>
<td style="text-align:right;">
0.0002358
</td>
<td style="text-align:right;">
0.0457638
</td>
<td style="text-align:right;">
7.542962
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 02.01.06b.tif
</td>
<td style="text-align:right;">
66.9880
</td>
<td style="text-align:right;">
42.6032
</td>
<td style="text-align:right;">
44
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
1.615700
</td>
<td style="text-align:right;">
1.1230
</td>
<td style="text-align:right;">
79.290
</td>
<td style="text-align:right;">
66.898
</td>
<td style="text-align:right;">
1.501
</td>
<td style="text-align:right;">
2.698
</td>
<td style="text-align:right;">
0.0007764
</td>
<td style="text-align:right;">
2442.9269
</td>
<td style="text-align:right;">
0.0001814
</td>
<td style="text-align:right;">
0.0426531
</td>
<td style="text-align:right;">
7.561919
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 02.01.07b.tif
</td>
<td style="text-align:right;">
57.4406
</td>
<td style="text-align:right;">
36.6882
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
3.510400
</td>
<td style="text-align:right;">
1.4229
</td>
<td style="text-align:right;">
68.234
</td>
<td style="text-align:right;">
57.337
</td>
<td style="text-align:right;">
1.542
</td>
<td style="text-align:right;">
2.994
</td>
<td style="text-align:right;">
0.0010503
</td>
<td style="text-align:right;">
1687.6600
</td>
<td style="text-align:right;">
0.0002784
</td>
<td style="text-align:right;">
0.0500425
</td>
<td style="text-align:right;">
7.270369
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 02.02.08b.tif
</td>
<td style="text-align:right;">
63.3903
</td>
<td style="text-align:right;">
39.3267
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
2.413900
</td>
<td style="text-align:right;">
1.2380
</td>
<td style="text-align:right;">
74.577
</td>
<td style="text-align:right;">
63.457
</td>
<td style="text-align:right;">
1.494
</td>
<td style="text-align:right;">
2.723
</td>
<td style="text-align:right;">
0.0011646
</td>
<td style="text-align:right;">
1919.0446
</td>
<td style="text-align:right;">
0.0002467
</td>
<td style="text-align:right;">
0.0502888
</td>
<td style="text-align:right;">
7.165500
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
08
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 02.02.09b.tif
</td>
<td style="text-align:right;">
70.4484
</td>
<td style="text-align:right;">
41.4675
</td>
<td style="text-align:right;">
53
</td>
<td style="text-align:right;">
62
</td>
<td style="text-align:right;">
1.477400
</td>
<td style="text-align:right;">
0.9970
</td>
<td style="text-align:right;">
81.676
</td>
<td style="text-align:right;">
70.479
</td>
<td style="text-align:right;">
1.424
</td>
<td style="text-align:right;">
2.429
</td>
<td style="text-align:right;">
0.0012902
</td>
<td style="text-align:right;">
2305.3124
</td>
<td style="text-align:right;">
0.0001932
</td>
<td style="text-align:right;">
0.0496075
</td>
<td style="text-align:right;">
7.026063
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
09
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 02.02.10b.tif
</td>
<td style="text-align:right;">
45.9296
</td>
<td style="text-align:right;">
33.6247
</td>
<td style="text-align:right;">
30
</td>
<td style="text-align:right;">
38
</td>
<td style="text-align:right;">
6.687900
</td>
<td style="text-align:right;">
2.0515
</td>
<td style="text-align:right;">
57.012
</td>
<td style="text-align:right;">
45.965
</td>
<td style="text-align:right;">
1.769
</td>
<td style="text-align:right;">
4.267
</td>
<td style="text-align:right;">
0.0010580
</td>
<td style="text-align:right;">
1277.6940
</td>
<td style="text-align:right;">
0.0003853
</td>
<td style="text-align:right;">
0.0561244
</td>
<td style="text-align:right;">
7.374950
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
10
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 02.02.11b.tif
</td>
<td style="text-align:right;">
47.7007
</td>
<td style="text-align:right;">
33.9827
</td>
<td style="text-align:right;">
35
</td>
<td style="text-align:right;">
42
</td>
<td style="text-align:right;">
6.820100
</td>
<td style="text-align:right;">
2.0797
</td>
<td style="text-align:right;">
58.506
</td>
<td style="text-align:right;">
47.792
</td>
<td style="text-align:right;">
1.752
</td>
<td style="text-align:right;">
4.188
</td>
<td style="text-align:right;">
0.0019701
</td>
<td style="text-align:right;">
1248.5618
</td>
<td style="text-align:right;">
0.0003984
</td>
<td style="text-align:right;">
0.0649281
</td>
<td style="text-align:right;">
6.757906
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
11
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 02.02.12b.tif
</td>
<td style="text-align:right;">
55.0263
</td>
<td style="text-align:right;">
34.9090
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
4.600400
</td>
<td style="text-align:right;">
1.5874
</td>
<td style="text-align:right;">
65.145
</td>
<td style="text-align:right;">
55.164
</td>
<td style="text-align:right;">
1.576
</td>
<td style="text-align:right;">
3.163
</td>
<td style="text-align:right;">
0.0015471
</td>
<td style="text-align:right;">
1492.6222
</td>
<td style="text-align:right;">
0.0003194
</td>
<td style="text-align:right;">
0.0570331
</td>
<td style="text-align:right;">
6.901600
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
12
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 03.01.01b.tif
</td>
<td style="text-align:right;">
53.7021
</td>
<td style="text-align:right;">
34.5300
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
4.468500
</td>
<td style="text-align:right;">
1.5550
</td>
<td style="text-align:right;">
63.662
</td>
<td style="text-align:right;">
53.536
</td>
<td style="text-align:right;">
1.577
</td>
<td style="text-align:right;">
3.223
</td>
<td style="text-align:right;">
0.0011966
</td>
<td style="text-align:right;">
1483.4390
</td>
<td style="text-align:right;">
0.0003184
</td>
<td style="text-align:right;">
0.0535037
</td>
<td style="text-align:right;">
7.153975
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 03.01.02b.tif
</td>
<td style="text-align:right;">
55.4364
</td>
<td style="text-align:right;">
34.8178
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
4.185900
</td>
<td style="text-align:right;">
1.4832
</td>
<td style="text-align:right;">
65.274
</td>
<td style="text-align:right;">
55.444
</td>
<td style="text-align:right;">
1.548
</td>
<td style="text-align:right;">
3.079
</td>
<td style="text-align:right;">
0.0013598
</td>
<td style="text-align:right;">
1543.0641
</td>
<td style="text-align:right;">
0.0003015
</td>
<td style="text-align:right;">
0.0544931
</td>
<td style="text-align:right;">
7.012931
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 03.01.03b.tif
</td>
<td style="text-align:right;">
50.4467
</td>
<td style="text-align:right;">
34.2663
</td>
<td style="text-align:right;">
36
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
5.765100
</td>
<td style="text-align:right;">
1.8532
</td>
<td style="text-align:right;">
60.926
</td>
<td style="text-align:right;">
50.455
</td>
<td style="text-align:right;">
1.670
</td>
<td style="text-align:right;">
3.709
</td>
<td style="text-align:right;">
0.0012039
</td>
<td style="text-align:right;">
1407.5916
</td>
<td style="text-align:right;">
0.0003422
</td>
<td style="text-align:right;">
0.0547688
</td>
<td style="text-align:right;">
7.204962
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 03.01.04b.tif
</td>
<td style="text-align:right;">
65.9034
</td>
<td style="text-align:right;">
40.9553
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
1.841800
</td>
<td style="text-align:right;">
1.1208
</td>
<td style="text-align:right;">
77.579
</td>
<td style="text-align:right;">
66.066
</td>
<td style="text-align:right;">
1.482
</td>
<td style="text-align:right;">
2.646
</td>
<td style="text-align:right;">
0.0007121
</td>
<td style="text-align:right;">
2237.3740
</td>
<td style="text-align:right;">
0.0001999
</td>
<td style="text-align:right;">
0.0418275
</td>
<td style="text-align:right;">
7.627969
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 03.01.05b.tif
</td>
<td style="text-align:right;">
62.2861
</td>
<td style="text-align:right;">
40.1902
</td>
<td style="text-align:right;">
44
</td>
<td style="text-align:right;">
56
</td>
<td style="text-align:right;">
2.223800
</td>
<td style="text-align:right;">
1.2336
</td>
<td style="text-align:right;">
74.162
</td>
<td style="text-align:right;">
62.264
</td>
<td style="text-align:right;">
1.518
</td>
<td style="text-align:right;">
2.834
</td>
<td style="text-align:right;">
0.0007779
</td>
<td style="text-align:right;">
2042.1420
</td>
<td style="text-align:right;">
0.0002288
</td>
<td style="text-align:right;">
0.0442700
</td>
<td style="text-align:right;">
7.564806
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 03.01.06b.tif
</td>
<td style="text-align:right;">
67.4348
</td>
<td style="text-align:right;">
42.5434
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
59
</td>
<td style="text-align:right;">
1.518900
</td>
<td style="text-align:right;">
1.0810
</td>
<td style="text-align:right;">
79.818
</td>
<td style="text-align:right;">
67.380
</td>
<td style="text-align:right;">
1.472
</td>
<td style="text-align:right;">
2.625
</td>
<td style="text-align:right;">
0.0006511
</td>
<td style="text-align:right;">
2379.9794
</td>
<td style="text-align:right;">
0.0001904
</td>
<td style="text-align:right;">
0.0406444
</td>
<td style="text-align:right;">
7.719938
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 03.01.07b.tif
</td>
<td style="text-align:right;">
61.9245
</td>
<td style="text-align:right;">
38.2267
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
2.482700
</td>
<td style="text-align:right;">
1.2030
</td>
<td style="text-align:right;">
72.595
</td>
<td style="text-align:right;">
61.895
</td>
<td style="text-align:right;">
1.498
</td>
<td style="text-align:right;">
2.742
</td>
<td style="text-align:right;">
0.0008387
</td>
<td style="text-align:right;">
1901.8744
</td>
<td style="text-align:right;">
0.0002404
</td>
<td style="text-align:right;">
0.0453513
</td>
<td style="text-align:right;">
7.460644
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 03.02.08b.tif
</td>
<td style="text-align:right;">
63.9179
</td>
<td style="text-align:right;">
40.1301
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
58
</td>
<td style="text-align:right;">
2.267300
</td>
<td style="text-align:right;">
1.2295
</td>
<td style="text-align:right;">
75.405
</td>
<td style="text-align:right;">
63.849
</td>
<td style="text-align:right;">
1.506
</td>
<td style="text-align:right;">
2.763
</td>
<td style="text-align:right;">
0.0010454
</td>
<td style="text-align:right;">
1965.4008
</td>
<td style="text-align:right;">
0.0002431
</td>
<td style="text-align:right;">
0.0489025
</td>
<td style="text-align:right;">
7.277625
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
08
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 03.02.09b.tif
</td>
<td style="text-align:right;">
68.2255
</td>
<td style="text-align:right;">
41.4848
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
63
</td>
<td style="text-align:right;">
1.561700
</td>
<td style="text-align:right;">
1.0486
</td>
<td style="text-align:right;">
79.380
</td>
<td style="text-align:right;">
67.533
</td>
<td style="text-align:right;">
1.485
</td>
<td style="text-align:right;">
2.581
</td>
<td style="text-align:right;">
0.0010674
</td>
<td style="text-align:right;">
2259.7532
</td>
<td style="text-align:right;">
0.0002009
</td>
<td style="text-align:right;">
0.0470606
</td>
<td style="text-align:right;">
7.224387
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
09
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 03.02.10b.tif
</td>
<td style="text-align:right;">
46.5027
</td>
<td style="text-align:right;">
33.1312
</td>
<td style="text-align:right;">
32
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
6.612700
</td>
<td style="text-align:right;">
1.9810
</td>
<td style="text-align:right;">
56.926
</td>
<td style="text-align:right;">
46.432
</td>
<td style="text-align:right;">
1.750
</td>
<td style="text-align:right;">
4.146
</td>
<td style="text-align:right;">
0.0009254
</td>
<td style="text-align:right;">
1263.3495
</td>
<td style="text-align:right;">
0.0003876
</td>
<td style="text-align:right;">
0.0537337
</td>
<td style="text-align:right;">
7.472719
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
10
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 03.02.11b.tif
</td>
<td style="text-align:right;">
53.5792
</td>
<td style="text-align:right;">
36.9551
</td>
<td style="text-align:right;">
35
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
4.054900
</td>
<td style="text-align:right;">
1.6311
</td>
<td style="text-align:right;">
64.875
</td>
<td style="text-align:right;">
53.593
</td>
<td style="text-align:right;">
1.649
</td>
<td style="text-align:right;">
3.494
</td>
<td style="text-align:right;">
0.0014934
</td>
<td style="text-align:right;">
1556.3401
</td>
<td style="text-align:right;">
0.0003157
</td>
<td style="text-align:right;">
0.0576544
</td>
<td style="text-align:right;">
7.001125
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
11
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 03.02.12b.tif
</td>
<td style="text-align:right;">
60.3513
</td>
<td style="text-align:right;">
39.8318
</td>
<td style="text-align:right;">
44
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
2.676300
</td>
<td style="text-align:right;">
1.3542
</td>
<td style="text-align:right;">
72.337
</td>
<td style="text-align:right;">
60.270
</td>
<td style="text-align:right;">
1.558
</td>
<td style="text-align:right;">
3.013
</td>
<td style="text-align:right;">
0.0010028
</td>
<td style="text-align:right;">
1889.9280
</td>
<td style="text-align:right;">
0.0002557
</td>
<td style="text-align:right;">
0.0493981
</td>
<td style="text-align:right;">
7.344694
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
12
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 04.01.01b.tif
</td>
<td style="text-align:right;">
57.9953
</td>
<td style="text-align:right;">
36.8146
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
3.148500
</td>
<td style="text-align:right;">
1.3405
</td>
<td style="text-align:right;">
68.585
</td>
<td style="text-align:right;">
58.017
</td>
<td style="text-align:right;">
1.541
</td>
<td style="text-align:right;">
2.930
</td>
<td style="text-align:right;">
0.0011475
</td>
<td style="text-align:right;">
1668.1495
</td>
<td style="text-align:right;">
0.0002850
</td>
<td style="text-align:right;">
0.0525831
</td>
<td style="text-align:right;">
7.178094
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 04.01.02b.tif
</td>
<td style="text-align:right;">
58.4847
</td>
<td style="text-align:right;">
36.5082
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
53
</td>
<td style="text-align:right;">
2.936400
</td>
<td style="text-align:right;">
1.2663
</td>
<td style="text-align:right;">
68.764
</td>
<td style="text-align:right;">
58.478
</td>
<td style="text-align:right;">
1.507
</td>
<td style="text-align:right;">
2.842
</td>
<td style="text-align:right;">
0.0011681
</td>
<td style="text-align:right;">
1696.0119
</td>
<td style="text-align:right;">
0.0002744
</td>
<td style="text-align:right;">
0.0519488
</td>
<td style="text-align:right;">
7.138544
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 04.01.03b.tif
</td>
<td style="text-align:right;">
48.3361
</td>
<td style="text-align:right;">
33.8757
</td>
<td style="text-align:right;">
33
</td>
<td style="text-align:right;">
42
</td>
<td style="text-align:right;">
6.388700
</td>
<td style="text-align:right;">
1.9577
</td>
<td style="text-align:right;">
58.780
</td>
<td style="text-align:right;">
48.389
</td>
<td style="text-align:right;">
1.736
</td>
<td style="text-align:right;">
4.026
</td>
<td style="text-align:right;">
0.0011194
</td>
<td style="text-align:right;">
1357.0167
</td>
<td style="text-align:right;">
0.0003570
</td>
<td style="text-align:right;">
0.0547206
</td>
<td style="text-align:right;">
7.287000
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 04.01.04b.tif
</td>
<td style="text-align:right;">
74.0117
</td>
<td style="text-align:right;">
44.3165
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
66
</td>
<td style="text-align:right;">
0.878800
</td>
<td style="text-align:right;">
0.8773
</td>
<td style="text-align:right;">
86.186
</td>
<td style="text-align:right;">
73.999
</td>
<td style="text-align:right;">
1.430
</td>
<td style="text-align:right;">
2.386
</td>
<td style="text-align:right;">
0.0004924
</td>
<td style="text-align:right;">
2618.2766
</td>
<td style="text-align:right;">
0.0001711
</td>
<td style="text-align:right;">
0.0364175
</td>
<td style="text-align:right;">
7.950944
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 04.01.05b.tif
</td>
<td style="text-align:right;">
68.3983
</td>
<td style="text-align:right;">
42.7347
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
62
</td>
<td style="text-align:right;">
1.345100
</td>
<td style="text-align:right;">
1.0159
</td>
<td style="text-align:right;">
80.451
</td>
<td style="text-align:right;">
68.225
</td>
<td style="text-align:right;">
1.480
</td>
<td style="text-align:right;">
2.598
</td>
<td style="text-align:right;">
0.0006062
</td>
<td style="text-align:right;">
2392.6010
</td>
<td style="text-align:right;">
0.0001901
</td>
<td style="text-align:right;">
0.0397887
</td>
<td style="text-align:right;">
7.768775
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 04.01.06b.tif
</td>
<td style="text-align:right;">
68.6260
</td>
<td style="text-align:right;">
43.4255
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
1.217600
</td>
<td style="text-align:right;">
1.0017
</td>
<td style="text-align:right;">
81.066
</td>
<td style="text-align:right;">
68.706
</td>
<td style="text-align:right;">
1.481
</td>
<td style="text-align:right;">
2.586
</td>
<td style="text-align:right;">
0.0005185
</td>
<td style="text-align:right;">
2417.8623
</td>
<td style="text-align:right;">
0.0001914
</td>
<td style="text-align:right;">
0.0387756
</td>
<td style="text-align:right;">
7.926362
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 04.01.07b.tif
</td>
<td style="text-align:right;">
66.9469
</td>
<td style="text-align:right;">
40.8889
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
1.607200
</td>
<td style="text-align:right;">
1.0272
</td>
<td style="text-align:right;">
78.393
</td>
<td style="text-align:right;">
67.081
</td>
<td style="text-align:right;">
1.459
</td>
<td style="text-align:right;">
2.541
</td>
<td style="text-align:right;">
0.0006764
</td>
<td style="text-align:right;">
2193.9868
</td>
<td style="text-align:right;">
0.0002070
</td>
<td style="text-align:right;">
0.0414887
</td>
<td style="text-align:right;">
7.647431
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 04.02.08b.tif
</td>
<td style="text-align:right;">
65.0780
</td>
<td style="text-align:right;">
40.7746
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
56
</td>
<td style="text-align:right;">
2.054200
</td>
<td style="text-align:right;">
1.1801
</td>
<td style="text-align:right;">
76.698
</td>
<td style="text-align:right;">
65.246
</td>
<td style="text-align:right;">
1.500
</td>
<td style="text-align:right;">
2.720
</td>
<td style="text-align:right;">
0.0009451
</td>
<td style="text-align:right;">
1998.5144
</td>
<td style="text-align:right;">
0.0002410
</td>
<td style="text-align:right;">
0.0478850
</td>
<td style="text-align:right;">
7.368069
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
08
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 04.02.09b.tif
</td>
<td style="text-align:right;">
72.2227
</td>
<td style="text-align:right;">
42.0909
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
65
</td>
<td style="text-align:right;">
1.171500
</td>
<td style="text-align:right;">
0.8976
</td>
<td style="text-align:right;">
83.537
</td>
<td style="text-align:right;">
72.321
</td>
<td style="text-align:right;">
1.405
</td>
<td style="text-align:right;">
2.363
</td>
<td style="text-align:right;">
0.0008949
</td>
<td style="text-align:right;">
2337.1799
</td>
<td style="text-align:right;">
0.0001937
</td>
<td style="text-align:right;">
0.0444962
</td>
<td style="text-align:right;">
7.359513
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
09
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 04.02.10b.tif
</td>
<td style="text-align:right;">
48.4408
</td>
<td style="text-align:right;">
34.3810
</td>
<td style="text-align:right;">
31
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
5.634700
</td>
<td style="text-align:right;">
1.8477
</td>
<td style="text-align:right;">
59.394
</td>
<td style="text-align:right;">
48.519
</td>
<td style="text-align:right;">
1.699
</td>
<td style="text-align:right;">
3.870
</td>
<td style="text-align:right;">
0.0008161
</td>
<td style="text-align:right;">
1380.4026
</td>
<td style="text-align:right;">
0.0003529
</td>
<td style="text-align:right;">
0.0512494
</td>
<td style="text-align:right;">
7.588656
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
10
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 04.02.11b.tif
</td>
<td style="text-align:right;">
56.0183
</td>
<td style="text-align:right;">
37.6536
</td>
<td style="text-align:right;">
40
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
3.702400
</td>
<td style="text-align:right;">
1.5482
</td>
<td style="text-align:right;">
67.514
</td>
<td style="text-align:right;">
55.877
</td>
<td style="text-align:right;">
1.600
</td>
<td style="text-align:right;">
3.274
</td>
<td style="text-align:right;">
0.0014395
</td>
<td style="text-align:right;">
1623.1617
</td>
<td style="text-align:right;">
0.0003023
</td>
<td style="text-align:right;">
0.0567325
</td>
<td style="text-align:right;">
7.014656
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
11
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_50 04.02.12b.tif
</td>
<td style="text-align:right;">
65.4716
</td>
<td style="text-align:right;">
42.8450
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
1.721300
</td>
<td style="text-align:right;">
1.1662
</td>
<td style="text-align:right;">
78.372
</td>
<td style="text-align:right;">
65.457
</td>
<td style="text-align:right;">
1.513
</td>
<td style="text-align:right;">
2.774
</td>
<td style="text-align:right;">
0.0008070
</td>
<td style="text-align:right;">
2134.5826
</td>
<td style="text-align:right;">
0.0002287
</td>
<td style="text-align:right;">
0.0456981
</td>
<td style="text-align:right;">
7.538750
</td>
<td style="text-align:left;">
RMS_50
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
12
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
50
</td>
<td style="text-align:left;">
Type_4
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 00.01.01a.tif
</td>
<td style="text-align:right;">
44.4541
</td>
<td style="text-align:right;">
29.9105
</td>
<td style="text-align:right;">
36
</td>
<td style="text-align:right;">
40
</td>
<td style="text-align:right;">
10.547100
</td>
<td style="text-align:right;">
2.3840
</td>
<td style="text-align:right;">
53.565
</td>
<td style="text-align:right;">
44.280
</td>
<td style="text-align:right;">
1.741
</td>
<td style="text-align:right;">
4.399
</td>
<td style="text-align:right;">
0.0037271
</td>
<td style="text-align:right;">
1036.8499
</td>
<td style="text-align:right;">
0.0004711
</td>
<td style="text-align:right;">
0.0800125
</td>
<td style="text-align:right;">
6.061519
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 00.01.02a.tif
</td>
<td style="text-align:right;">
39.1242
</td>
<td style="text-align:right;">
28.1612
</td>
<td style="text-align:right;">
30
</td>
<td style="text-align:right;">
35
</td>
<td style="text-align:right;">
14.582800
</td>
<td style="text-align:right;">
2.8869
</td>
<td style="text-align:right;">
48.021
</td>
<td style="text-align:right;">
39.011
</td>
<td style="text-align:right;">
1.943
</td>
<td style="text-align:right;">
5.727
</td>
<td style="text-align:right;">
0.0045446
</td>
<td style="text-align:right;">
837.9765
</td>
<td style="text-align:right;">
0.0005954
</td>
<td style="text-align:right;">
0.0891706
</td>
<td style="text-align:right;">
5.879850
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 00.01.03a.tif
</td>
<td style="text-align:right;">
42.5648
</td>
<td style="text-align:right;">
28.7642
</td>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
12.991000
</td>
<td style="text-align:right;">
2.6264
</td>
<td style="text-align:right;">
51.082
</td>
<td style="text-align:right;">
42.479
</td>
<td style="text-align:right;">
1.817
</td>
<td style="text-align:right;">
4.919
</td>
<td style="text-align:right;">
0.0057236
</td>
<td style="text-align:right;">
918.2163
</td>
<td style="text-align:right;">
0.0005389
</td>
<td style="text-align:right;">
0.0955850
</td>
<td style="text-align:right;">
5.605206
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 00.02.04a.tif
</td>
<td style="text-align:right;">
46.7820
</td>
<td style="text-align:right;">
30.1216
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
9.242400
</td>
<td style="text-align:right;">
2.1424
</td>
<td style="text-align:right;">
55.731
</td>
<td style="text-align:right;">
47.113
</td>
<td style="text-align:right;">
1.651
</td>
<td style="text-align:right;">
3.877
</td>
<td style="text-align:right;">
0.0043101
</td>
<td style="text-align:right;">
995.7903
</td>
<td style="text-align:right;">
0.0004984
</td>
<td style="text-align:right;">
0.0840944
</td>
<td style="text-align:right;">
5.871619
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 00.02.05a.tif
</td>
<td style="text-align:right;">
39.1822
</td>
<td style="text-align:right;">
30.5386
</td>
<td style="text-align:right;">
28
</td>
<td style="text-align:right;">
32
</td>
<td style="text-align:right;">
12.531300
</td>
<td style="text-align:right;">
2.8485
</td>
<td style="text-align:right;">
49.721
</td>
<td style="text-align:right;">
39.421
</td>
<td style="text-align:right;">
2.018
</td>
<td style="text-align:right;">
6.008
</td>
<td style="text-align:right;">
0.0041059
</td>
<td style="text-align:right;">
922.5924
</td>
<td style="text-align:right;">
0.0005420
</td>
<td style="text-align:right;">
0.0879594
</td>
<td style="text-align:right;">
6.048650
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 00.02.06a.tif
</td>
<td style="text-align:right;">
56.1256
</td>
<td style="text-align:right;">
33.9975
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
53
</td>
<td style="text-align:right;">
5.022600
</td>
<td style="text-align:right;">
1.5662
</td>
<td style="text-align:right;">
65.697
</td>
<td style="text-align:right;">
56.076
</td>
<td style="text-align:right;">
1.512
</td>
<td style="text-align:right;">
2.977
</td>
<td style="text-align:right;">
0.0050407
</td>
<td style="text-align:right;">
1292.9147
</td>
<td style="text-align:right;">
0.0003823
</td>
<td style="text-align:right;">
0.0908175
</td>
<td style="text-align:right;">
5.706419
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 02.01.01b.tif
</td>
<td style="text-align:right;">
55.0757
</td>
<td style="text-align:right;">
32.7186
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
5.232300
</td>
<td style="text-align:right;">
1.5482
</td>
<td style="text-align:right;">
64.176
</td>
<td style="text-align:right;">
54.961
</td>
<td style="text-align:right;">
1.499
</td>
<td style="text-align:right;">
2.927
</td>
<td style="text-align:right;">
0.0036523
</td>
<td style="text-align:right;">
1430.7862
</td>
<td style="text-align:right;">
0.0003122
</td>
<td style="text-align:right;">
0.0761838
</td>
<td style="text-align:right;">
6.023612
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 02.02.02b.tif
</td>
<td style="text-align:right;">
48.9044
</td>
<td style="text-align:right;">
32.1512
</td>
<td style="text-align:right;">
38
</td>
<td style="text-align:right;">
44
</td>
<td style="text-align:right;">
7.308500
</td>
<td style="text-align:right;">
1.9753
</td>
<td style="text-align:right;">
58.432
</td>
<td style="text-align:right;">
48.669
</td>
<td style="text-align:right;">
1.666
</td>
<td style="text-align:right;">
3.789
</td>
<td style="text-align:right;">
0.0044054
</td>
<td style="text-align:right;">
1201.8123
</td>
<td style="text-align:right;">
0.0004063
</td>
<td style="text-align:right;">
0.0869694
</td>
<td style="text-align:right;">
5.884175
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 02.02.03b.tif
</td>
<td style="text-align:right;">
53.9127
</td>
<td style="text-align:right;">
34.8514
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
4.717800
</td>
<td style="text-align:right;">
1.5977
</td>
<td style="text-align:right;">
64.206
</td>
<td style="text-align:right;">
53.864
</td>
<td style="text-align:right;">
1.588
</td>
<td style="text-align:right;">
3.250
</td>
<td style="text-align:right;">
0.0039946
</td>
<td style="text-align:right;">
1456.3381
</td>
<td style="text-align:right;">
0.0003310
</td>
<td style="text-align:right;">
0.0829125
</td>
<td style="text-align:right;">
5.969175
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 02.02.04b.tif
</td>
<td style="text-align:right;">
48.9690
</td>
<td style="text-align:right;">
32.4438
</td>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
42
</td>
<td style="text-align:right;">
6.672800
</td>
<td style="text-align:right;">
1.8964
</td>
<td style="text-align:right;">
58.644
</td>
<td style="text-align:right;">
49.385
</td>
<td style="text-align:right;">
1.666
</td>
<td style="text-align:right;">
3.703
</td>
<td style="text-align:right;">
0.0040340
</td>
<td style="text-align:right;">
1176.0727
</td>
<td style="text-align:right;">
0.0004198
</td>
<td style="text-align:right;">
0.0843581
</td>
<td style="text-align:right;">
5.976700
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 02.02.05b.tif
</td>
<td style="text-align:right;">
54.3794
</td>
<td style="text-align:right;">
34.9355
</td>
<td style="text-align:right;">
40
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
4.798300
</td>
<td style="text-align:right;">
1.6293
</td>
<td style="text-align:right;">
64.800
</td>
<td style="text-align:right;">
54.242
</td>
<td style="text-align:right;">
1.559
</td>
<td style="text-align:right;">
3.211
</td>
<td style="text-align:right;">
0.0038189
</td>
<td style="text-align:right;">
1421.4087
</td>
<td style="text-align:right;">
0.0003432
</td>
<td style="text-align:right;">
0.0809625
</td>
<td style="text-align:right;">
6.014862
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 02.02.06b.tif
</td>
<td style="text-align:right;">
59.4514
</td>
<td style="text-align:right;">
37.1207
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
3.379100
</td>
<td style="text-align:right;">
1.3884
</td>
<td style="text-align:right;">
70.150
</td>
<td style="text-align:right;">
59.442
</td>
<td style="text-align:right;">
1.525
</td>
<td style="text-align:right;">
2.906
</td>
<td style="text-align:right;">
0.0034186
</td>
<td style="text-align:right;">
1607.2206
</td>
<td style="text-align:right;">
0.0003035
</td>
<td style="text-align:right;">
0.0775925
</td>
<td style="text-align:right;">
6.096550
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 03.01.01b.tif
</td>
<td style="text-align:right;">
53.8487
</td>
<td style="text-align:right;">
32.0640
</td>
<td style="text-align:right;">
44
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
5.593000
</td>
<td style="text-align:right;">
1.5892
</td>
<td style="text-align:right;">
62.695
</td>
<td style="text-align:right;">
53.594
</td>
<td style="text-align:right;">
1.507
</td>
<td style="text-align:right;">
3.017
</td>
<td style="text-align:right;">
0.0036212
</td>
<td style="text-align:right;">
1369.4324
</td>
<td style="text-align:right;">
0.0003274
</td>
<td style="text-align:right;">
0.0754356
</td>
<td style="text-align:right;">
6.025550
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 03.02.02b.tif
</td>
<td style="text-align:right;">
55.8848
</td>
<td style="text-align:right;">
35.8225
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
53
</td>
<td style="text-align:right;">
4.215100
</td>
<td style="text-align:right;">
1.5237
</td>
<td style="text-align:right;">
66.332
</td>
<td style="text-align:right;">
55.825
</td>
<td style="text-align:right;">
1.573
</td>
<td style="text-align:right;">
3.151
</td>
<td style="text-align:right;">
0.0036563
</td>
<td style="text-align:right;">
1583.5337
</td>
<td style="text-align:right;">
0.0002997
</td>
<td style="text-align:right;">
0.0783875
</td>
<td style="text-align:right;">
6.045269
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 03.02.03b.tif
</td>
<td style="text-align:right;">
58.7212
</td>
<td style="text-align:right;">
38.4307
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
2.927800
</td>
<td style="text-align:right;">
1.3610
</td>
<td style="text-align:right;">
69.699
</td>
<td style="text-align:right;">
58.554
</td>
<td style="text-align:right;">
1.583
</td>
<td style="text-align:right;">
3.099
</td>
<td style="text-align:right;">
0.0026656
</td>
<td style="text-align:right;">
1721.0172
</td>
<td style="text-align:right;">
0.0002835
</td>
<td style="text-align:right;">
0.0710575
</td>
<td style="text-align:right;">
6.358025
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 03.02.04b.tif
</td>
<td style="text-align:right;">
58.3326
</td>
<td style="text-align:right;">
37.3488
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
3.392200
</td>
<td style="text-align:right;">
1.4183
</td>
<td style="text-align:right;">
69.438
</td>
<td style="text-align:right;">
58.232
</td>
<td style="text-align:right;">
1.532
</td>
<td style="text-align:right;">
2.971
</td>
<td style="text-align:right;">
0.0030588
</td>
<td style="text-align:right;">
1644.0772
</td>
<td style="text-align:right;">
0.0002952
</td>
<td style="text-align:right;">
0.0742131
</td>
<td style="text-align:right;">
6.221387
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 03.02.05b.tif
</td>
<td style="text-align:right;">
64.4066
</td>
<td style="text-align:right;">
41.4352
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
56
</td>
<td style="text-align:right;">
2.039000
</td>
<td style="text-align:right;">
1.1976
</td>
<td style="text-align:right;">
76.825
</td>
<td style="text-align:right;">
64.348
</td>
<td style="text-align:right;">
1.499
</td>
<td style="text-align:right;">
2.762
</td>
<td style="text-align:right;">
0.0023645
</td>
<td style="text-align:right;">
2070.1435
</td>
<td style="text-align:right;">
0.0002322
</td>
<td style="text-align:right;">
0.0659100
</td>
<td style="text-align:right;">
6.456706
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 03.02.06b.tif
</td>
<td style="text-align:right;">
66.1923
</td>
<td style="text-align:right;">
41.3646
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
1.835300
</td>
<td style="text-align:right;">
1.1331
</td>
<td style="text-align:right;">
78.102
</td>
<td style="text-align:right;">
66.188
</td>
<td style="text-align:right;">
1.483
</td>
<td style="text-align:right;">
2.661
</td>
<td style="text-align:right;">
0.0026310
</td>
<td style="text-align:right;">
2006.3417
</td>
<td style="text-align:right;">
0.0002426
</td>
<td style="text-align:right;">
0.0692606
</td>
<td style="text-align:right;">
6.339288
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 04.01.01b.tif
</td>
<td style="text-align:right;">
57.0809
</td>
<td style="text-align:right;">
33.7981
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
4.297200
</td>
<td style="text-align:right;">
1.4170
</td>
<td style="text-align:right;">
66.390
</td>
<td style="text-align:right;">
57.220
</td>
<td style="text-align:right;">
1.484
</td>
<td style="text-align:right;">
2.805
</td>
<td style="text-align:right;">
0.0023869
</td>
<td style="text-align:right;">
1528.6411
</td>
<td style="text-align:right;">
0.0002920
</td>
<td style="text-align:right;">
0.0643044
</td>
<td style="text-align:right;">
6.433050
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 04.02.02b.tif
</td>
<td style="text-align:right;">
56.9696
</td>
<td style="text-align:right;">
36.3055
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
3.680100
</td>
<td style="text-align:right;">
1.4417
</td>
<td style="text-align:right;">
67.601
</td>
<td style="text-align:right;">
57.204
</td>
<td style="text-align:right;">
1.543
</td>
<td style="text-align:right;">
3.009
</td>
<td style="text-align:right;">
0.0026662
</td>
<td style="text-align:right;">
1640.7102
</td>
<td style="text-align:right;">
0.0002878
</td>
<td style="text-align:right;">
0.0697225
</td>
<td style="text-align:right;">
6.351262
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 04.02.03b.tif
</td>
<td style="text-align:right;">
63.9353
</td>
<td style="text-align:right;">
40.7375
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
2.120000
</td>
<td style="text-align:right;">
1.1841
</td>
<td style="text-align:right;">
75.832
</td>
<td style="text-align:right;">
64.040
</td>
<td style="text-align:right;">
1.503
</td>
<td style="text-align:right;">
2.741
</td>
<td style="text-align:right;">
0.0020073
</td>
<td style="text-align:right;">
2001.2044
</td>
<td style="text-align:right;">
0.0002403
</td>
<td style="text-align:right;">
0.0621450
</td>
<td style="text-align:right;">
6.605050
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 04.02.04b.tif
</td>
<td style="text-align:right;">
61.5800
</td>
<td style="text-align:right;">
39.3586
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
2.582800
</td>
<td style="text-align:right;">
1.2738
</td>
<td style="text-align:right;">
73.127
</td>
<td style="text-align:right;">
61.675
</td>
<td style="text-align:right;">
1.518
</td>
<td style="text-align:right;">
2.831
</td>
<td style="text-align:right;">
0.0022160
</td>
<td style="text-align:right;">
1876.6652
</td>
<td style="text-align:right;">
0.0002554
</td>
<td style="text-align:right;">
0.0651219
</td>
<td style="text-align:right;">
6.523775
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 04.02.05b.tif
</td>
<td style="text-align:right;">
65.8022
</td>
<td style="text-align:right;">
41.6620
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
61
</td>
<td style="text-align:right;">
1.703700
</td>
<td style="text-align:right;">
1.1044
</td>
<td style="text-align:right;">
77.920
</td>
<td style="text-align:right;">
65.816
</td>
<td style="text-align:right;">
1.485
</td>
<td style="text-align:right;">
2.680
</td>
<td style="text-align:right;">
0.0017943
</td>
<td style="text-align:right;">
2181.1647
</td>
<td style="text-align:right;">
0.0002152
</td>
<td style="text-align:right;">
0.0587956
</td>
<td style="text-align:right;">
6.710575
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_68 04.02.06b.tif
</td>
<td style="text-align:right;">
65.6030
</td>
<td style="text-align:right;">
40.8474
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
58
</td>
<td style="text-align:right;">
1.816100
</td>
<td style="text-align:right;">
1.1056
</td>
<td style="text-align:right;">
77.205
</td>
<td style="text-align:right;">
65.627
</td>
<td style="text-align:right;">
1.494
</td>
<td style="text-align:right;">
2.651
</td>
<td style="text-align:right;">
0.0020359
</td>
<td style="text-align:right;">
2000.8209
</td>
<td style="text-align:right;">
0.0002410
</td>
<td style="text-align:right;">
0.0627388
</td>
<td style="text-align:right;">
6.586887
</td>
<td style="text-align:left;">
RMS_68
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
68
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 00.01.01a.tif
</td>
<td style="text-align:right;">
47.3066
</td>
<td style="text-align:right;">
31.2276
</td>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
7.558800
</td>
<td style="text-align:right;">
2.0050
</td>
<td style="text-align:right;">
56.728
</td>
<td style="text-align:right;">
47.175
</td>
<td style="text-align:right;">
1.652
</td>
<td style="text-align:right;">
3.791
</td>
<td style="text-align:right;">
0.0014831
</td>
<td style="text-align:right;">
1233.7198
</td>
<td style="text-align:right;">
0.0003784
</td>
<td style="text-align:right;">
0.0580469
</td>
<td style="text-align:right;">
6.981569
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 00.01.02a.tif
</td>
<td style="text-align:right;">
45.0397
</td>
<td style="text-align:right;">
31.6324
</td>
<td style="text-align:right;">
31
</td>
<td style="text-align:right;">
40
</td>
<td style="text-align:right;">
7.267200
</td>
<td style="text-align:right;">
2.0060
</td>
<td style="text-align:right;">
55.105
</td>
<td style="text-align:right;">
45.062
</td>
<td style="text-align:right;">
1.706
</td>
<td style="text-align:right;">
4.081
</td>
<td style="text-align:right;">
0.0013589
</td>
<td style="text-align:right;">
1113.3413
</td>
<td style="text-align:right;">
0.0004441
</td>
<td style="text-align:right;">
0.0599688
</td>
<td style="text-align:right;">
7.096712
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 00.01.03a.tif
</td>
<td style="text-align:right;">
58.2557
</td>
<td style="text-align:right;">
35.7834
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
3.664200
</td>
<td style="text-align:right;">
1.4232
</td>
<td style="text-align:right;">
68.553
</td>
<td style="text-align:right;">
58.382
</td>
<td style="text-align:right;">
1.506
</td>
<td style="text-align:right;">
2.864
</td>
<td style="text-align:right;">
0.0018481
</td>
<td style="text-align:right;">
1702.6599
</td>
<td style="text-align:right;">
0.0002634
</td>
<td style="text-align:right;">
0.0578044
</td>
<td style="text-align:right;">
6.723587
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 00.02.04a.tif
</td>
<td style="text-align:right;">
37.3364
</td>
<td style="text-align:right;">
28.1050
</td>
<td style="text-align:right;">
28
</td>
<td style="text-align:right;">
31
</td>
<td style="text-align:right;">
16.674000
</td>
<td style="text-align:right;">
3.1798
</td>
<td style="text-align:right;">
46.899
</td>
<td style="text-align:right;">
37.236
</td>
<td style="text-align:right;">
2.026
</td>
<td style="text-align:right;">
6.408
</td>
<td style="text-align:right;">
0.0022241
</td>
<td style="text-align:right;">
838.9035
</td>
<td style="text-align:right;">
0.0005943
</td>
<td style="text-align:right;">
0.0724881
</td>
<td style="text-align:right;">
6.620412
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 00.02.05a.tif
</td>
<td style="text-align:right;">
44.2127
</td>
<td style="text-align:right;">
27.6336
</td>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
12.264800
</td>
<td style="text-align:right;">
2.3936
</td>
<td style="text-align:right;">
52.402
</td>
<td style="text-align:right;">
44.233
</td>
<td style="text-align:right;">
1.638
</td>
<td style="text-align:right;">
4.042
</td>
<td style="text-align:right;">
0.0040158
</td>
<td style="text-align:right;">
971.2601
</td>
<td style="text-align:right;">
0.0004788
</td>
<td style="text-align:right;">
0.0806138
</td>
<td style="text-align:right;">
5.944700
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 00.02.06a.tif
</td>
<td style="text-align:right;">
46.1772
</td>
<td style="text-align:right;">
29.3639
</td>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
42
</td>
<td style="text-align:right;">
9.425900
</td>
<td style="text-align:right;">
2.1448
</td>
<td style="text-align:right;">
54.808
</td>
<td style="text-align:right;">
46.155
</td>
<td style="text-align:right;">
1.648
</td>
<td style="text-align:right;">
3.820
</td>
<td style="text-align:right;">
0.0037396
</td>
<td style="text-align:right;">
1064.7672
</td>
<td style="text-align:right;">
0.0004455
</td>
<td style="text-align:right;">
0.0794519
</td>
<td style="text-align:right;">
6.041681
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 02.01.01b.tif
</td>
<td style="text-align:right;">
64.5952
</td>
<td style="text-align:right;">
39.0501
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
58
</td>
<td style="text-align:right;">
2.351200
</td>
<td style="text-align:right;">
1.2050
</td>
<td style="text-align:right;">
75.439
</td>
<td style="text-align:right;">
64.511
</td>
<td style="text-align:right;">
1.476
</td>
<td style="text-align:right;">
2.648
</td>
<td style="text-align:right;">
0.0010627
</td>
<td style="text-align:right;">
1992.9530
</td>
<td style="text-align:right;">
0.0002288
</td>
<td style="text-align:right;">
0.0484406
</td>
<td style="text-align:right;">
7.261525
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 02.01.02b.tif
</td>
<td style="text-align:right;">
58.5665
</td>
<td style="text-align:right;">
36.3872
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
3.347100
</td>
<td style="text-align:right;">
1.3797
</td>
<td style="text-align:right;">
68.816
</td>
<td style="text-align:right;">
58.591
</td>
<td style="text-align:right;">
1.532
</td>
<td style="text-align:right;">
2.897
</td>
<td style="text-align:right;">
0.0011784
</td>
<td style="text-align:right;">
1704.5175
</td>
<td style="text-align:right;">
0.0002705
</td>
<td style="text-align:right;">
0.0509775
</td>
<td style="text-align:right;">
7.168031
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 02.01.03b.tif
</td>
<td style="text-align:right;">
67.2552
</td>
<td style="text-align:right;">
40.9872
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
1.604300
</td>
<td style="text-align:right;">
1.0613
</td>
<td style="text-align:right;">
78.753
</td>
<td style="text-align:right;">
67.303
</td>
<td style="text-align:right;">
1.458
</td>
<td style="text-align:right;">
2.528
</td>
<td style="text-align:right;">
0.0010073
</td>
<td style="text-align:right;">
2147.2345
</td>
<td style="text-align:right;">
0.0002161
</td>
<td style="text-align:right;">
0.0470100
</td>
<td style="text-align:right;">
7.286462
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 02.01.04b.tif
</td>
<td style="text-align:right;">
63.1796
</td>
<td style="text-align:right;">
39.5029
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
58
</td>
<td style="text-align:right;">
2.350000
</td>
<td style="text-align:right;">
1.2231
</td>
<td style="text-align:right;">
74.319
</td>
<td style="text-align:right;">
63.154
</td>
<td style="text-align:right;">
1.511
</td>
<td style="text-align:right;">
2.774
</td>
<td style="text-align:right;">
0.0008370
</td>
<td style="text-align:right;">
1909.8373
</td>
<td style="text-align:right;">
0.0002498
</td>
<td style="text-align:right;">
0.0462944
</td>
<td style="text-align:right;">
7.492687
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 02.01.05b.tif
</td>
<td style="text-align:right;">
61.4986
</td>
<td style="text-align:right;">
39.3288
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
55
</td>
<td style="text-align:right;">
2.318700
</td>
<td style="text-align:right;">
1.2305
</td>
<td style="text-align:right;">
72.826
</td>
<td style="text-align:right;">
61.533
</td>
<td style="text-align:right;">
1.528
</td>
<td style="text-align:right;">
2.830
</td>
<td style="text-align:right;">
0.0010008
</td>
<td style="text-align:right;">
1892.9859
</td>
<td style="text-align:right;">
0.0002519
</td>
<td style="text-align:right;">
0.0486556
</td>
<td style="text-align:right;">
7.314206
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 02.01.06b.tif
</td>
<td style="text-align:right;">
55.7319
</td>
<td style="text-align:right;">
36.8995
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
3.773800
</td>
<td style="text-align:right;">
1.5229
</td>
<td style="text-align:right;">
66.495
</td>
<td style="text-align:right;">
55.154
</td>
<td style="text-align:right;">
1.613
</td>
<td style="text-align:right;">
3.280
</td>
<td style="text-align:right;">
0.0016549
</td>
<td style="text-align:right;">
1608.6542
</td>
<td style="text-align:right;">
0.0003015
</td>
<td style="text-align:right;">
0.0575769
</td>
<td style="text-align:right;">
6.858856
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 02.01.07b.tif
</td>
<td style="text-align:right;">
56.4192
</td>
<td style="text-align:right;">
36.6421
</td>
<td style="text-align:right;">
38
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
3.391700
</td>
<td style="text-align:right;">
1.4207
</td>
<td style="text-align:right;">
67.253
</td>
<td style="text-align:right;">
56.722
</td>
<td style="text-align:right;">
1.560
</td>
<td style="text-align:right;">
3.056
</td>
<td style="text-align:right;">
0.0010080
</td>
<td style="text-align:right;">
1664.5492
</td>
<td style="text-align:right;">
0.0002844
</td>
<td style="text-align:right;">
0.0499163
</td>
<td style="text-align:right;">
7.327388
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 02.01.08b.tif
</td>
<td style="text-align:right;">
51.3959
</td>
<td style="text-align:right;">
32.6864
</td>
<td style="text-align:right;">
40
</td>
<td style="text-align:right;">
44
</td>
<td style="text-align:right;">
5.767800
</td>
<td style="text-align:right;">
1.7527
</td>
<td style="text-align:right;">
61.115
</td>
<td style="text-align:right;">
51.450
</td>
<td style="text-align:right;">
1.564
</td>
<td style="text-align:right;">
3.287
</td>
<td style="text-align:right;">
0.0021168
</td>
<td style="text-align:right;">
1365.7147
</td>
<td style="text-align:right;">
0.0003393
</td>
<td style="text-align:right;">
0.0634056
</td>
<td style="text-align:right;">
6.612594
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
08
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 02.02.09b.tif
</td>
<td style="text-align:right;">
68.8342
</td>
<td style="text-align:right;">
40.4049
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
64
</td>
<td style="text-align:right;">
1.866800
</td>
<td style="text-align:right;">
1.0613
</td>
<td style="text-align:right;">
80.053
</td>
<td style="text-align:right;">
68.950
</td>
<td style="text-align:right;">
1.419
</td>
<td style="text-align:right;">
2.428
</td>
<td style="text-align:right;">
0.0012716
</td>
<td style="text-align:right;">
2234.1319
</td>
<td style="text-align:right;">
0.0001952
</td>
<td style="text-align:right;">
0.0489212
</td>
<td style="text-align:right;">
7.043475
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
09
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 02.02.10b.tif
</td>
<td style="text-align:right;">
72.7582
</td>
<td style="text-align:right;">
42.6782
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
65
</td>
<td style="text-align:right;">
1.222600
</td>
<td style="text-align:right;">
0.9278
</td>
<td style="text-align:right;">
84.183
</td>
<td style="text-align:right;">
72.795
</td>
<td style="text-align:right;">
1.432
</td>
<td style="text-align:right;">
2.394
</td>
<td style="text-align:right;">
0.0011397
</td>
<td style="text-align:right;">
2417.9995
</td>
<td style="text-align:right;">
0.0001860
</td>
<td style="text-align:right;">
0.0474394
</td>
<td style="text-align:right;">
7.128687
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
10
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 02.02.11b.tif
</td>
<td style="text-align:right;">
60.8630
</td>
<td style="text-align:right;">
37.9899
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
55
</td>
<td style="text-align:right;">
3.036700
</td>
<td style="text-align:right;">
1.3453
</td>
<td style="text-align:right;">
71.629
</td>
<td style="text-align:right;">
60.871
</td>
<td style="text-align:right;">
1.530
</td>
<td style="text-align:right;">
2.874
</td>
<td style="text-align:right;">
0.0018789
</td>
<td style="text-align:right;">
1869.6256
</td>
<td style="text-align:right;">
0.0002455
</td>
<td style="text-align:right;">
0.0584819
</td>
<td style="text-align:right;">
6.699344
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
11
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 02.02.12b.tif
</td>
<td style="text-align:right;">
53.8159
</td>
<td style="text-align:right;">
35.0539
</td>
<td style="text-align:right;">
42
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
5.075600
</td>
<td style="text-align:right;">
1.7089
</td>
<td style="text-align:right;">
64.232
</td>
<td style="text-align:right;">
53.801
</td>
<td style="text-align:right;">
1.605
</td>
<td style="text-align:right;">
3.370
</td>
<td style="text-align:right;">
0.0021032
</td>
<td style="text-align:right;">
1498.2515
</td>
<td style="text-align:right;">
0.0003189
</td>
<td style="text-align:right;">
0.0626469
</td>
<td style="text-align:right;">
6.621887
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
12
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 02.02.13b.tif
</td>
<td style="text-align:right;">
59.8839
</td>
<td style="text-align:right;">
36.7365
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
3.440300
</td>
<td style="text-align:right;">
1.3714
</td>
<td style="text-align:right;">
70.330
</td>
<td style="text-align:right;">
60.032
</td>
<td style="text-align:right;">
1.498
</td>
<td style="text-align:right;">
2.833
</td>
<td style="text-align:right;">
0.0021107
</td>
<td style="text-align:right;">
1750.4608
</td>
<td style="text-align:right;">
0.0002621
</td>
<td style="text-align:right;">
0.0616669
</td>
<td style="text-align:right;">
6.571169
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
13
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 03.01.01b.tif
</td>
<td style="text-align:right;">
60.6470
</td>
<td style="text-align:right;">
37.4111
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
55
</td>
<td style="text-align:right;">
2.899600
</td>
<td style="text-align:right;">
1.2971
</td>
<td style="text-align:right;">
71.103
</td>
<td style="text-align:right;">
60.676
</td>
<td style="text-align:right;">
1.514
</td>
<td style="text-align:right;">
2.801
</td>
<td style="text-align:right;">
0.0010777
</td>
<td style="text-align:right;">
1841.4485
</td>
<td style="text-align:right;">
0.0002460
</td>
<td style="text-align:right;">
0.0489369
</td>
<td style="text-align:right;">
7.244731
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 03.01.02b.tif
</td>
<td style="text-align:right;">
60.6312
</td>
<td style="text-align:right;">
37.0457
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
53
</td>
<td style="text-align:right;">
3.043900
</td>
<td style="text-align:right;">
1.3160
</td>
<td style="text-align:right;">
70.883
</td>
<td style="text-align:right;">
60.612
</td>
<td style="text-align:right;">
1.496
</td>
<td style="text-align:right;">
2.802
</td>
<td style="text-align:right;">
0.0011703
</td>
<td style="text-align:right;">
1791.2991
</td>
<td style="text-align:right;">
0.0002545
</td>
<td style="text-align:right;">
0.0503875
</td>
<td style="text-align:right;">
7.169619
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 03.01.03b.tif
</td>
<td style="text-align:right;">
66.5665
</td>
<td style="text-align:right;">
41.0800
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
58
</td>
<td style="text-align:right;">
1.792800
</td>
<td style="text-align:right;">
1.1102
</td>
<td style="text-align:right;">
78.102
</td>
<td style="text-align:right;">
66.479
</td>
<td style="text-align:right;">
1.482
</td>
<td style="text-align:right;">
2.626
</td>
<td style="text-align:right;">
0.0009365
</td>
<td style="text-align:right;">
2153.1947
</td>
<td style="text-align:right;">
0.0002158
</td>
<td style="text-align:right;">
0.0461600
</td>
<td style="text-align:right;">
7.362906
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 03.01.04b.tif
</td>
<td style="text-align:right;">
66.2254
</td>
<td style="text-align:right;">
41.7253
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
1.769400
</td>
<td style="text-align:right;">
1.1255
</td>
<td style="text-align:right;">
78.198
</td>
<td style="text-align:right;">
66.346
</td>
<td style="text-align:right;">
1.494
</td>
<td style="text-align:right;">
2.680
</td>
<td style="text-align:right;">
0.0007221
</td>
<td style="text-align:right;">
2089.8312
</td>
<td style="text-align:right;">
0.0002306
</td>
<td style="text-align:right;">
0.0436944
</td>
<td style="text-align:right;">
7.627600
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 03.01.05b.tif
</td>
<td style="text-align:right;">
68.5368
</td>
<td style="text-align:right;">
43.0259
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
61
</td>
<td style="text-align:right;">
1.355400
</td>
<td style="text-align:right;">
1.0318
</td>
<td style="text-align:right;">
80.839
</td>
<td style="text-align:right;">
68.457
</td>
<td style="text-align:right;">
1.479
</td>
<td style="text-align:right;">
2.600
</td>
<td style="text-align:right;">
0.0007383
</td>
<td style="text-align:right;">
2263.4030
</td>
<td style="text-align:right;">
0.0002109
</td>
<td style="text-align:right;">
0.0431069
</td>
<td style="text-align:right;">
7.581250
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 03.01.06b.tif
</td>
<td style="text-align:right;">
57.3132
</td>
<td style="text-align:right;">
37.6411
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
3.240900
</td>
<td style="text-align:right;">
1.4363
</td>
<td style="text-align:right;">
68.374
</td>
<td style="text-align:right;">
57.010
</td>
<td style="text-align:right;">
1.576
</td>
<td style="text-align:right;">
3.109
</td>
<td style="text-align:right;">
0.0015161
</td>
<td style="text-align:right;">
1708.4368
</td>
<td style="text-align:right;">
0.0002812
</td>
<td style="text-align:right;">
0.0558538
</td>
<td style="text-align:right;">
6.946319
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 03.01.07b.tif
</td>
<td style="text-align:right;">
65.1205
</td>
<td style="text-align:right;">
41.5174
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
56
</td>
<td style="text-align:right;">
1.838400
</td>
<td style="text-align:right;">
1.1560
</td>
<td style="text-align:right;">
77.342
</td>
<td style="text-align:right;">
65.025
</td>
<td style="text-align:right;">
1.489
</td>
<td style="text-align:right;">
2.712
</td>
<td style="text-align:right;">
0.0007912
</td>
<td style="text-align:right;">
2166.5518
</td>
<td style="text-align:right;">
0.0002166
</td>
<td style="text-align:right;">
0.0441031
</td>
<td style="text-align:right;">
7.543762
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 03.01.08b.tif
</td>
<td style="text-align:right;">
49.0307
</td>
<td style="text-align:right;">
31.2200
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
6.724400
</td>
<td style="text-align:right;">
1.8321
</td>
<td style="text-align:right;">
57.997
</td>
<td style="text-align:right;">
48.482
</td>
<td style="text-align:right;">
1.611
</td>
<td style="text-align:right;">
3.503
</td>
<td style="text-align:right;">
0.0022544
</td>
<td style="text-align:right;">
1231.7783
</td>
<td style="text-align:right;">
0.0003796
</td>
<td style="text-align:right;">
0.0648081
</td>
<td style="text-align:right;">
6.540350
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
08
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 03.02.09b.tif
</td>
<td style="text-align:right;">
65.3694
</td>
<td style="text-align:right;">
38.7968
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
58
</td>
<td style="text-align:right;">
2.373200
</td>
<td style="text-align:right;">
1.1700
</td>
<td style="text-align:right;">
75.855
</td>
<td style="text-align:right;">
65.341
</td>
<td style="text-align:right;">
1.464
</td>
<td style="text-align:right;">
2.601
</td>
<td style="text-align:right;">
0.0013354
</td>
<td style="text-align:right;">
2052.4557
</td>
<td style="text-align:right;">
0.0002132
</td>
<td style="text-align:right;">
0.0502162
</td>
<td style="text-align:right;">
7.008788
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
09
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 03.02.10b.tif
</td>
<td style="text-align:right;">
80.1724
</td>
<td style="text-align:right;">
46.7331
</td>
<td style="text-align:right;">
61
</td>
<td style="text-align:right;">
73
</td>
<td style="text-align:right;">
0.354000
</td>
<td style="text-align:right;">
0.6857
</td>
<td style="text-align:right;">
92.592
</td>
<td style="text-align:right;">
80.267
</td>
<td style="text-align:right;">
1.386
</td>
<td style="text-align:right;">
2.219
</td>
<td style="text-align:right;">
0.0006787
</td>
<td style="text-align:right;">
2811.9402
</td>
<td style="text-align:right;">
0.0001643
</td>
<td style="text-align:right;">
0.0399444
</td>
<td style="text-align:right;">
7.583563
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
10
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 03.02.11b.tif
</td>
<td style="text-align:right;">
67.0893
</td>
<td style="text-align:right;">
42.2992
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
61
</td>
<td style="text-align:right;">
1.437200
</td>
<td style="text-align:right;">
1.0467
</td>
<td style="text-align:right;">
79.137
</td>
<td style="text-align:right;">
67.260
</td>
<td style="text-align:right;">
1.489
</td>
<td style="text-align:right;">
2.642
</td>
<td style="text-align:right;">
0.0011126
</td>
<td style="text-align:right;">
2224.9359
</td>
<td style="text-align:right;">
0.0002124
</td>
<td style="text-align:right;">
0.0487200
</td>
<td style="text-align:right;">
7.173369
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
11
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 03.02.12b.tif
</td>
<td style="text-align:right;">
63.2462
</td>
<td style="text-align:right;">
40.4792
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
56
</td>
<td style="text-align:right;">
2.431700
</td>
<td style="text-align:right;">
1.2763
</td>
<td style="text-align:right;">
75.253
</td>
<td style="text-align:right;">
63.357
</td>
<td style="text-align:right;">
1.513
</td>
<td style="text-align:right;">
2.817
</td>
<td style="text-align:right;">
0.0014599
</td>
<td style="text-align:right;">
2062.6616
</td>
<td style="text-align:right;">
0.0002272
</td>
<td style="text-align:right;">
0.0532938
</td>
<td style="text-align:right;">
6.946831
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
12
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 03.02.13b.tif
</td>
<td style="text-align:right;">
70.8233
</td>
<td style="text-align:right;">
42.7527
</td>
<td style="text-align:right;">
55
</td>
<td style="text-align:right;">
63
</td>
<td style="text-align:right;">
1.115200
</td>
<td style="text-align:right;">
0.9144
</td>
<td style="text-align:right;">
82.709
</td>
<td style="text-align:right;">
70.763
</td>
<td style="text-align:right;">
1.435
</td>
<td style="text-align:right;">
2.421
</td>
<td style="text-align:right;">
0.0010669
</td>
<td style="text-align:right;">
2339.8295
</td>
<td style="text-align:right;">
0.0001982
</td>
<td style="text-align:right;">
0.0473606
</td>
<td style="text-align:right;">
7.178700
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
13
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 04.01.01b.tif
</td>
<td style="text-align:right;">
62.7633
</td>
<td style="text-align:right;">
38.5696
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
56
</td>
<td style="text-align:right;">
2.490300
</td>
<td style="text-align:right;">
1.2304
</td>
<td style="text-align:right;">
73.798
</td>
<td style="text-align:right;">
62.667
</td>
<td style="text-align:right;">
1.476
</td>
<td style="text-align:right;">
2.689
</td>
<td style="text-align:right;">
0.0009006
</td>
<td style="text-align:right;">
1947.9551
</td>
<td style="text-align:right;">
0.0002336
</td>
<td style="text-align:right;">
0.0462875
</td>
<td style="text-align:right;">
7.419681
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 04.01.02b.tif
</td>
<td style="text-align:right;">
64.3415
</td>
<td style="text-align:right;">
38.4663
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
2.469700
</td>
<td style="text-align:right;">
1.1890
</td>
<td style="text-align:right;">
74.807
</td>
<td style="text-align:right;">
64.314
</td>
<td style="text-align:right;">
1.462
</td>
<td style="text-align:right;">
2.635
</td>
<td style="text-align:right;">
0.0010264
</td>
<td style="text-align:right;">
1979.4164
</td>
<td style="text-align:right;">
0.0002254
</td>
<td style="text-align:right;">
0.0474956
</td>
<td style="text-align:right;">
7.278650
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 04.01.03b.tif
</td>
<td style="text-align:right;">
66.9689
</td>
<td style="text-align:right;">
42.3476
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
59
</td>
<td style="text-align:right;">
1.427600
</td>
<td style="text-align:right;">
1.0522
</td>
<td style="text-align:right;">
79.309
</td>
<td style="text-align:right;">
66.921
</td>
<td style="text-align:right;">
1.472
</td>
<td style="text-align:right;">
2.613
</td>
<td style="text-align:right;">
0.0006625
</td>
<td style="text-align:right;">
2190.3115
</td>
<td style="text-align:right;">
0.0002181
</td>
<td style="text-align:right;">
0.0420469
</td>
<td style="text-align:right;">
7.695762
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 04.01.04b.tif
</td>
<td style="text-align:right;">
71.0864
</td>
<td style="text-align:right;">
44.5029
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
63
</td>
<td style="text-align:right;">
0.946400
</td>
<td style="text-align:right;">
0.9370
</td>
<td style="text-align:right;">
83.909
</td>
<td style="text-align:right;">
71.119
</td>
<td style="text-align:right;">
1.459
</td>
<td style="text-align:right;">
2.495
</td>
<td style="text-align:right;">
0.0005373
</td>
<td style="text-align:right;">
2397.8032
</td>
<td style="text-align:right;">
0.0002002
</td>
<td style="text-align:right;">
0.0392912
</td>
<td style="text-align:right;">
7.882106
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 04.01.05b.tif
</td>
<td style="text-align:right;">
74.0306
</td>
<td style="text-align:right;">
45.8941
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
67
</td>
<td style="text-align:right;">
0.679400
</td>
<td style="text-align:right;">
0.8512
</td>
<td style="text-align:right;">
86.850
</td>
<td style="text-align:right;">
73.970
</td>
<td style="text-align:right;">
1.452
</td>
<td style="text-align:right;">
2.438
</td>
<td style="text-align:right;">
0.0005525
</td>
<td style="text-align:right;">
2513.9682
</td>
<td style="text-align:right;">
0.0001923
</td>
<td style="text-align:right;">
0.0393725
</td>
<td style="text-align:right;">
7.832206
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 04.01.06b.tif
</td>
<td style="text-align:right;">
60.7268
</td>
<td style="text-align:right;">
38.9268
</td>
<td style="text-align:right;">
42
</td>
<td style="text-align:right;">
53
</td>
<td style="text-align:right;">
2.298600
</td>
<td style="text-align:right;">
1.2267
</td>
<td style="text-align:right;">
72.023
</td>
<td style="text-align:right;">
60.848
</td>
<td style="text-align:right;">
1.521
</td>
<td style="text-align:right;">
2.828
</td>
<td style="text-align:right;">
0.0010505
</td>
<td style="text-align:right;">
1823.1245
</td>
<td style="text-align:right;">
0.0002640
</td>
<td style="text-align:right;">
0.0498438
</td>
<td style="text-align:right;">
7.264800
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 04.01.07b.tif
</td>
<td style="text-align:right;">
65.9861
</td>
<td style="text-align:right;">
42.1533
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
59
</td>
<td style="text-align:right;">
1.622200
</td>
<td style="text-align:right;">
1.1014
</td>
<td style="text-align:right;">
78.085
</td>
<td style="text-align:right;">
65.820
</td>
<td style="text-align:right;">
1.508
</td>
<td style="text-align:right;">
2.722
</td>
<td style="text-align:right;">
0.0006626
</td>
<td style="text-align:right;">
2195.6801
</td>
<td style="text-align:right;">
0.0002161
</td>
<td style="text-align:right;">
0.0419937
</td>
<td style="text-align:right;">
7.703956
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 04.01.08b.tif
</td>
<td style="text-align:right;">
55.6005
</td>
<td style="text-align:right;">
35.0953
</td>
<td style="text-align:right;">
44
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
4.116600
</td>
<td style="text-align:right;">
1.5191
</td>
<td style="text-align:right;">
65.952
</td>
<td style="text-align:right;">
55.687
</td>
<td style="text-align:right;">
1.528
</td>
<td style="text-align:right;">
3.021
</td>
<td style="text-align:right;">
0.0017324
</td>
<td style="text-align:right;">
1594.6533
</td>
<td style="text-align:right;">
0.0002879
</td>
<td style="text-align:right;">
0.0574694
</td>
<td style="text-align:right;">
6.790694
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
08
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 04.02.09b.tif
</td>
<td style="text-align:right;">
65.7800
</td>
<td style="text-align:right;">
38.8621
</td>
<td style="text-align:right;">
53
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
2.252700
</td>
<td style="text-align:right;">
1.1259
</td>
<td style="text-align:right;">
76.410
</td>
<td style="text-align:right;">
65.830
</td>
<td style="text-align:right;">
1.447
</td>
<td style="text-align:right;">
2.526
</td>
<td style="text-align:right;">
0.0010773
</td>
<td style="text-align:right;">
2043.7884
</td>
<td style="text-align:right;">
0.0002160
</td>
<td style="text-align:right;">
0.0472956
</td>
<td style="text-align:right;">
7.206594
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
09
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 04.02.10b.tif
</td>
<td style="text-align:right;">
79.3596
</td>
<td style="text-align:right;">
47.0095
</td>
<td style="text-align:right;">
58
</td>
<td style="text-align:right;">
72
</td>
<td style="text-align:right;">
0.306600
</td>
<td style="text-align:right;">
0.6875
</td>
<td style="text-align:right;">
92.127
</td>
<td style="text-align:right;">
79.276
</td>
<td style="text-align:right;">
1.399
</td>
<td style="text-align:right;">
2.228
</td>
<td style="text-align:right;">
0.0006112
</td>
<td style="text-align:right;">
2730.5446
</td>
<td style="text-align:right;">
0.0001739
</td>
<td style="text-align:right;">
0.0397231
</td>
<td style="text-align:right;">
7.689113
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
10
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 04.02.11b.tif
</td>
<td style="text-align:right;">
73.4462
</td>
<td style="text-align:right;">
44.0362
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
66
</td>
<td style="text-align:right;">
0.874100
</td>
<td style="text-align:right;">
0.8516
</td>
<td style="text-align:right;">
85.497
</td>
<td style="text-align:right;">
73.367
</td>
<td style="text-align:right;">
1.429
</td>
<td style="text-align:right;">
2.374
</td>
<td style="text-align:right;">
0.0009556
</td>
<td style="text-align:right;">
2481.2894
</td>
<td style="text-align:right;">
0.0001869
</td>
<td style="text-align:right;">
0.0456569
</td>
<td style="text-align:right;">
7.278900
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
11
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 04.02.12b.tif
</td>
<td style="text-align:right;">
67.5899
</td>
<td style="text-align:right;">
41.8292
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
59
</td>
<td style="text-align:right;">
1.574500
</td>
<td style="text-align:right;">
1.0598
</td>
<td style="text-align:right;">
79.480
</td>
<td style="text-align:right;">
67.546
</td>
<td style="text-align:right;">
1.471
</td>
<td style="text-align:right;">
2.582
</td>
<td style="text-align:right;">
0.0011940
</td>
<td style="text-align:right;">
2249.1711
</td>
<td style="text-align:right;">
0.0002053
</td>
<td style="text-align:right;">
0.0492575
</td>
<td style="text-align:right;">
7.103731
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
12
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_69 04.02.13b.tif
</td>
<td style="text-align:right;">
75.6337
</td>
<td style="text-align:right;">
44.6116
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
69
</td>
<td style="text-align:right;">
0.600000
</td>
<td style="text-align:right;">
0.7488
</td>
<td style="text-align:right;">
87.507
</td>
<td style="text-align:right;">
75.741
</td>
<td style="text-align:right;">
1.413
</td>
<td style="text-align:right;">
2.299
</td>
<td style="text-align:right;">
0.0008618
</td>
<td style="text-align:right;">
2527.5480
</td>
<td style="text-align:right;">
0.0001846
</td>
<td style="text-align:right;">
0.0440362
</td>
<td style="text-align:right;">
7.353731
</td>
<td style="text-align:left;">
RMS_69
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
13
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
69
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 00.01.01a.tif
</td>
<td style="text-align:right;">
44.0747
</td>
<td style="text-align:right;">
35.2546
</td>
<td style="text-align:right;">
30
</td>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
8.398800
</td>
<td style="text-align:right;">
2.4795
</td>
<td style="text-align:right;">
56.301
</td>
<td style="text-align:right;">
44.213
</td>
<td style="text-align:right;">
1.995
</td>
<td style="text-align:right;">
5.397
</td>
<td style="text-align:right;">
0.0028786
</td>
<td style="text-align:right;">
1195.2470
</td>
<td style="text-align:right;">
0.0004178
</td>
<td style="text-align:right;">
0.0759931
</td>
<td style="text-align:right;">
6.477688
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 00.01.02a.tif
</td>
<td style="text-align:right;">
42.2521
</td>
<td style="text-align:right;">
28.3844
</td>
<td style="text-align:right;">
35
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
13.689300
</td>
<td style="text-align:right;">
2.7202
</td>
<td style="text-align:right;">
50.747
</td>
<td style="text-align:right;">
42.264
</td>
<td style="text-align:right;">
1.815
</td>
<td style="text-align:right;">
4.977
</td>
<td style="text-align:right;">
0.0026586
</td>
<td style="text-align:right;">
967.4467
</td>
<td style="text-align:right;">
0.0004971
</td>
<td style="text-align:right;">
0.0713950
</td>
<td style="text-align:right;">
6.389719
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 00.01.03a.tif
</td>
<td style="text-align:right;">
48.1124
</td>
<td style="text-align:right;">
30.1132
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
8.406500
</td>
<td style="text-align:right;">
2.0088
</td>
<td style="text-align:right;">
56.601
</td>
<td style="text-align:right;">
47.936
</td>
<td style="text-align:right;">
1.616
</td>
<td style="text-align:right;">
3.639
</td>
<td style="text-align:right;">
0.0016108
</td>
<td style="text-align:right;">
1162.6430
</td>
<td style="text-align:right;">
0.0003981
</td>
<td style="text-align:right;">
0.0592425
</td>
<td style="text-align:right;">
6.852544
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 00.02.04a.tif
</td>
<td style="text-align:right;">
40.9426
</td>
<td style="text-align:right;">
31.0528
</td>
<td style="text-align:right;">
32
</td>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
11.231600
</td>
<td style="text-align:right;">
2.6642
</td>
<td style="text-align:right;">
51.426
</td>
<td style="text-align:right;">
41.229
</td>
<td style="text-align:right;">
1.933
</td>
<td style="text-align:right;">
5.455
</td>
<td style="text-align:right;">
0.0036913
</td>
<td style="text-align:right;">
1030.3337
</td>
<td style="text-align:right;">
0.0004835
</td>
<td style="text-align:right;">
0.0836694
</td>
<td style="text-align:right;">
6.153081
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 00.02.05a.tif
</td>
<td style="text-align:right;">
41.3020
</td>
<td style="text-align:right;">
28.8754
</td>
<td style="text-align:right;">
32
</td>
<td style="text-align:right;">
35
</td>
<td style="text-align:right;">
12.395800
</td>
<td style="text-align:right;">
2.6541
</td>
<td style="text-align:right;">
50.215
</td>
<td style="text-align:right;">
41.189
</td>
<td style="text-align:right;">
1.857
</td>
<td style="text-align:right;">
5.069
</td>
<td style="text-align:right;">
0.0022952
</td>
<td style="text-align:right;">
962.7164
</td>
<td style="text-align:right;">
0.0005081
</td>
<td style="text-align:right;">
0.0698431
</td>
<td style="text-align:right;">
6.572262
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 00.02.06a.tif
</td>
<td style="text-align:right;">
59.7943
</td>
<td style="text-align:right;">
33.9841
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
55
</td>
<td style="text-align:right;">
3.846000
</td>
<td style="text-align:right;">
1.3031
</td>
<td style="text-align:right;">
68.821
</td>
<td style="text-align:right;">
59.759
</td>
<td style="text-align:right;">
1.442
</td>
<td style="text-align:right;">
2.610
</td>
<td style="text-align:right;">
0.0017516
</td>
<td style="text-align:right;">
1672.8431
</td>
<td style="text-align:right;">
0.0002416
</td>
<td style="text-align:right;">
0.0558519
</td>
<td style="text-align:right;">
6.733288
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 02.01.01b.tif
</td>
<td style="text-align:right;">
44.4961
</td>
<td style="text-align:right;">
29.7769
</td>
<td style="text-align:right;">
34
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
9.952900
</td>
<td style="text-align:right;">
2.2966
</td>
<td style="text-align:right;">
53.547
</td>
<td style="text-align:right;">
44.529
</td>
<td style="text-align:right;">
1.732
</td>
<td style="text-align:right;">
4.243
</td>
<td style="text-align:right;">
0.0021471
</td>
<td style="text-align:right;">
1088.0575
</td>
<td style="text-align:right;">
0.0004375
</td>
<td style="text-align:right;">
0.0658600
</td>
<td style="text-align:right;">
6.605263
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 02.01.02b.tif
</td>
<td style="text-align:right;">
63.6304
</td>
<td style="text-align:right;">
37.9367
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
59
</td>
<td style="text-align:right;">
2.402200
</td>
<td style="text-align:right;">
1.1721
</td>
<td style="text-align:right;">
74.109
</td>
<td style="text-align:right;">
63.588
</td>
<td style="text-align:right;">
1.459
</td>
<td style="text-align:right;">
2.592
</td>
<td style="text-align:right;">
0.0014569
</td>
<td style="text-align:right;">
1933.8073
</td>
<td style="text-align:right;">
0.0002297
</td>
<td style="text-align:right;">
0.0528025
</td>
<td style="text-align:right;">
6.924988
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 02.01.03b.tif
</td>
<td style="text-align:right;">
54.9642
</td>
<td style="text-align:right;">
34.2966
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
4.979000
</td>
<td style="text-align:right;">
1.6249
</td>
<td style="text-align:right;">
64.754
</td>
<td style="text-align:right;">
55.281
</td>
<td style="text-align:right;">
1.562
</td>
<td style="text-align:right;">
3.140
</td>
<td style="text-align:right;">
0.0018802
</td>
<td style="text-align:right;">
1601.3916
</td>
<td style="text-align:right;">
0.0002731
</td>
<td style="text-align:right;">
0.0586262
</td>
<td style="text-align:right;">
6.710181
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 02.01.04b.tif
</td>
<td style="text-align:right;">
63.6525
</td>
<td style="text-align:right;">
39.1912
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
56
</td>
<td style="text-align:right;">
2.594900
</td>
<td style="text-align:right;">
1.2936
</td>
<td style="text-align:right;">
75.018
</td>
<td style="text-align:right;">
63.763
</td>
<td style="text-align:right;">
1.478
</td>
<td style="text-align:right;">
2.713
</td>
<td style="text-align:right;">
0.0013489
</td>
<td style="text-align:right;">
1995.2481
</td>
<td style="text-align:right;">
0.0002297
</td>
<td style="text-align:right;">
0.0514269
</td>
<td style="text-align:right;">
7.038969
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 02.012.05b.tif
</td>
<td style="text-align:right;">
65.3541
</td>
<td style="text-align:right;">
38.3792
</td>
<td style="text-align:right;">
53
</td>
<td style="text-align:right;">
61
</td>
<td style="text-align:right;">
2.667200
</td>
<td style="text-align:right;">
1.2238
</td>
<td style="text-align:right;">
75.688
</td>
<td style="text-align:right;">
65.582
</td>
<td style="text-align:right;">
1.464
</td>
<td style="text-align:right;">
2.615
</td>
<td style="text-align:right;">
0.0013571
</td>
<td style="text-align:right;">
1942.8297
</td>
<td style="text-align:right;">
0.0002330
</td>
<td style="text-align:right;">
0.0514038
</td>
<td style="text-align:right;">
7.006737
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
.0
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 02.012.06b.tif
</td>
<td style="text-align:right;">
50.0942
</td>
<td style="text-align:right;">
30.7673
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
44
</td>
<td style="text-align:right;">
7.300700
</td>
<td style="text-align:right;">
1.8422
</td>
<td style="text-align:right;">
58.869
</td>
<td style="text-align:right;">
50.134
</td>
<td style="text-align:right;">
1.567
</td>
<td style="text-align:right;">
3.345
</td>
<td style="text-align:right;">
0.0016373
</td>
<td style="text-align:right;">
1225.9510
</td>
<td style="text-align:right;">
0.0003746
</td>
<td style="text-align:right;">
0.0587075
</td>
<td style="text-align:right;">
6.827488
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
.0
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 02.012.07b.tif
</td>
<td style="text-align:right;">
57.3010
</td>
<td style="text-align:right;">
34.5459
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
3.996200
</td>
<td style="text-align:right;">
1.4295
</td>
<td style="text-align:right;">
66.817
</td>
<td style="text-align:right;">
57.014
</td>
<td style="text-align:right;">
1.502
</td>
<td style="text-align:right;">
2.873
</td>
<td style="text-align:right;">
0.0015827
</td>
<td style="text-align:right;">
1638.7492
</td>
<td style="text-align:right;">
0.0002647
</td>
<td style="text-align:right;">
0.0548775
</td>
<td style="text-align:right;">
6.864088
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
.0
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 03.01.01b.tif
</td>
<td style="text-align:right;">
50.8015
</td>
<td style="text-align:right;">
33.2217
</td>
<td style="text-align:right;">
38
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
6.001200
</td>
<td style="text-align:right;">
1.8117
</td>
<td style="text-align:right;">
60.632
</td>
<td style="text-align:right;">
50.891
</td>
<td style="text-align:right;">
1.631
</td>
<td style="text-align:right;">
3.525
</td>
<td style="text-align:right;">
0.0019007
</td>
<td style="text-align:right;">
1334.7341
</td>
<td style="text-align:right;">
0.0003596
</td>
<td style="text-align:right;">
0.0625612
</td>
<td style="text-align:right;">
6.722550
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 03.01.02b.tif
</td>
<td style="text-align:right;">
65.4069
</td>
<td style="text-align:right;">
38.2299
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
2.178400
</td>
<td style="text-align:right;">
1.0932
</td>
<td style="text-align:right;">
75.982
</td>
<td style="text-align:right;">
65.517
</td>
<td style="text-align:right;">
1.424
</td>
<td style="text-align:right;">
2.463
</td>
<td style="text-align:right;">
0.0014168
</td>
<td style="text-align:right;">
2009.8413
</td>
<td style="text-align:right;">
0.0002156
</td>
<td style="text-align:right;">
0.0517012
</td>
<td style="text-align:right;">
6.933619
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 03.01.03b.tif
</td>
<td style="text-align:right;">
60.8359
</td>
<td style="text-align:right;">
37.6014
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
3.374000
</td>
<td style="text-align:right;">
1.3972
</td>
<td style="text-align:right;">
71.354
</td>
<td style="text-align:right;">
60.852
</td>
<td style="text-align:right;">
1.525
</td>
<td style="text-align:right;">
2.903
</td>
<td style="text-align:right;">
0.0015632
</td>
<td style="text-align:right;">
1856.8823
</td>
<td style="text-align:right;">
0.0002442
</td>
<td style="text-align:right;">
0.0544425
</td>
<td style="text-align:right;">
6.885063
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 03.01.04b.tif
</td>
<td style="text-align:right;">
64.6038
</td>
<td style="text-align:right;">
38.9240
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
59
</td>
<td style="text-align:right;">
2.255100
</td>
<td style="text-align:right;">
1.1616
</td>
<td style="text-align:right;">
75.025
</td>
<td style="text-align:right;">
63.944
</td>
<td style="text-align:right;">
1.492
</td>
<td style="text-align:right;">
2.664
</td>
<td style="text-align:right;">
0.0012344
</td>
<td style="text-align:right;">
2012.8524
</td>
<td style="text-align:right;">
0.0002232
</td>
<td style="text-align:right;">
0.0497587
</td>
<td style="text-align:right;">
7.094069
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 03.02.05b.tif
</td>
<td style="text-align:right;">
65.1857
</td>
<td style="text-align:right;">
38.8911
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
59
</td>
<td style="text-align:right;">
2.520000
</td>
<td style="text-align:right;">
1.2009
</td>
<td style="text-align:right;">
75.546
</td>
<td style="text-align:right;">
64.576
</td>
<td style="text-align:right;">
1.489
</td>
<td style="text-align:right;">
2.671
</td>
<td style="text-align:right;">
0.0012532
</td>
<td style="text-align:right;">
1931.7521
</td>
<td style="text-align:right;">
0.0002404
</td>
<td style="text-align:right;">
0.0509094
</td>
<td style="text-align:right;">
7.082075
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 03.02.06b.tif
</td>
<td style="text-align:right;">
53.0745
</td>
<td style="text-align:right;">
32.2675
</td>
<td style="text-align:right;">
42
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
5.768300
</td>
<td style="text-align:right;">
1.6425
</td>
<td style="text-align:right;">
62.068
</td>
<td style="text-align:right;">
53.143
</td>
<td style="text-align:right;">
1.536
</td>
<td style="text-align:right;">
3.122
</td>
<td style="text-align:right;">
0.0015062
</td>
<td style="text-align:right;">
1360.0457
</td>
<td style="text-align:right;">
0.0003353
</td>
<td style="text-align:right;">
0.0564625
</td>
<td style="text-align:right;">
6.899294
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 03.02.07b.tif
</td>
<td style="text-align:right;">
57.3531
</td>
<td style="text-align:right;">
34.5588
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
3.931800
</td>
<td style="text-align:right;">
1.4079
</td>
<td style="text-align:right;">
66.862
</td>
<td style="text-align:right;">
57.067
</td>
<td style="text-align:right;">
1.499
</td>
<td style="text-align:right;">
2.858
</td>
<td style="text-align:right;">
0.0015627
</td>
<td style="text-align:right;">
1627.4008
</td>
<td style="text-align:right;">
0.0002690
</td>
<td style="text-align:right;">
0.0549219
</td>
<td style="text-align:right;">
6.868681
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 04.01.01b.tif
</td>
<td style="text-align:right;">
60.7186
</td>
<td style="text-align:right;">
39.7085
</td>
<td style="text-align:right;">
40
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
2.549000
</td>
<td style="text-align:right;">
1.3246
</td>
<td style="text-align:right;">
72.755
</td>
<td style="text-align:right;">
60.826
</td>
<td style="text-align:right;">
1.527
</td>
<td style="text-align:right;">
2.909
</td>
<td style="text-align:right;">
0.0014046
</td>
<td style="text-align:right;">
1871.7494
</td>
<td style="text-align:right;">
0.0002587
</td>
<td style="text-align:right;">
0.0545100
</td>
<td style="text-align:right;">
7.006031
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 04.01.02b.tif
</td>
<td style="text-align:right;">
67.3139
</td>
<td style="text-align:right;">
39.4315
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
1.851400
</td>
<td style="text-align:right;">
1.0384
</td>
<td style="text-align:right;">
78.232
</td>
<td style="text-align:right;">
67.418
</td>
<td style="text-align:right;">
1.418
</td>
<td style="text-align:right;">
2.423
</td>
<td style="text-align:right;">
0.0013319
</td>
<td style="text-align:right;">
2062.4716
</td>
<td style="text-align:right;">
0.0002182
</td>
<td style="text-align:right;">
0.0511600
</td>
<td style="text-align:right;">
6.990213
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 04.01.03b.tif
</td>
<td style="text-align:right;">
65.8391
</td>
<td style="text-align:right;">
42.9813
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
58
</td>
<td style="text-align:right;">
1.662000
</td>
<td style="text-align:right;">
1.1678
</td>
<td style="text-align:right;">
78.500
</td>
<td style="text-align:right;">
65.757
</td>
<td style="text-align:right;">
1.529
</td>
<td style="text-align:right;">
2.797
</td>
<td style="text-align:right;">
0.0009506
</td>
<td style="text-align:right;">
2181.1082
</td>
<td style="text-align:right;">
0.0002225
</td>
<td style="text-align:right;">
0.0469350
</td>
<td style="text-align:right;">
7.385900
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 04.01.04b.tif
</td>
<td style="text-align:right;">
62.8955
</td>
<td style="text-align:right;">
38.9156
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
2.659600
</td>
<td style="text-align:right;">
1.2776
</td>
<td style="text-align:right;">
73.960
</td>
<td style="text-align:right;">
62.969
</td>
<td style="text-align:right;">
1.498
</td>
<td style="text-align:right;">
2.753
</td>
<td style="text-align:right;">
0.0011794
</td>
<td style="text-align:right;">
1980.5748
</td>
<td style="text-align:right;">
0.0002300
</td>
<td style="text-align:right;">
0.0495562
</td>
<td style="text-align:right;">
7.153950
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 04.02.05b.tif
</td>
<td style="text-align:right;">
64.4757
</td>
<td style="text-align:right;">
39.9770
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
2.391400
</td>
<td style="text-align:right;">
1.2430
</td>
<td style="text-align:right;">
75.761
</td>
<td style="text-align:right;">
64.432
</td>
<td style="text-align:right;">
1.496
</td>
<td style="text-align:right;">
2.758
</td>
<td style="text-align:right;">
0.0010197
</td>
<td style="text-align:right;">
1980.2220
</td>
<td style="text-align:right;">
0.0002392
</td>
<td style="text-align:right;">
0.0483275
</td>
<td style="text-align:right;">
7.306506
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 04.02.06b.tif
</td>
<td style="text-align:right;">
55.3954
</td>
<td style="text-align:right;">
35.4727
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
4.524500
</td>
<td style="text-align:right;">
1.5985
</td>
<td style="text-align:right;">
65.669
</td>
<td style="text-align:right;">
55.425
</td>
<td style="text-align:right;">
1.591
</td>
<td style="text-align:right;">
3.206
</td>
<td style="text-align:right;">
0.0013262
</td>
<td style="text-align:right;">
1573.9818
</td>
<td style="text-align:right;">
0.0002989
</td>
<td style="text-align:right;">
0.0538156
</td>
<td style="text-align:right;">
7.064531
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_78 04.02.07b.tif
</td>
<td style="text-align:right;">
57.7733
</td>
<td style="text-align:right;">
36.1903
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
3.769800
</td>
<td style="text-align:right;">
1.4504
</td>
<td style="text-align:right;">
67.822
</td>
<td style="text-align:right;">
57.171
</td>
<td style="text-align:right;">
1.559
</td>
<td style="text-align:right;">
3.042
</td>
<td style="text-align:right;">
0.0015469
</td>
<td style="text-align:right;">
1756.6257
</td>
<td style="text-align:right;">
0.0002533
</td>
<td style="text-align:right;">
0.0540256
</td>
<td style="text-align:right;">
6.893644
</td>
<td style="text-align:left;">
RMS_78
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
78
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 00.01.01a.tif
</td>
<td style="text-align:right;">
53.2317
</td>
<td style="text-align:right;">
32.9478
</td>
<td style="text-align:right;">
44
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
5.790500
</td>
<td style="text-align:right;">
1.7355
</td>
<td style="text-align:right;">
62.529
</td>
<td style="text-align:right;">
53.158
</td>
<td style="text-align:right;">
1.563
</td>
<td style="text-align:right;">
3.240
</td>
<td style="text-align:right;">
0.0025838
</td>
<td style="text-align:right;">
1306.2462
</td>
<td style="text-align:right;">
0.0003682
</td>
<td style="text-align:right;">
0.0679556
</td>
<td style="text-align:right;">
6.415106
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 00.01.02a.tif
</td>
<td style="text-align:right;">
54.0172
</td>
<td style="text-align:right;">
32.2024
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
5.447100
</td>
<td style="text-align:right;">
1.5874
</td>
<td style="text-align:right;">
62.860
</td>
<td style="text-align:right;">
53.909
</td>
<td style="text-align:right;">
1.517
</td>
<td style="text-align:right;">
2.993
</td>
<td style="text-align:right;">
0.0029835
</td>
<td style="text-align:right;">
1370.2052
</td>
<td style="text-align:right;">
0.0003295
</td>
<td style="text-align:right;">
0.0695400
</td>
<td style="text-align:right;">
6.228156
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 00.01.03a.tif
</td>
<td style="text-align:right;">
54.6821
</td>
<td style="text-align:right;">
33.2041
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
5.256100
</td>
<td style="text-align:right;">
1.5970
</td>
<td style="text-align:right;">
64.061
</td>
<td style="text-align:right;">
54.998
</td>
<td style="text-align:right;">
1.525
</td>
<td style="text-align:right;">
3.036
</td>
<td style="text-align:right;">
0.0030864
</td>
<td style="text-align:right;">
1447.9396
</td>
<td style="text-align:right;">
0.0003134
</td>
<td style="text-align:right;">
0.0703069
</td>
<td style="text-align:right;">
6.199694
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 00.02.04a.tif
</td>
<td style="text-align:right;">
42.3932
</td>
<td style="text-align:right;">
30.7971
</td>
<td style="text-align:right;">
31
</td>
<td style="text-align:right;">
35
</td>
<td style="text-align:right;">
10.939300
</td>
<td style="text-align:right;">
2.5558
</td>
<td style="text-align:right;">
52.330
</td>
<td style="text-align:right;">
42.492
</td>
<td style="text-align:right;">
1.870
</td>
<td style="text-align:right;">
5.090
</td>
<td style="text-align:right;">
0.0024875
</td>
<td style="text-align:right;">
1016.6287
</td>
<td style="text-align:right;">
0.0004900
</td>
<td style="text-align:right;">
0.0718812
</td>
<td style="text-align:right;">
6.508825
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 00.02.05a.tif
</td>
<td style="text-align:right;">
47.0291
</td>
<td style="text-align:right;">
31.1757
</td>
<td style="text-align:right;">
38
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
8.274000
</td>
<td style="text-align:right;">
2.0819
</td>
<td style="text-align:right;">
56.414
</td>
<td style="text-align:right;">
47.126
</td>
<td style="text-align:right;">
1.683
</td>
<td style="text-align:right;">
3.922
</td>
<td style="text-align:right;">
0.0035656
</td>
<td style="text-align:right;">
1160.0050
</td>
<td style="text-align:right;">
0.0004159
</td>
<td style="text-align:right;">
0.0783219
</td>
<td style="text-align:right;">
6.096687
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 00.02.06a.tif
</td>
<td style="text-align:right;">
55.1772
</td>
<td style="text-align:right;">
37.1926
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
3.945000
</td>
<td style="text-align:right;">
1.5777
</td>
<td style="text-align:right;">
66.456
</td>
<td style="text-align:right;">
55.262
</td>
<td style="text-align:right;">
1.604
</td>
<td style="text-align:right;">
3.318
</td>
<td style="text-align:right;">
0.0026203
</td>
<td style="text-align:right;">
1488.4805
</td>
<td style="text-align:right;">
0.0003345
</td>
<td style="text-align:right;">
0.0702588
</td>
<td style="text-align:right;">
6.418606
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Fresh
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Sequential
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 02.01.01b.tif
</td>
<td style="text-align:right;">
57.5426
</td>
<td style="text-align:right;">
36.7346
</td>
<td style="text-align:right;">
40
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
3.366000
</td>
<td style="text-align:right;">
1.3986
</td>
<td style="text-align:right;">
68.164
</td>
<td style="text-align:right;">
57.362
</td>
<td style="text-align:right;">
1.544
</td>
<td style="text-align:right;">
3.003
</td>
<td style="text-align:right;">
0.0019733
</td>
<td style="text-align:right;">
1694.1953
</td>
<td style="text-align:right;">
0.0002773
</td>
<td style="text-align:right;">
0.0606700
</td>
<td style="text-align:right;">
6.649063
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 02.01.02b.tif
</td>
<td style="text-align:right;">
58.7514
</td>
<td style="text-align:right;">
34.7830
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
3.561800
</td>
<td style="text-align:right;">
1.3133
</td>
<td style="text-align:right;">
68.366
</td>
<td style="text-align:right;">
58.739
</td>
<td style="text-align:right;">
1.477
</td>
<td style="text-align:right;">
2.716
</td>
<td style="text-align:right;">
0.0034846
</td>
<td style="text-align:right;">
1649.0144
</td>
<td style="text-align:right;">
0.0002654
</td>
<td style="text-align:right;">
0.0733344
</td>
<td style="text-align:right;">
6.051213
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 02.01.03b.tif
</td>
<td style="text-align:right;">
56.5100
</td>
<td style="text-align:right;">
35.6056
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
3.862800
</td>
<td style="text-align:right;">
1.4602
</td>
<td style="text-align:right;">
66.832
</td>
<td style="text-align:right;">
56.509
</td>
<td style="text-align:right;">
1.528
</td>
<td style="text-align:right;">
3.012
</td>
<td style="text-align:right;">
0.0026277
</td>
<td style="text-align:right;">
1623.1793
</td>
<td style="text-align:right;">
0.0002854
</td>
<td style="text-align:right;">
0.0665281
</td>
<td style="text-align:right;">
6.367906
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 02.01.04b.tif
</td>
<td style="text-align:right;">
58.6916
</td>
<td style="text-align:right;">
35.8595
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
3.537700
</td>
<td style="text-align:right;">
1.3644
</td>
<td style="text-align:right;">
68.962
</td>
<td style="text-align:right;">
58.601
</td>
<td style="text-align:right;">
1.490
</td>
<td style="text-align:right;">
2.806
</td>
<td style="text-align:right;">
0.0030046
</td>
<td style="text-align:right;">
1734.4912
</td>
<td style="text-align:right;">
0.0002551
</td>
<td style="text-align:right;">
0.0691212
</td>
<td style="text-align:right;">
6.215181
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 02.01.05b.tif
</td>
<td style="text-align:right;">
55.1050
</td>
<td style="text-align:right;">
34.7491
</td>
<td style="text-align:right;">
44
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
4.186600
</td>
<td style="text-align:right;">
1.5059
</td>
<td style="text-align:right;">
65.047
</td>
<td style="text-align:right;">
55.183
</td>
<td style="text-align:right;">
1.536
</td>
<td style="text-align:right;">
3.052
</td>
<td style="text-align:right;">
0.0026003
</td>
<td style="text-align:right;">
1529.0163
</td>
<td style="text-align:right;">
0.0003052
</td>
<td style="text-align:right;">
0.0668350
</td>
<td style="text-align:right;">
6.386913
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 02.02.06b.tif
</td>
<td style="text-align:right;">
53.0259
</td>
<td style="text-align:right;">
35.1723
</td>
<td style="text-align:right;">
40
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
5.023100
</td>
<td style="text-align:right;">
1.7051
</td>
<td style="text-align:right;">
63.750
</td>
<td style="text-align:right;">
53.067
</td>
<td style="text-align:right;">
1.595
</td>
<td style="text-align:right;">
3.413
</td>
<td style="text-align:right;">
0.0030716
</td>
<td style="text-align:right;">
1357.5937
</td>
<td style="text-align:right;">
0.0003656
</td>
<td style="text-align:right;">
0.0740825
</td>
<td style="text-align:right;">
6.239694
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 02.02.07b.tif
</td>
<td style="text-align:right;">
44.0567
</td>
<td style="text-align:right;">
31.6476
</td>
<td style="text-align:right;">
32
</td>
<td style="text-align:right;">
39
</td>
<td style="text-align:right;">
9.146900
</td>
<td style="text-align:right;">
2.3224
</td>
<td style="text-align:right;">
54.044
</td>
<td style="text-align:right;">
44.082
</td>
<td style="text-align:right;">
1.821
</td>
<td style="text-align:right;">
4.707
</td>
<td style="text-align:right;">
0.0022756
</td>
<td style="text-align:right;">
1123.7917
</td>
<td style="text-align:right;">
0.0004391
</td>
<td style="text-align:right;">
0.0685469
</td>
<td style="text-align:right;">
6.585969
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
One.Hour
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 03.01.01b.tif
</td>
<td style="text-align:right;">
61.4856
</td>
<td style="text-align:right;">
38.5137
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
2.611200
</td>
<td style="text-align:right;">
1.2536
</td>
<td style="text-align:right;">
72.649
</td>
<td style="text-align:right;">
61.658
</td>
<td style="text-align:right;">
1.492
</td>
<td style="text-align:right;">
2.772
</td>
<td style="text-align:right;">
0.0019101
</td>
<td style="text-align:right;">
1865.5992
</td>
<td style="text-align:right;">
0.0002515
</td>
<td style="text-align:right;">
0.0598375
</td>
<td style="text-align:right;">
6.662888
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 03.01.02b.tif
</td>
<td style="text-align:right;">
61.2722
</td>
<td style="text-align:right;">
36.3593
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
55
</td>
<td style="text-align:right;">
3.051200
</td>
<td style="text-align:right;">
1.2470
</td>
<td style="text-align:right;">
71.046
</td>
<td style="text-align:right;">
61.111
</td>
<td style="text-align:right;">
1.475
</td>
<td style="text-align:right;">
2.684
</td>
<td style="text-align:right;">
0.0033459
</td>
<td style="text-align:right;">
1787.9533
</td>
<td style="text-align:right;">
0.0002469
</td>
<td style="text-align:right;">
0.0720456
</td>
<td style="text-align:right;">
6.092375
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 03.01.03b.tif
</td>
<td style="text-align:right;">
55.7543
</td>
<td style="text-align:right;">
34.5823
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
4.577900
</td>
<td style="text-align:right;">
1.5506
</td>
<td style="text-align:right;">
65.512
</td>
<td style="text-align:right;">
55.657
</td>
<td style="text-align:right;">
1.550
</td>
<td style="text-align:right;">
3.073
</td>
<td style="text-align:right;">
0.0026864
</td>
<td style="text-align:right;">
1535.1347
</td>
<td style="text-align:right;">
0.0003011
</td>
<td style="text-align:right;">
0.0670375
</td>
<td style="text-align:right;">
6.342462
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 03.01.04b.tif
</td>
<td style="text-align:right;">
59.4790
</td>
<td style="text-align:right;">
35.9358
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
53
</td>
<td style="text-align:right;">
3.481500
</td>
<td style="text-align:right;">
1.3277
</td>
<td style="text-align:right;">
69.389
</td>
<td style="text-align:right;">
59.390
</td>
<td style="text-align:right;">
1.500
</td>
<td style="text-align:right;">
2.809
</td>
<td style="text-align:right;">
0.0032347
</td>
<td style="text-align:right;">
1738.6112
</td>
<td style="text-align:right;">
0.0002549
</td>
<td style="text-align:right;">
0.0712031
</td>
<td style="text-align:right;">
6.136913
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 03.01.05b.tif
</td>
<td style="text-align:right;">
54.6037
</td>
<td style="text-align:right;">
33.8839
</td>
<td style="text-align:right;">
43
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
4.542200
</td>
<td style="text-align:right;">
1.5264
</td>
<td style="text-align:right;">
64.297
</td>
<td style="text-align:right;">
54.743
</td>
<td style="text-align:right;">
1.532
</td>
<td style="text-align:right;">
3.026
</td>
<td style="text-align:right;">
0.0025553
</td>
<td style="text-align:right;">
1500.9404
</td>
<td style="text-align:right;">
0.0003032
</td>
<td style="text-align:right;">
0.0664881
</td>
<td style="text-align:right;">
6.392362
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 03.02.06b.tif
</td>
<td style="text-align:right;">
56.2351
</td>
<td style="text-align:right;">
36.8052
</td>
<td style="text-align:right;">
41
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
4.012700
</td>
<td style="text-align:right;">
1.5441
</td>
<td style="text-align:right;">
67.237
</td>
<td style="text-align:right;">
56.519
</td>
<td style="text-align:right;">
1.581
</td>
<td style="text-align:right;">
3.191
</td>
<td style="text-align:right;">
0.0027739
</td>
<td style="text-align:right;">
1536.0765
</td>
<td style="text-align:right;">
0.0003205
</td>
<td style="text-align:right;">
0.0704475
</td>
<td style="text-align:right;">
6.328444
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 03.02.07b.tif
</td>
<td style="text-align:right;">
43.3985
</td>
<td style="text-align:right;">
31.3952
</td>
<td style="text-align:right;">
32
</td>
<td style="text-align:right;">
36
</td>
<td style="text-align:right;">
9.615400
</td>
<td style="text-align:right;">
2.3813
</td>
<td style="text-align:right;">
53.717
</td>
<td style="text-align:right;">
43.395
</td>
<td style="text-align:right;">
1.799
</td>
<td style="text-align:right;">
4.724
</td>
<td style="text-align:right;">
0.0024214
</td>
<td style="text-align:right;">
1095.4897
</td>
<td style="text-align:right;">
0.0004514
</td>
<td style="text-align:right;">
0.0702362
</td>
<td style="text-align:right;">
6.526237
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Five.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 04.01.01b.tif
</td>
<td style="text-align:right;">
65.0667
</td>
<td style="text-align:right;">
39.6265
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
61
</td>
<td style="text-align:right;">
2.144800
</td>
<td style="text-align:right;">
1.1485
</td>
<td style="text-align:right;">
76.384
</td>
<td style="text-align:right;">
64.957
</td>
<td style="text-align:right;">
1.466
</td>
<td style="text-align:right;">
2.603
</td>
<td style="text-align:right;">
0.0016672
</td>
<td style="text-align:right;">
2010.8447
</td>
<td style="text-align:right;">
0.0002305
</td>
<td style="text-align:right;">
0.0561613
</td>
<td style="text-align:right;">
6.784881
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 04.01.02b.tif
</td>
<td style="text-align:right;">
64.0716
</td>
<td style="text-align:right;">
37.2002
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
2.500700
</td>
<td style="text-align:right;">
1.1370
</td>
<td style="text-align:right;">
74.189
</td>
<td style="text-align:right;">
64.041
</td>
<td style="text-align:right;">
1.433
</td>
<td style="text-align:right;">
2.510
</td>
<td style="text-align:right;">
0.0029189
</td>
<td style="text-align:right;">
1915.5638
</td>
<td style="text-align:right;">
0.0002247
</td>
<td style="text-align:right;">
0.0676800
</td>
<td style="text-align:right;">
6.215150
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 04.01.03b.tif
</td>
<td style="text-align:right;">
62.5611
</td>
<td style="text-align:right;">
37.3877
</td>
<td style="text-align:right;">
48
</td>
<td style="text-align:right;">
57
</td>
<td style="text-align:right;">
2.650800
</td>
<td style="text-align:right;">
1.1929
</td>
<td style="text-align:right;">
72.965
</td>
<td style="text-align:right;">
62.715
</td>
<td style="text-align:right;">
1.456
</td>
<td style="text-align:right;">
2.617
</td>
<td style="text-align:right;">
0.0018846
</td>
<td style="text-align:right;">
1876.5797
</td>
<td style="text-align:right;">
0.0002370
</td>
<td style="text-align:right;">
0.0579106
</td>
<td style="text-align:right;">
6.654237
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
03
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 04.01.04b.tif
</td>
<td style="text-align:right;">
65.1716
</td>
<td style="text-align:right;">
38.6829
</td>
<td style="text-align:right;">
49
</td>
<td style="text-align:right;">
60
</td>
<td style="text-align:right;">
2.228200
</td>
<td style="text-align:right;">
1.1251
</td>
<td style="text-align:right;">
75.867
</td>
<td style="text-align:right;">
65.078
</td>
<td style="text-align:right;">
1.436
</td>
<td style="text-align:right;">
2.549
</td>
<td style="text-align:right;">
0.0022870
</td>
<td style="text-align:right;">
2066.0840
</td>
<td style="text-align:right;">
0.0002088
</td>
<td style="text-align:right;">
0.0610938
</td>
<td style="text-align:right;">
6.459219
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
04
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 04.01.05b.tif
</td>
<td style="text-align:right;">
61.4000
</td>
<td style="text-align:right;">
36.3228
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
55
</td>
<td style="text-align:right;">
3.142500
</td>
<td style="text-align:right;">
1.2821
</td>
<td style="text-align:right;">
71.115
</td>
<td style="text-align:right;">
61.273
</td>
<td style="text-align:right;">
1.478
</td>
<td style="text-align:right;">
2.702
</td>
<td style="text-align:right;">
0.0022362
</td>
<td style="text-align:right;">
1770.9396
</td>
<td style="text-align:right;">
0.0002511
</td>
<td style="text-align:right;">
0.0617969
</td>
<td style="text-align:right;">
6.506450
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
01
</td>
<td style="text-align:left;">
05
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 04.02.06b.tif
</td>
<td style="text-align:right;">
58.5092
</td>
<td style="text-align:right;">
36.9179
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
3.582200
</td>
<td style="text-align:right;">
1.4415
</td>
<td style="text-align:right;">
69.004
</td>
<td style="text-align:right;">
58.395
</td>
<td style="text-align:right;">
1.547
</td>
<td style="text-align:right;">
3.011
</td>
<td style="text-align:right;">
0.0024199
</td>
<td style="text-align:right;">
1597.0076
</td>
<td style="text-align:right;">
0.0003049
</td>
<td style="text-align:right;">
0.0659444
</td>
<td style="text-align:right;">
6.450062
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
06
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 04.02.07b.tif
</td>
<td style="text-align:right;">
47.7214
</td>
<td style="text-align:right;">
32.2176
</td>
<td style="text-align:right;">
35
</td>
<td style="text-align:right;">
42
</td>
<td style="text-align:right;">
7.434300
</td>
<td style="text-align:right;">
2.0285
</td>
<td style="text-align:right;">
57.537
</td>
<td style="text-align:right;">
47.806
</td>
<td style="text-align:right;">
1.690
</td>
<td style="text-align:right;">
3.927
</td>
<td style="text-align:right;">
0.0018593
</td>
<td style="text-align:right;">
1229.3734
</td>
<td style="text-align:right;">
0.0003942
</td>
<td style="text-align:right;">
0.0630419
</td>
<td style="text-align:right;">
6.752000
</td>
<td style="text-align:left;">
RMS_79
</td>
<td style="text-align:left;">
Ten.Hours
</td>
<td style="text-align:left;">
02
</td>
<td style="text-align:left;">
07
</td>
<td style="text-align:left;">
Screened
</td>
<td style="text-align:left;">
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 Neocortex 1c.tif
</td>
<td style="text-align:right;">
66.3229
</td>
<td style="text-align:right;">
44.1219
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
59
</td>
<td style="text-align:right;">
1.273500
</td>
<td style="text-align:right;">
0.9902
</td>
<td style="text-align:right;">
79.578
</td>
<td style="text-align:right;">
66.255
</td>
<td style="text-align:right;">
1.509
</td>
<td style="text-align:right;">
2.717
</td>
<td style="text-align:right;">
0.0005591
</td>
<td style="text-align:right;">
2202.0170
</td>
<td style="text-align:right;">
0.0002237
</td>
<td style="text-align:right;">
0.0436513
</td>
<td style="text-align:right;">
7.848300
</td>
<td style="text-align:left;">
RMS_79
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
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 Neocortex 2c.tif
</td>
<td style="text-align:right;">
74.5223
</td>
<td style="text-align:right;">
46.0270
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
68
</td>
<td style="text-align:right;">
0.571700
</td>
<td style="text-align:right;">
0.7885
</td>
<td style="text-align:right;">
87.352
</td>
<td style="text-align:right;">
74.490
</td>
<td style="text-align:right;">
1.437
</td>
<td style="text-align:right;">
2.391
</td>
<td style="text-align:right;">
0.0005983
</td>
<td style="text-align:right;">
2484.6514
</td>
<td style="text-align:right;">
0.0001960
</td>
<td style="text-align:right;">
0.0416981
</td>
<td style="text-align:right;">
7.738894
</td>
<td style="text-align:left;">
RMS_79
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
79
</td>
<td style="text-align:left;">
Type_5
</td>
</tr>
<tr>
<td style="text-align:left;">
RMS_79 Neocortex 3c.tif
</td>
<td style="text-align:right;">
73.0457
</td>
<td style="text-align:right;">
45.7039
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
68
</td>
<td style="text-align:right;">
0.558400
</td>
<td style="text-align:right;">
0.8022
</td>
<td style="text-align:right;">
86.012
</td>
<td style="text-align:right;">
72.984
</td>
<td style="text-align:right;">
1.446
</td>
<td style="text-align:right;">
2.420
</td>
<td style="text-align:right;">
0.0006229
</td>
<td style="text-align:right;">
2382.9228
</td>
<td style="text-align:right;">
0.0002063
</td>
<td style="text-align:right;">
0.0426438
</td>
<td style="text-align:right;">
7.704500
</td>
<td style="text-align:left;">
RMS_79
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
79
</td>
<td style="text-align:left;">
Type_5
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
