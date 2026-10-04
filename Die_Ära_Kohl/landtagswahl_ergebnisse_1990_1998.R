library(ggplot2)

# sachsen----
# langtagswahlergebnisse_1994----
# Wahlbeteiligung
Altersgruppe <- c('18-20','21-24','25-29','30-34','35-39','40-44','45-49','50-59','60-69','70 und mehr')
Insgesamt_in_Prozent <- c(39.3,31.8,37.0,45.0,51.9,57.0,58.7,65.4,72.9,61.0)
Männer_in_Prozent <- c(40.2,32.4,36.6,43.0,50.3,56.4,58.7,65.3,74.3,69.2)
Frauen_in_Prozent <- c(38.1,31.3,37.4,47.0,53.6,57.7,58.7,65.5,71.7,57.6)

WahlAlterSachsen1994.df <- data.frame(
  Altersgruppe,
  Insgesamt_in_Prozent,
  Männer_in_Prozent,
  Frauen_in_Prozent
)

ggplot(data = WahlAlterSachsen1994.df, mapping = aes(x = Altersgruppe, y = Insgesamt_in_Prozent))+
  geom_bar(stat = 'identity')+
  geom_hline(yintercept = mean(Insgesamt_in_Prozent), color = 'red')+
  labs(title = 'Landtagswahl Sachsen 1994 - Wahlbeteiligung nach Altersgruppe',
       y = 'Wahlbeteiligung in Prozent',
       x = 'Altersgruppe')+
  theme_light()

# landtagswahlergebnisse 1999----
# Wahlbeteiligung
Altersgruppe <- c('18-20','21-24','25-29','30-34','35-39','40-44','45-49','50-59','60-69','70 und mehr')
Insgesamt_in_Prozent <- c(46.1, 39.8, 43.1, 50.5, 55.7, 59.2, 60.9, 64.7, 70.8, 61.8)
Männer_in_Prozent <- c(47.4, 40.7, 42.7, 48.5, 54.5, 58.3, 60.4, 64.9, 71.9, 70.1)
Frauen_in_Prozent <- c(44.6, 38.6, 43.7, 52.6, 57.0, 60.2, 61.4, 64.6, 69.8, 57.7)

WahlAlterSachsen1998.df <- data.frame(
  Altersgruppe,
  Insgesamt_in_Prozent,
  Männer_in_Prozent,
  Frauen_in_Prozent
)

ggplot(data = WahlAlterSachsen1998.df, mapping = aes(x = Altersgruppe, y = Insgesamt_in_Prozent))+
  geom_bar(stat = 'identity')+
  geom_hline(yintercept = mean(Insgesamt_in_Prozent), color = 'red')+
  labs(title = 'Landtagswahl Sachsen 1999 - Wahlbeteiligung nach Altersgruppe',
       y = 'Wahlbeteiligung in Prozent',
       x = 'Altersgruppe')+
  theme_light()
