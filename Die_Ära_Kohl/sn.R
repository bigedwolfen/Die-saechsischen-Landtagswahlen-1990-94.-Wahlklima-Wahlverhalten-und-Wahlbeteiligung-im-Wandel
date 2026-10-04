# PACKAGES----
library(readxl)
library(ggplot2)

# DATA----
# landtagswahl sachsen wahlbeteiligung
ltw_sn_wahlbeteiligung_alter_geschlecht_1994_1999 <- read_excel("data/ltw_sn_wahlbeteiligung_alter_geschlecht_1994-1999.xlsx")

# landtagswahl sachsen stimmabgab
ltw_sn_stimmabgabe_alter_geschlecht_1994_1999 <- read_excel("data/ltw_sn_stimmabgabe_alter_geschlecht_1994-1999.xlsx")

# EXPLORATION----
# ltw_sn_wahlbeteiligung

# factor alter
ltw_sn_wahlbeteiligung_alter_geschlecht_1994_1999$alter <- factor(ltw_sn_wahlbeteiligung_alter_geschlecht_1994_1999$alter,
                                                                  levels = c('18 - 20', '21 - 24', '25 - 29', '30 - 34', '35 - 39', '40 - 44', '45 - 49', '50 - 59', '60 - 69', '70 +', 'Insgesamt'))
# subset into 1994 and 1999
ltw_sn_wahlbeteiligung_1994 <- data.frame(subset(ltw_sn_wahlbeteiligung_alter_geschlecht_1994_1999, as.Date(datum) == as.Date('1994-09-11')))
ltw_sn_wahlbeteiligung_1999 <- data.frame(subset(ltw_sn_wahlbeteiligung_alter_geschlecht_1994_1999, as.Date(datum) == as.Date('1999-09-19')))

# ltw sn 1994 ($geschlecht != 'Männer' & != 'Frauen') ($alter != 'Insgesamt')
# remove 'männer' and 'frauen' from $geschlecht and 'Insgesamt' from $alter
ltw_sn_wahlbeteiligung_1994_nogender <- data.frame(subset(ltw_sn_wahlbeteiligung_1994, geschlecht == 'Insgesamt'))
ltw_sn_wahlbeteiligung_1994_nogender <- data.frame(subset(ltw_sn_wahlbeteiligung_1994_nogender, alter != 'Insgesamt'))

ggplot(ltw_sn_wahlbeteiligung_1994_nogender, aes(y = wahlbeteiligung....))+
  geom_boxplot()+
  theme_light()

ggplot(ltw_sn_wahlbeteiligung_1994_nogender, aes(x = alter, y = wahlbeteiligung...., group = geschlecht))+
  geom_point()+
  geom_line()+
  geom_hline(
    yintercept = mean(ltw_sn_wahlbeteiligung_1994_nogender$wahlbeteiligung...., na.rm = T),
                      linetype = 'dashed',
                      color = 'red')+
  labs(x = 'Altersgruppe', y = 'Wahlbeteiligung (%)', title = 'Landtagswahl Sachsen 1994')+
  theme_light()
