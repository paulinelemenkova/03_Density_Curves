# ============================================================================
# Kernel-density distribution curves of Mariana Trench depths (R, ggplot2),
# by tectonic plate and by profile. Part of the R analysis in the article:
#   Lemenkova, P. (2019). Statistical Analysis of the Mariana Trench
#   Geomorphology Using R Programming Language.
#   Geodesy and Cartography, 45(2), 57-84.
#   DOI: https://doi.org/10.3846/gac.2019.3785
#   figshare: https://doi.org/10.6084/m9.figshare.9762860
#   HAL: https://hal.science/hal-02277500  Zenodo: https://zenodo.org/record/3385005
# Author: Polina Lemenkova | ORCID: 0000-0002-5759-1089
# ============================================================================

# ЧАСТЬ-1. готовим датафрейм. 
	# шаг-1.
MDepths <- read.csv("DepthTect.csv", header=TRUE, sep = ",")
MDFl <- na.omit(MDepths) 
row.has.na <- apply(MDFl, 1, function(x){any(is.na(x))}) # проверяем, удалил ли все NA
sum(row.has.na) # суммируем все NA, должно получиться: [1] 0
head(MDFl) # смотрим очищенный датафрейм. теперь с ним работаем. 
	
	# шаг-2. сшиваем группы категорий по классам (здесь: тектоника, глубины, углы)
DFDT = melt(setDT(MDFl), measure = patterns("^profile", "^tectonics", "^tg"), value.name = c("depth", "tectonics", "trench_angle"))
DFDT

	# шаг-3. строим мульти-график (здесь: по типам тектон плит как изменяются углы и глубины) 
densityplot(~ depth, groups = variable, data = DFDT, plot.points = FALSE, auto.key = FALSE)

densityplot(~ depth, groups = tectonics, data = DFDT, plot.points = FALSE, auto.key = TRUE)
