# packages----
library(readxl)
library(ggplot2)
library(tidyr)
library(dplyr)
library(tidytext)

# load raw data----
# 1990
ltw_sn_1990_absH <- read_excel("data/1990_ltw_sn_ds_absH.xlsx")

# 1994
ltw_sn_1994_absH <- read_excel("data/1994_ltw_sn_ds_absH.xlsx")

# 1999
ltw_sn_1999_absH <- read_excel("data/1999_ltw_sn_ds_absH.xlsx")

# data preparation----

# Wahlbeteiligung in %
# 1990
ltw_sn_1990_absH$wahlbeteiligung <- (ltw_sn_1990_absH$stimmabgabe.insgesamt / ltw_sn_1990_absH$wahlberechtigte) * 100
# 1994
ltw_sn_1994_absH$wahlbeteiligung <- (ltw_sn_1994_absH$stimmabgabe.insgesamt / ltw_sn_1994_absH$wahlberechtigte) * 100
# 1999
ltw_sn_1999_absH$wahlbeteiligung <- (ltw_sn_1999_absH$stimmabgabe.insgesamt / ltw_sn_1999_absH$wahlberechtigte) * 100

# Gültige Stimmabgaben pro Partei in %
# 1990
# DA
ltw_sn_1990_absH$DA.prozent <- (ltw_sn_1990_absH$DA / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# CDU
ltw_sn_1990_absH$CDU.prozent <- (ltw_sn_1990_absH$CDU / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# Chr.L.
ltw_sn_1990_absH$Chr.L.prozent <- (ltw_sn_1990_absH$Chr.L. / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# DBU
ltw_sn_1990_absH$DBU.prozent <- (ltw_sn_1990_absH$DBU / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# DSU
ltw_sn_1990_absH$DSU.prozent <- (ltw_sn_1990_absH$DSU / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# F.D.P.
ltw_sn_1990_absH$F.D.P.prozent <- (ltw_sn_1990_absH$F.D.P. / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# LL-PDS
ltw_sn_1990_absH$`LL-PDS.prozent` <- (ltw_sn_1990_absH$`LL-PDS` / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# NPD
ltw_sn_1990_absH$NPD.prozent <- (ltw_sn_1990_absH$NPD / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# Forum
ltw_sn_1990_absH$Forum.prozent <- (ltw_sn_1990_absH$Forum / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# RAP
ltw_sn_1990_absH$RAP.prozent <- (ltw_sn_1990_absH$RAP / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# SHB
ltw_sn_1990_absH$SHB.prozent <- (ltw_sn_1990_absH$SHB / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# SPD
ltw_sn_1990_absH$SPD.prozent <- (ltw_sn_1990_absH$SPD / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# EV Ziermaier
ltw_sn_1990_absH$`EV Ziermaier.prozent` <- (ltw_sn_1990_absH$`EV Ziermaier` / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# EV Kraut
ltw_sn_1990_absH$`EV Kraut.prozent` <- (ltw_sn_1990_absH$`EV Kraut` / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# EV Tschiche
ltw_sn_1990_absH$`EV Tschiche.prozent` <- (ltw_sn_1990_absH$`EV Tschiche` / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# EV Graf
ltw_sn_1990_absH$`EV Graf.prozent` <- (ltw_sn_1990_absH$`EV Graf` / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# EV Heine
ltw_sn_1990_absH$`EV Heine.prozent` <- (ltw_sn_1990_absH$`EV Heine` / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# EV Neumann
ltw_sn_1990_absH$`EV Neumann.prozent` <- (ltw_sn_1990_absH$`EV Neumann` / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# EV Liebig
ltw_sn_1990_absH$`EV Liebig.prozent` <- (ltw_sn_1990_absH$`EV Liebig` / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# EV Kromer
ltw_sn_1990_absH$`EV Kromer.prozent` <- (ltw_sn_1990_absH$`EV Kromer` / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# EV Rüthrich
ltw_sn_1990_absH$`EV Rüthrich.prozent` <- (ltw_sn_1990_absH$`EV Rüthrich` / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# EV Schröter
ltw_sn_1990_absH$`EV Schröter.prozent` <- (ltw_sn_1990_absH$`EV Schröter` / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# EV Fröhlich
ltw_sn_1990_absH$`EV Fröhlich.prozent` <- (ltw_sn_1990_absH$`EV Fröhlich` / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# BV
ltw_sn_1990_absH$BV.prozent <- (ltw_sn_1990_absH$BV / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# JDA
ltw_sn_1990_absH$JDA.prozent <- (ltw_sn_1990_absH$JDA / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# EV Riedel
ltw_sn_1990_absH$`EV Riedel.prozent` <- (ltw_sn_1990_absH$`EV Riedel` / ltw_sn_1990_absH$stimmabgabe.gültig) * 100
# EV Teubert
ltw_sn_1990_absH$`EV Teubert.prozent` <- (ltw_sn_1990_absH$`EV Teubert` / ltw_sn_1990_absH$stimmabgabe.gültig) * 100

# test prozent
#test.df <- ltw_sn_1990_absH[1, ]
#sum(test.df[34:60], na.rm = T)

# 1994
# CDU
ltw_sn_1994_absH$CDU.prozent <- (ltw_sn_1994_absH$CDU / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# SPD
ltw_sn_1994_absH$SPD.prozent <- (ltw_sn_1994_absH$SPD / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# F.D.P.
ltw_sn_1994_absH$F.D.P.prozent <- (ltw_sn_1994_absH$F.D.P. / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# GRÜNE
ltw_sn_1994_absH$GRÜNE.prozent <- (ltw_sn_1994_absH$GRÜNE / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# DSU
ltw_sn_1994_absH$DSU.prozent <- (ltw_sn_1994_absH$DSU / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# REP
ltw_sn_1994_absH$REP.prozent <- (ltw_sn_1994_absH$REP / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# FORUM
ltw_sn_1994_absH$FORUM.prozent <- (ltw_sn_1994_absH$FORUM / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# PDS
ltw_sn_1994_absH$PDS.prozent <- (ltw_sn_1994_absH$PDS / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# SP
ltw_sn_1994_absH$SP.prozent <- (ltw_sn_1994_absH$SP / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# BFB
ltw_sn_1994_absH$BFB.prozent <- (ltw_sn_1994_absH$BFB / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# LIGA
ltw_sn_1994_absH$LIGA.prozent <- (ltw_sn_1994_absH$LIGA / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# FWG
ltw_sn_1994_absH$FWG.prozent <- (ltw_sn_1994_absH$FWG / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# Spörgler
ltw_sn_1994_absH$Spörgler.prozent <- (ltw_sn_1994_absH$Spörgler / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# Sachbezogen
ltw_sn_1994_absH$Sachbezogen.prozent <- (ltw_sn_1994_absH$Sachbezogen / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# O. Fraktionszw.
ltw_sn_1994_absH$`O. Fraktionszw.prozent` <- (ltw_sn_1994_absH$`O. Fraktionszw.` / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# Allianz Sachsen
ltw_sn_1994_absH$`Allianz Sachsen.prozent` <- (ltw_sn_1994_absH$`Allianz Sachsen` / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# Dresden pur
ltw_sn_1994_absH$`Dresden pur.prozent` <- (ltw_sn_1994_absH$`Dresden pur` / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# EV Krone
ltw_sn_1994_absH$`EV Krone.prozent` <- (ltw_sn_1994_absH$`EV Krone` / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# EV Garten
ltw_sn_1994_absH$`EV Garten.prozent` <- (ltw_sn_1994_absH$`EV Garten` / ltw_sn_1994_absH$stimmabgabe.gültig) * 100
# EV Tannert
ltw_sn_1994_absH$`EV Tannert.prozent` <- (ltw_sn_1994_absH$`EV Tannert` / ltw_sn_1994_absH$stimmabgabe.gültig) * 100

# test prozent
#test.df <- ltw_sn_1994_absH[1, ]
#sum(test.df[27:46], na.rm = T)

# 1999
# CDU
ltw_sn_1999_absH$CDU.prozent <- (ltw_sn_1999_absH$CDU / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# SPD
ltw_sn_1999_absH$SPD.prozent <- (ltw_sn_1999_absH$SPD / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# PDS
ltw_sn_1999_absH$PDS.prozent <- (ltw_sn_1999_absH$PDS / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# GRÜNE
ltw_sn_1999_absH$GRÜNE.prozent <- (ltw_sn_1999_absH$GRÜNE / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# BüSo
ltw_sn_1999_absH$BüSo.prozent <- (ltw_sn_1999_absH$BüSo / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# DSU
ltw_sn_1999_absH$DSU.prozent <- (ltw_sn_1999_absH$DSU / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# GRAUE
ltw_sn_1999_absH$GRAUE.prozent <- (ltw_sn_1999_absH$GRAUE / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# REP
ltw_sn_1999_absH$REP.prozent <- (ltw_sn_1999_absH$REP / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# F.D.P.
ltw_sn_1999_absH$F.D.P.prozent <- (ltw_sn_1999_absH$F.D.P. / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# FP Deutschlands
ltw_sn_1999_absH$`FP Deutschlands.prozent` <- (ltw_sn_1999_absH$`FP Deutschlands` / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# Pro DM
ltw_sn_1999_absH$`Pro DM.prozent` <- (ltw_sn_1999_absH$`Pro DM` / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# KPD
ltw_sn_1999_absH$KPD.prozent <- (ltw_sn_1999_absH$KPD / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# NPD
ltw_sn_1999_absH$NPD.prozent <- (ltw_sn_1999_absH$NPD / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# FORUM
ltw_sn_1999_absH$FORUM.prozent <- (ltw_sn_1999_absH$FORUM / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# PBC
ltw_sn_1999_absH$PBC.prozent <- (ltw_sn_1999_absH$PBC / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# Dieter Käppel
ltw_sn_1999_absH$`Dieter Käppel.prozent` <- (ltw_sn_1999_absH$`Dieter Käppel` / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# Kromer
ltw_sn_1999_absH$Kromer.prozent <- (ltw_sn_1999_absH$Kromer / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# Siegemund
ltw_sn_1999_absH$Siegemund.prozent <- (ltw_sn_1999_absH$Siegemund / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# SPAREN JA - ABER GERECHT!
ltw_sn_1999_absH$`SPAREN JA - ABER GERECHT!.prozent` <- (ltw_sn_1999_absH$`SPAREN JA - ABER GERECHT!` / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# ÜBERPARTEILICH-FÜR CHEMNITZ
ltw_sn_1999_absH$`ÜBERPARTEILICH-FÜR CHEMNITZ.prozent` <- (ltw_sn_1999_absH$`ÜBERPARTEILICH-FÜR CHEMNITZ` / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# Uhlig
ltw_sn_1999_absH$Uhlig.prozent <- (ltw_sn_1999_absH$Uhlig / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# Zukunft für Leipzig
ltw_sn_1999_absH$`Zukunft für Leipzig.prozent` <- (ltw_sn_1999_absH$`Zukunft für Leipzig` / ltw_sn_1999_absH$stimmabgabe.gültig) * 100
# Zocher
ltw_sn_1999_absH$Zocher.prozent <- (ltw_sn_1999_absH$Zocher / ltw_sn_1999_absH$stimmabgabe.gültig) * 100

# test prozent
test.df <- ltw_sn_1999_absH[3, ]
sum(test.df[30:52], na.rm = T)

# save as RData----
ltw_sn_1990_absH.df <- data.frame(ltw_sn_1990_absH)
ltw_sn_1994_absH.df <- data.frame(ltw_sn_1994_absH)
ltw_sn_1999_absH.df <- data.frame(ltw_sn_1999_absH)

save(ltw_sn_1990_absH.df, file = 'ltw_sn_1990.RData')
save(ltw_sn_1994_absH.df, file = 'ltw_sn_1994.RData')
save(ltw_sn_1999_absH.df, file = 'ltw_sn_1999.RData')

# load data
load("C:/Users/Philipp/Desktop/R/Die_Ära_Kohl/ltw_sn_1990.RData")
load("C:/Users/Philipp/Desktop/R/Die_Ära_Kohl/ltw_sn_1994.RData")
load("C:/Users/Philipp/Desktop/R/Die_Ära_Kohl/ltw_sn_1999.RData")

# top 10 parties overall
# 1990
long_1990.df <- ltw_sn_1990_absH.df %>%
  pivot_longer(
    cols = ends_with('.prozent'),
    names_to = 'partei',
    values_to = 'prozent'
  ) %>%
  mutate(
    partei = sub('\\.prozent$', '', partei)
  )

long_1990.df <- data.frame(long_1990.df)

# top 10 party percentage
# recode NA in percentage as 0
long_1990.df$prozent[is.na(long_1990.df$prozent)] <- 0
sn_1990 <- filter(long_1990.df, wahlkreis == 'Freistaat Sachsen')
sn_1990[order(sn_1990$prozent, decreasing = T), c('partei', 'prozent')][1:10, ]
sum(sn_1990$prozent)

# 1994
long_1994.df <- ltw_sn_1994_absH.df %>%
  pivot_longer(
    cols = ends_with('.prozent'),
    names_to = 'partei',
    values_to = 'prozent'
  ) %>%
  mutate(
    partei = sub('\\.prozent$', '', partei)
  )

long_1994.df <- data.frame(long_1994.df)

# top 10 party percentage
# recode NA in percentage as 0
long_1994.df$prozent[is.na(long_1994.df$prozent)] <- 0
sn_1994 <- filter(long_1994.df, wahlkreis == 'Freistaat Sachsen')
sn_1994[order(sn_1994$prozent, decreasing = T), c('partei', 'prozent')][1:10, ]
sum(sn_1994$prozent)

# 1999
long_1999.df <- ltw_sn_1999_absH.df %>%
  pivot_longer(
    cols = ends_with('.prozent'),
    names_to = 'partei',
    values_to = 'prozent'
  ) %>%
  mutate(
    partei = sub('\\.prozent$', '', partei)
  )

long_1999.df <- data.frame(long_1999.df)

# top 10 party percentage
# recode NA in percentage as 0
long_1999.df$prozent[is.na(long_1999.df$prozent)] <- 0
sn_1999 <- filter(long_1999.df, wahlkreis == 'Freistaat Sachsen')
sn_1999[order(sn_1999$prozent, decreasing = T), c('partei', 'prozent')][1:10, ]
sum(sn_1999$prozent)

# merge years by party votes (keep only 'datum', 'wahlkreis', 'wahlberechtigte',
#                             'wahlbeteiligung', 'partei', 'prozent')
long_1990.df[4:32] <- NULL
long_1994.df[4:25] <- NULL
long_1999.df[4:28] <- NULL

long_sn.df <- rbind(long_1990.df, long_1994.df, long_1999.df)

# UNTERSUCHUNG 1: STIMMEN PRO WAHLKREIS NACH PARTEI

intersect(
  unique(long_1994.df$wahlkreis), 
  unique(long_1999.df$wahlkreis)
  )

# Übereinstimmende Wahlkreise:
#   Freistaat Sachsen
#   Delitzsch
#   Leipzig 1-6
#   Bautzen 1
#   Dresden 1-6
#   Freiberg 1
#   Chemnitz 1-4


unique(long_sn.df$wahlkreis)
wahlkreis_selection = 'Leipzig 1'

ggplot(
  long_sn.df %>%
    filter(wahlkreis == wahlkreis_selection) %>%
    group_by(datum) %>%
    slice_max(prozent, n = 5, with_ties = F) %>%
    ungroup(),
  aes(
    x = reorder_within(partei, -prozent, datum), 
    y = prozent, 
    fill = partei))+
  geom_col()+
  scale_x_reordered()+
  scale_fill_manual(
    values = c(
      'CDU' = '#000000',
      'F.D.P' = '#FFFF00',
      'SPD' = '#FF0000',
      'LL.PDS' = '#800080',
      'PDS' = '#800080',
      'GRÜNE' = '#00FF00'
    ),
    na.value = '#696969'
  )+
  labs(title = paste(wahlkreis_selection), x = 'Partei', y = 'Erhaltene Stimmen (%)')+
  theme_light()+
  theme(legend.position = 'none')+
  facet_wrap(.~ datum, scales = 'free_x')

# EXPLORATION----
# 1990
# wahlbeteiligung alle Wahlkreise
ggplot(data = filter(ltw_sn_1990_absH.df, wahlkreis != 'Freistaat Sachsen'), aes(y = wahlbeteiligung))+
  geom_boxplot()+
  labs(title = 'Sächsische Wahlkreise 1990', y = 'Wahlbeteiligung (%)')+
  theme_light()

# wahlkreis with lowest wahlbeteiligung
ltw_sn_1990_absH.df[which.min(ltw_sn_1990_absH.df$wahlbeteiligung), "wahlkreis"]
# top 10 lowest wahlbeteiligung
ltw_sn_1990_absH.df[order(ltw_sn_1990_absH.df$wahlbeteiligung), c("wahlkreis", "wahlbeteiligung")][1:10, ]

# PARTY PERCENT 1990 per Wahlkreis----
# prozent.cdu
ggplot(data = filter(ltw_sn_1990_absH.df, wahlkreis != 'Freistaat Sachsen'), aes(x = CDU.prozent))+
  geom_density()+
  theme_light()
  
# pivot to long format to plot percentages
long.df <- ltw_sn_1990_absH.df %>%
  pivot_longer(
    cols = ends_with('.prozent'),
    names_to = 'partei',
    values_to = 'prozent'
  ) %>%
  mutate(
    partei = sub('\\.prozent$', '', partei)
  )

long.df <- data.frame(long.df)

# test long.df
#sum(filter(long.df, wahlkreis == 'Freistaat Sachsen')$prozent, na.rm = T)
#sum(filter(long.df, wahlkreis == 'Delitzsch')$prozent, na.rm = T)

# PLOT PERCENTAGE PER PARTY 1990----
wahlkreis_selection <- 'Hoyerswerda I'

ggplot(
  long.df %>%
    filter(wahlkreis == wahlkreis_selection) %>%
    slice_max(prozent, n = 5),
  aes(x = reorder(partei, -prozent), y = prozent, fill = partei))+
  geom_col()+
  scale_fill_manual(
    values = c(
      'CDU' = '#000000',
      'F.D.P' = '#FFFF00',
      'SPD' = '#FF0000',
      'LL.PDS' = '#800080'
    ),
    na.value = '#696969'
  )+
  labs(title = paste(wahlkreis_selection, '1990'), x = 'Partei', y = 'Erhaltene Stimmen (%)')+
  theme_light()+
  theme(legend.position = 'none')
