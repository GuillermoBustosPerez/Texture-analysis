<sup>1</sup>Universidad Autónoma de Madrid. Departamento de Prehistoria
y Arqueología, Campus de Cantoblanco, 28049 Madrid, Spain.  
<sup>2</sup>Institut Català de Paleoecologia Humana i Evolució Social
(IPHES), Zona Educacional 4, Campus Sescelades URV (Edifici W3), 43007
Tarragona, Spain.  
<sup>3</sup>Àrea de Prehistoria, Universitat Rovira i Virgili (URV),
Avinguda de Catalunya 35, 43002 Tarragona, Spain.

 

**Abstract**

Lithic artifacts are some of the most common and numerous remains from
paleolithic archaeological sites. However, their deposition into the
archaeological record can be the result of multiple episodes of discard
which are

Because the numerous amount of lithic remains, a quick, flexible, low
cost and effective method for identifying degrees of alteration in the
surface of lithic implements is highly desirable. This would favor the
analysis of complete lithic assemblages, inferring their overall
integrity, identify different episodes or clusters of alteration, and
even identify post-depositional alterations of different nature (such as
rounding, dragging or wind erosion).

An experimental collection of flints and quartzites were subjected to
sequential episodes of rounding. After each episode, photographs with a
Dino-Lite Edge 3.0 AM73915MZT USB microscope were taken, allowing to
obtain quantitative values of surface texture. Following this, the
quantitative data of surface texture was employed as variables in
Machine Learning models to determine degree of rounding and the most
important variables for discrimination.  
Results show, that despite being a continuum,

**Key words**: experimental archaeology; postdepositional alterations

 

## **1. Introduction**

  Lithic artifacts constitute one of the most common remains from
paleolithic archaeological sites. When analyzing a lithic assemblages, a
key factor to consider is determining the degree of post-depositional
alterations undergone by the assemblage since this results in behavioral
and eco-cultural inferences.   Methods for determining assemblage
integrity usually focus on the assemblage as a hole. These methods often
include spatial analysis of artifacts and analysis of fabrics to
determine if water flow has resulted in a reorganization of the spatial
distribution ([Lenoble and Bertran, 2004](#ref-lenoble_fabric_2004);
[McPherron, 2005](#ref-mcpherron_artifact_2005); [McPherron,
2018](#ref-mcpherron_additional_2018); [Petraglia and Potts,
1994](#ref-petraglia_water_1994); [Schick,
1987](#ref-schick_modeling_1987)). Also lithic size distribution
analysis are realized to determine if postdepositonal processes have
resulted in sorting of the materials ([Bertran et al.,
2012](#ref-bertran_particle_2012); [Maíllo Fernández,
1998](#ref-maillo_fernandez_proporciones_1998); [Schick,
1987](#ref-schick_modeling_1987)). Another option is to focus directly
on individual lithic artifacts to determine the degree of alteration
that they have undergone ([Chu et al.,
2015](#ref-chu_micro-abrasion_2015); [Levi Sala,
1986](#ref-levi_sala_use_1986)). Although being more time consuming,
this type of analysis provides a higher resolution, allowing to
establish a graduation in the degree of postdepositional alterations, to
combine its data with spatial analysis, dissecting archaeological
episodes, or to detect several episodes of recycling.

Individually determining the degree of alteration undergone by a lithic
artifact uses microscopic analysis to measure ridge width, visually
analyze the surface to determine the existence and intensity of
abrasion, and examine the edges to determine the presence of detachments
coming from particle impact or dulling of the edges in more extreme
cases ([Bustos-Pérez et al., 2019](#ref-bustos-perez_experimental_2019);
[Chambers, 2003](#ref-chambers_like_2003); [Shackley,
1974](#ref-shackley_stream_1974)). Of these measures, ridge width is the
most clearly quantifiable which can result in an greater weight on the
analyst’s decision. However, analysis from sequential experimentations
shows that the longer the exposure time to sedimentary abrasion, greater
the increase in the standard deviation of ridge width measurements
([Bustos-Pérez et al., 2019](#ref-bustos-perez_experimental_2019)). This
introduces a degree of uncertainty when determining the degree of
rounding undergone by a stone tool, since the ratio of increasing ridge
width might be the result of general flake topography, ridge position
among the flake, ridge angle, or general profile of the ridge.

Adding to the variability in flake width (which comes from flake and
ridge morphology), it is also necessary to consider the effects of
fluvial sedimentary processes which commonly affect lithic artifacts.
Fluvial sedimentary processes are characterized by particle transport
and these processes are not homogeneous. Lithic artifacts can form part
of these process as another particle or remain static and be affected by
the particles forming part of them. Commonly, three modes of particle
transport are described in fluvial sedimentary contexts: rolling,
sliding and saltation ([Alhusban and Valyrakis,
2021](#ref-alhusban_assessing_2021)), although the last one is not a
common form of alteration in the case of stone tools ([Schick,
1986](#ref-schick_stone_1986)). Additional to alterations coming from
fluvial contexts, stone artifacts might also be affected by aeolian
particle transport, usually resulting in wind erosion
[Stapert](#ref-stapert_natural_1976)
([1976](#ref-stapert_natural_1976)).

Stone tools have an additional factor of variability added to the ones
derived from particle transport and sedimentary contexts (fluvial or
eolian). This additional factor comes from the degree of exposure and
speed on which a stone tool enters the archaeological record ([Petraglia
and Potts, 1994](#ref-petraglia_water_1994); [Schick,
1986](#ref-schick_stone_1986); [Schiffer,
1972](#ref-schiffer_archaeological_1972)). For example, it is expected
that partially buried artifacts with water and sediment flowing above
them will present modifications in the exposed surface, while edges and
the burred surface will remain semi-intact ([Petraglia and Potts,
1994](#ref-petraglia_water_1994)). A different scenario happens when
artifacts are transported by rolling in coarse sediments, resulting in
abrasion of all surfaces, dulling of the edges, but at the same time,
the impact from coarse particles might result in freshly detached
surfaces and edges which undergo new modifications until the artifact
enters the archaeological record ([Harding et al.,
1987](#ref-sieveking_transport_1987); [Petraglia and Potts,
1994](#ref-petraglia_water_1994)).

Thus, obtaining quantitative data of surface modifications can
complement values of ridge width, and help identify and interpret type
of particle transport undergone by, or affecting a stone artifact.
Ideally, quantitative values of surface abrasion would be extracted from
each stone artifact, allowing to maximize information and interpretation
of the formation process of an archaeological site. However, as
previously mentioned, stone artifacts are some of the most common
remains from Paleolithic archaeological sites. Thus, a versatile, fast
an non-time consuming method is highly desirable since it would enable
to analyze large quantities of lithic materials.

This research presents results from a sequential experimentation in
which a set of experimentally knapped flakes have undergone rounding
process in a tumbler. After each episode of rounding, the same areas are
photographed, and quantitative measures of flake texture are employed to
characterize the surface. Following the extraction of quantitative
values, Machine Learning models are employed to determine the degree of
separation between rounding times. Flake ridge width is also considered
as an indicative measure of alteration undergone by flakes.

## **2. Methods**

### **2.1 Experimental sample**

Three blocks of flint representing three different types (F1, F2 and F3)
and three blocks of quartzite also representing three different types
(Q1, Q2 and Q3) were experimentally knapped. Flint type F1 is
characterize by a heterogeneous grey color surface with intrusions of
geodes. Types F2 and F3 present a much more homogeneous surface, with
colors being blue/grey and reddish/ocher. The three types correspond to
the South Madrid Miocene Flint (SMM; [Bustillo and
Pérez-Jiménez](#ref-bustillo_caracteristicas_2005)
([2005](#ref-bustillo_caracteristicas_2005)); [Bustillo et
al.](#ref-bustillo_caracterizacion_2012)
([2012](#ref-bustillo_caracterizacion_2012))) although their locations
varied widely. Quartzite type Q1 was collected at the Jarama river
(Madrid, Spain) and it is characterized by a semi-fine grained surface
of light blue/grey color. Quartzites types Q2 and Q3 were also collected
in fluvial deposits at Arlanzón (Burgos, Spain). Type Q2 is
characterized by a grey matrix with reddish oxide bands. Type Q3 is
characterized by a dark blue color and being much more fine grained than
the two previous types, although some internal fissures show a minor
presence of oxides. Three flakes of F1, F2, Q1 and Q2 were selected,
while four flakes were selected for F3 and Q3. This makes for a total of
ten flakes of flint and ten flakes of quartzite.  
 

### **2.2 Image capturing workflow**

Te present work takes a series of steps prior to realizing any analysis
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
 

![Effects of manual manipulation without protection on flint surface.
Left: surface photographed after the aplication of cleaning protocol and
manipulation of the artefact using protection. Right: same surface after
manual manipulation without protection.](Figures/01_Figure.png)

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
 

![Two examples of image enhancemnt. Left: original images taken by a
digital microscope. Center: images after retrieving the background to
avoid effects of different lightning. Right: after normalizing the
histogram to avoid saturation and increase detail.Top row: geological
neocortex. Bottom row: fresh surface of experimentally knapped
flake.](Figures/Image-Enhance.jpg)

### **2.3 Image statistical analysis**

The present work uses three sets of statistical metrics to analyze
obtained images. The first set of statistical metrics correspond to
descriptive statistics (mean, standard deviation, mode, median and
kurtosis). The second set of statistical measures corresponds to
measures of roughness:

-   **Root mean square deviation (Rq)**: indicator of surface
    roughness.  
-   **Arithmetical mean deviation (Ra)**: which indicates the deviation
    of a surface from a mean height.  
-   **Skewness of the assessed profile (Rsk)**: indicator of the
    departure from surface symmetry. Negative values indicate a surface
    made of deep valey, and positive values indicates peaks and
    asperities.  
-   **Kurtosis of the assessed profile (Rku)**: which indicates the
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

![Pattern figures presenting similar intensity distribution values, but
a different spatial distribution](Figures/Pattern-Figures.png)

![Basic representation of how the GLCM takes into consideration the
spatial relationships of pixels and intensity value. The spatial
relationships are considered given a reference pixel (I,J), a direction
(north, east, south or west), and a distance (one pixel, two
pixels)](Figures/GLCM-distance-direction.jpg)

Analysis of intensity values through the Gray Level Co-occurrence Matrix
(GLCM; [Haralick et al.](#ref-haralick_textural_1973)
([1973](#ref-haralick_textural_1973))) takes into consideration the
spatial distribution of intensity values. The GLCM works in two steps
([Haralick et al., 1973](#ref-haralick_textural_1973)). First, using a
given distance and direction (@ref(fig:Scheme-GLCM)), it builds a matrix
which captures the relationship of intensity between pairs of pixels
(reference and neighbor). Second, for every *x* and *y* it considers the
co-occurrence of values, forming a new matrix. From this new matrix, a
series of statistical descriptors are derived ([Haralick et al.,
1973](#ref-haralick_textural_1973)).

-   **Angular Second Moment (ASM)** is measure of homogeneity in the
    image. Homogeneous images (with low gray-tone transitions) will have
    fewer entries of large magnitude. Thus homogeneous images will have
    high ASM values, while the opposite will be true for non-homogeneous
    images.  
-   **Contrast (CONT)** is a value of the amount of local variations,
    with high values indicating a lot of local variation and low values
    few local variation.  
-   **Correlation (CORR)** which measures gray-tone linear-dependencies
    in the image. It indicates how a reference pixel is related to its
    neighbor. A 0 value indicates it is uncorrelated, and 1 indicates a
    perfect correlation.  
-   **Inverse Different Moment (IDM)** also referred as **homogeneity**.
    It obtains the measures of the closeness of the distribution of the
    GLCM elements to the GLCM diagonal.  
-   **Entropy (ENT)**: is a measure of the amount of irremediable chaos
    or disorder in an image. High values of entropy indicate values of
    similar magnitude, while low values indicate unequal entries.

Figure @ref(fig:PatternFig-Box) shows results from the application of
[Haralick et al.](#ref-haralick_textural_1973)
([1973](#ref-haralick_textural_1973)) textural features to the same
pattern images.

``` r
library(tidyverse)
# GLCM of sequential data
GLCM.txt <- read.delim("Data/Pattern_GLCM.txt", sep = ",")

GLCM.txt <- GLCM.txt %>% filter(
  !grepl("#", X.)) %>% 
  mutate(Angular.Second.Moment = as.numeric(Angular.Second.Moment),
         Contrast = as.numeric(Contrast),
         Correlation = as.numeric(Correlation),
         Inverse.Difference.Moment = as.numeric(Inverse.Difference.Moment),
         Entropy = as.numeric(Entropy)
  ) %>% 
  rename(ID = X.) %>% 
  select(-c(X)) %>% 
  group_by(ID) %>% 
  summarise(
    ASM = mean(Angular.Second.Moment),
    CONT = mean(Contrast),
    CORR = mean(Correlation),
    IDM = mean(Inverse.Difference.Moment),
    ENT = mean(Entropy)
  ) %>% 
  mutate(
    ID = substring(ID, 3)) %>% 
  mutate(
    ID = substring(ID, 1, nchar(ID)-5))
```

``` r
GLCM.txt %>% pivot_longer(
  cols = ASM:ENT,
  names_to = "Variable",
  values_to = "values") %>% 
  
  ggplot(aes("Variable", values, label = ID)) +
  facet_wrap(~ Variable, scales = "free",
             ncol = 2) +
  xlab(NULL) +
  ylab(NULL) +
  geom_jitter(aes(color = ID), 
              width = 0.1, shape = 18, size = 3) +
  ggrepel::geom_text_repel() +
  ggsci::scale_color_jco() +
  theme_light() +
  theme(
    axis.text.x = element_blank(),
    strip.text = element_text(color = "black", face = "bold", size = 11),
    strip.background = element_rect(fill = "white", colour = "black", size = 1),
    axis.text = element_text(color = "black"),
    legend.position = "none")
```

![Values of pattern images using Haralick et al 1973 GLCM and second
order
statistics](D:\02CAMP~1\03ARTI~1\2022~1.09T\TEXTUR~1\Report\TEXTUR~1/figure-gfm/PatternFig-Box-1.png)

 

The present work implements [Haralick et
al.](#ref-haralick_textural_1973) ([1973](#ref-haralick_textural_1973))
analysis and metrics in ImageJ software ([Schneider et al.,
2012](#ref-schneider_nih_2012)). Calculation of GLCM and second order
statistics is done through [Cabrera](#ref-cabrera_texture_2006)
([2006](#ref-cabrera_texture_2006)) plugin.

### **2.4 Proof of Concept of GLCM and texture analysis**

Prior to the application of [Haralick et
al.](#ref-haralick_textural_1973) ([1973](#ref-haralick_textural_1973))
texture metrics a proof of concept from a pilot study is undertaken.
This proof of concept is aimed to two objectives. First, determine if
the GLCM provides suitable variable values to discriminate between
degrees of sedimentary abrasion. Second, to determine to the best
interval of pixels under which the GLCM works

The proof of concept sample is composed of 23 images corresponding to
geological neocortex, 56 images corresponding to flakes undergone 10
hours of sedimentary abrasion in a previous experimental study
([Bustos-Pérez et al., 2019](#ref-bustos-perez_experimental_2019)) and
42 images corresponding to fresh surfaces from experimentally knapped
flakes. All flints correspond to South Madrid Miocen Flint ([Bustillo
and Pérez-Jiménez](#ref-bustillo_caracteristicas_2005)
([2005](#ref-bustillo_caracteristicas_2005)); [Bustillo et
al.](#ref-bustillo_caracterizacion_2012)
([2012](#ref-bustillo_caracterizacion_2012))).

The GLCM requires to test for several distances between the reference
pixel and the neighboring pixel on which the spatial relationships are
established. The present work tests for five different sequences of
distances (Table @ref(tab:distances)). The first sequence composes the
GLCM based on pixels located at distances 1, 2 3 and 4 from the
reference pixel. Sequence 2 composes the GLCM based on pixels located at
distances 2, 4, 6 and 8 from the reference pixel (Table
@ref(tab:distances). All sequences of intervals are tested in the four
cardinal directions (north, east, south and west). This results in 16
(four per each cardinal direction) values of [Haralick et
al.](#ref-haralick_textural_1973) ([1973](#ref-haralick_textural_1973))
textural metrics. Final values are obtained by averaging the different
values of each of the variables although range is not considered
([Bietti, 1996](#ref-bietti_image_1996)).

| Sequence | Pixel Distances |
|---------:|:----------------|
|        1 | 1-2-3-4         |
|        2 | 2-4-6-8         |
|        3 | 5-10-15-20      |
|        4 | 10-20-30-40     |
|        5 | 50-100-150-200  |

Sequences and distance of pixels considerder.

``` r
load("Data/PoC Data.RData")
```

## **References**

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-alhusban_assessing_2021" class="csl-entry">

Alhusban, Z., Valyrakis, M., 2021. Assessing and Modelling the
Interactions of Instrumented Particles with Bed Surface at Low Transport
Conditions. Applied Sciences 11, 7306.
<https://doi.org/10.3390/app11167306>

</div>

<div id="ref-asryan_results_2020" class="csl-entry">

Asryan, L., Ollé, A., 2020. Results of a functional study on the Middle
to early Upper Pleistocene lithic assemblages from the Azokh 1 Cave site
(South Caucasus). Quaternary International 569-570, 168–180.
<https://doi.org/10.1016/j.quaint.2020.05.028>

</div>

<div id="ref-bertran_particle_2012" class="csl-entry">

Bertran, P., Lenoble, A., Todisco, D., Desrosiers, P.M., Sørensen, M.,
2012. Particle size distribution of lithic assemblages and taphonomy of
Palaeolithic sites. Journal of Archaeological Science 39, 3148–3166.
<https://doi.org/10.1016/j.jas.2012.04.055>

</div>

<div id="ref-bietti_image_1996" class="csl-entry">

Bietti, A., 1996. Image processing in microwear studies of flint
artifacts. Archeologi e Calcolatori 7, 387–396.

</div>

<div id="ref-bustillo_caracteristicas_2005" class="csl-entry">

Bustillo, M.A., Pérez-Jiménez, J.L., 2005. Características diferenciales
y génesis de los niveles silíceos explotados en el yacimiento
arqueológico de Casa Montero (Vicálvaro, Madrid). Geogaceta 38, 243–246.

</div>

<div id="ref-bustillo_caracterizacion_2012" class="csl-entry">

Bustillo, M.Á., Pérez-Jiménez, J.L., Bustillo, M., 2012. Caracterización
geoquímica de rocas sedimentarias formadas por silicificación como
fuentes de suministro de utensilios líticos (Mioceno, cuenca de Madrid).
Revista Mexicana de Ciencias Geológicas 29, 233–247.

</div>

<div id="ref-bustos-perez_experimental_2019" class="csl-entry">

Bustos-Pérez, G., Díaz, S., Baena, J., 2019. An Experimental Approach to
Degrees of Rounding Among Lithic Artifacts. Journal of Archaeological
Method and Theory 26, 1243–1275.
<https://doi.org/10.1007/s10816-018-9409-8>

</div>

<div id="ref-cabrera_texture_2006" class="csl-entry">

Cabrera, J.E., 2006. Texture Analyzer.

</div>

<div id="ref-chambers_like_2003" class="csl-entry">

Chambers, J.C., 2003. Like a rolling stone? The identification of
fluvial transportation damage signatures on secondary context bifaces.
Lithics 24, 66–77.

</div>

<div id="ref-chinga_roughness_2002" class="csl-entry">

Chinga, G., Dougherty, B., 2002. Roughness Calculation.

</div>

<div id="ref-chu_micro-abrasion_2015" class="csl-entry">

Chu, W., Thompson, C., Hosfield, R., 2015. Micro-abrasion of flint
artifacts by mobile sediments: A taphonomic approach. Archaeological and
Anthropological Sciences 7, 3–11.
<https://doi.org/10.1007/s12520-013-0157-0>

</div>

<div id="ref-fernandez-marchena_microscopic_2016" class="csl-entry">

Fernández-Marchena, J.L., Ollé, A., 2016. Microscopic analysis of
technical and functional traces as a method for the use-wear analysis of
rock crystal tools. Quaternary International 424, 171–190.
<https://doi.org/10.1016/j.quaint.2015.10.064>

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

<div id="ref-lenoble_fabric_2004" class="csl-entry">

Lenoble, A., Bertran, P., 2004. Fabric of Palaeolithic levels: Methods
and implications for site formation processes. Journal of Archaeological
Science 31, 457–469. <https://doi.org/10.1016/j.jas.2003.09.013>

</div>

<div id="ref-levi_sala_use_1986" class="csl-entry">

Levi Sala, I., 1986. Use Wear and Post-depositional Surface
Modification: A Word of Caution. Journal of Archaeological Science 13,
229–244.

</div>

<div id="ref-luedtke_archaeologists_1992" class="csl-entry">

Luedtke, B.E., 1992. An Archaeologist’s Guide to Chert and Flint,
Archaeological Research Tools. Institute of Archaeology, University of
California, Los Angeles.

</div>

<div id="ref-maillo_fernandez_proporciones_1998" class="csl-entry">

Maíllo Fernández, J.M., 1998. Proporciones de debris en réplicas de
talla experimental. Espacio Tiempo y Forma. Serie I, Prehistoria y
Arqueología. <https://doi.org/10.5944/etfi.11.1998.4665>

</div>

<div id="ref-mcpherron_artifact_2005" class="csl-entry">

McPherron, S.J.P., 2005. Artifact orientations and site formation
processes from total station proveniences. Journal of Archaeological
Science 32, 1003–1014.

</div>

<div id="ref-mcpherron_additional_2018" class="csl-entry">

McPherron, S.P., 2018. Additional statistical and graphical methods for
analyzing site formation processes using artifact orientations. PLOS ONE
13, e0190195. <https://doi.org/10.1371/journal.pone.0190195>

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

<div id="ref-petraglia_water_1994" class="csl-entry">

Petraglia, M.D., Potts, R., 1994. Water Flow and the Formation of Early
Pleistocene Artifact Sites in Olduvai Gorge, Tanzania. Journal of
Anthropological Archaeology 13, 228–254.
<https://doi.org/10.1006/jaar.1994.1014>

</div>

<div id="ref-schick_modeling_1987" class="csl-entry">

Schick, K.D., 1987. Modeling the formation of Early Stone Age artifact
concentrations. Journal of Human Evolution 16, 789–807.
<https://doi.org/10.1016/0047-2484(87)90024-8>

</div>

<div id="ref-schick_stone_1986" class="csl-entry">

Schick, K.D., 1986. Stone Age sites in the making: Experiments in the
formation and transformation of archaeological occurrences, BAR
International Series. BAR Publishing, Oxford.

</div>

<div id="ref-schiffer_archaeological_1972" class="csl-entry">

Schiffer, M.B., 1972. Archaeological Context and Systemic Context.
American Antiquity 37, 156–165. <https://doi.org/10.2307/278203>

</div>

<div id="ref-schneider_nih_2012" class="csl-entry">

Schneider, C.A., Rasband, W.S., Eliceiri, K.W., 2012. NIH Image to
ImageJ: 25 years of image analysis. Nature Methods 9, 671–675.
<https://doi.org/10.1038/nmeth.2089>

</div>

<div id="ref-shackley_stream_1974" class="csl-entry">

Shackley, M.S., 1974. Stream abrasion of flint implements. Nature 248,
501–502.

</div>

<div id="ref-stapert_natural_1976" class="csl-entry">

Stapert, D., 1976. Some natural surface modifications on flint in the
Netherlands. Paleohistoria 18, 9–41.

</div>

</div>
