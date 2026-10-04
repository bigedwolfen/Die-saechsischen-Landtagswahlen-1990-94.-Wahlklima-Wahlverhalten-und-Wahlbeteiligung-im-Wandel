# LOAD PACKAGES----
library(readxl)
library(writexl)
library(ggplot2)
library(tidyr)
library(dplyr)
library(tidytext)

# LOAD DATA----
ltw_sn_ds_1990 <- read_excel("data/ltw_sn_ds_1990.xlsx")
ltw_sn_ds_1994 <- read_excel("data/ltw_sn_ds_1994.xlsx")
ltw_sn_ds_1999 <- read_excel("data/ltw_sn_ds_1999.xlsx")

# PREP DATA----
# data for U2 (wahlbeteiligung)
# format data
ltw_sn_ds_1990.df <- data.frame(ltw_sn_ds_1990)
ltw_sn_ds_1990.df[4:6] <- NULL
ltw_sn_ds_1990.df[5:36] <- NULL

ltw_sn_ds_1994.df <- data.frame(ltw_sn_ds_1994)
ltw_sn_ds_1994.df[4:6] <- NULL
ltw_sn_ds_1994.df[5:44] <- NULL

ltw_sn_ds_1999.df <- data.frame(ltw_sn_ds_1999)
ltw_sn_ds_1999.df[4:6] <- NULL
ltw_sn_ds_1999.df[5:50] <- NULL

# merge individual tables
ltw_sn_ds_1990_1994_1999.df <- rbind(ltw_sn_ds_1990.df,
                                     ltw_sn_ds_1994.df,
                                     ltw_sn_ds_1999.df)

# ANALYSIS----

# U1---- 
# top 10 parteien pro Wahlkreis
unique(wahljahr.sel$wahlkreis)
wahlkreis.sel <- 'Nordsachsen, Landkreis'
wahljahr.sel <- ltw_sn_ds_1999.df

wahl <- filter(wahljahr.sel, wahlkreis == wahlkreis.sel)
wahl[order(wahl$wahlbeteiligung, decreasing = T), c('wahlkreis', 'wahlbeteiligung')]
