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

# data for U1 (Parteistimmen)
# pivot tables to long format (U1: Stimmen pro Partei)

# 1990
ltw_sn_ds_1990_long <- ltw_sn_ds_1990 %>%
  pivot_longer(
    cols = ends_with('.prozent'),
    names_to = 'partei',
    values_to = 'prozent'
  ) %>%
  mutate(
    partei = sub('\\.prozent$', '', partei)
  )

ltw_sn_ds_1990_long.df <- data.frame(ltw_sn_ds_1990_long)
ltw_sn_ds_1990_long.df[4:7] <- NULL
ltw_sn_ds_1990_long.df[4:19] <- NULL

# 1994
ltw_sn_ds_1994_long <- ltw_sn_ds_1994 %>%
  pivot_longer(
    cols = ends_with('.prozent'),
    names_to = 'partei',
    values_to = 'prozent'
  ) %>%
  mutate(
    partei = sub('\\.prozent$', '', partei)
  )

ltw_sn_ds_1994_long.df <- data.frame(ltw_sn_ds_1994_long)
ltw_sn_ds_1994_long.df[4:7] <- NULL
ltw_sn_ds_1994_long.df[4:23] <- NULL

# 1999
ltw_sn_ds_1999_long <- ltw_sn_ds_1999 %>%
  pivot_longer(
    cols = ends_with('.prozent'),
    names_to = 'partei',
    values_to = 'prozent'
  ) %>%
  mutate(
    partei = sub('\\.prozent$', '', partei)
  )

ltw_sn_ds_1999_long.df <- data.frame(ltw_sn_ds_1999_long)
ltw_sn_ds_1999_long.df[4:7] <- NULL
ltw_sn_ds_1999_long.df[4:26] <- NULL

# merge individual tables
ltw_sn_ds_1990_1994_1999_long.df <- rbind(ltw_sn_ds_1990_long.df,
                                          ltw_sn_ds_1994_long.df,
                                          ltw_sn_ds_1999_long.df)

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
wahljahr.sel <- ltw_sn_ds_1999_long.df
unique(wahljahr.sel$wahlkreis)
wahlkreis.sel <- 'Nordsachsen, Landkreis'
wahljahr <- '1999'

wahl <- filter(wahljahr.sel, wahlkreis == wahlkreis.sel)
print(paste('Direktstimmen:', wahlkreis.sel, wahljahr))
wahl[order(wahl$prozent, decreasing = T), c('partei', 'prozent')][1:10, ]
sum(wahl$prozent)

wahl$prozent <- as.numeric(gsub(',','.', wahl$prozent))

top10 <- wahl |>
  arrange(desc(prozent)) |>
  select(partei, prozent) |>
  slice_head(n = 10)

write_xlsx(
  top10,
  paste0('Direktstimmen_', wahljahr,'_', wahlkreis.sel,'.xlsx'))

# STIMMEN PRO WAHLKREIS NACH PARTEI
unique(ltw_sn_ds_1990_1994_1999_long.df$wahlkreis)

# [1] 'Freistaat Sachsen', [2] 'Chemnitz, Stadt', [3] 'Erzgebirgskreis',
# [4] 'Mittelsachsen, Landkreis', [5] 'Vogtlandkreis', [6] 'Zwickau, Landkreis',
# [7] 'Dresden, Stadt', [8] 'Bautzen, Landkreis', [9] 'Görlitz, Landkreis',
# [10] 'Meißen, Landkreis', [11] 'Sächsische Schweiz-Osterzgebirge, Landkreis',
# [12] 'Leipzig, Stadt', [13] 'Leipzig, Landkreis', [14] 'Nordsachsen, Landkreis'

wahlkreis.sel = 'Freistaat Sachsen'

ggplot(
  ltw_sn_ds_1990_1994_1999_long.df %>%
    filter(wahlkreis == wahlkreis.sel) %>%
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
      'FDP' = '#FFFF00',
      'SPD' = '#FF0000',
      'LL-PDS' = '#800080',
      'PDS' = '#800080',
      'GRÜNE' = '#00FF00'
    ),
    na.value = '#696969'
  )+
  labs(title = paste(wahlkreis.sel, '- Direktstimmen'), x = 'Partei', y = 'Erhaltene Stimmen (%)')+
  theme_light()+
  theme(legend.position = 'none')+
  facet_wrap(.~ datum, scales = 'free_x')

# U2----
# WAHLBETEILIGUNG PRO WAHLKREIS
unique(ltw_sn_ds_1990_1994_1999_long.df$wahlkreis)
wahlkreis.sel = 'Freistaat Sachsen'

ggplot(filter(ltw_sn_ds_1990_1994_1999.df, wahlkreis == wahlkreis.sel), aes(x = datum, y = wahlbeteiligung))+
  geom_point()+
  geom_line()+
  scale_y_continuous(limits = c(0, 100))+
  labs(title = paste(wahlkreis.sel), x = 'Wahljahr', y = 'Wahlbeteiligung (%)')+
  theme_light()

ggplot(filter(ltw_sn_ds_1990_1994_1999.df, wahlkreis != 'Freistaat Sachsen'), aes(x = datum, y = wahlbeteiligung, colour = wahlkreis))+
  geom_point()+
  geom_line()+
  scale_y_continuous(limits = c(0, 100))+
  labs(x = 'Wahljahr', y = 'Wahlbeteiligung (%)', colour = 'Wahlkreis')+
  theme_light()
