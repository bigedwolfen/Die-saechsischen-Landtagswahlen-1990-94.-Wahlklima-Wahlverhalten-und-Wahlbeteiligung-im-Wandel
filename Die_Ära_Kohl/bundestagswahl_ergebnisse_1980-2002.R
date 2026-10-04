library(ggplot2)

# DATA: Erhebung----
# Für 'Wahljahr', 'Bundesland', 'Wahlbeteiligung_in_Prozent', 'Partei', 'Erststimmen_in_Prozent', 'Zweitstimmen_in_Prozent'
# => Ergebnisse früherer Bundestagswahlen. Die Bundeswahlleiterin (Hrsg.). Wiesbaden 2025.
# 

# Bundestagswahlen Ergebnisse UNION 1980-2002----
Bundesland <- c('Deutschland', 'Baden-Württemberg', 'Bayern', 'Berlin', 'Brandenburg', 'Bremen', 'Hamburg', 'Hessen',
                'Mecklenburg-Vorpommern', 'Niedersachsen', 'Nordrhein-Westfalen', 'Rheinland-Pfalz', 'Saarland', 'Sachsen', 'Sachsen-Anhalt', 'Schleswig-Holstein', 'Thüringen')
Ost_West <- c('Deutschland', 'West', 'West', 'Ost', 'Ost', 'West', 'West', 'West', 
              'Ost', 'West', 'West', 'West', 'West', 'Ost', 'Ost', 'West', 'Ost')

# 05.10.1980----
Wahlbeteiligung_in_Prozent <- c(88.6, 86.6, 87.6, NA, NA, 87.8, 88.8, 89.9, 
                                NA, 89.3, 89.0, 89.9, 90.6, NA, NA, 89.0, NA)

# UNION
Erststimmen_in_Prozent <- c(46.0, 50.8, 58.4, NA, NA, 30.3, 32.4, 41.9,
                            NA, 41.5, 42.1, 47.2, 43.7, NA, NA, 40.7, NA)
Zweitstimmen_in_Prozent <- c(44.5, 48.5, 57.6, NA, NA, 28.8, 31.2, 40.6,
                             NA, 39.8, 40.6, 45.6, 42.3, NA, NA, 38.9, NA) 

df.union_1980 <- data.frame(
  Wahljahr = 1980,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'Union',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
  )

#View(df.union_1980)

# SPD
Erststimmen_in_Prozent <- c(44.5, 38.7, 33.4, NA, NA, 53.9, 54.8, 48.5,
                            NA, 48.8, 48.5, 44.1, 50.0, NA, NA, 49.7, NA)
Zweitstimmen_in_Prozent <- c(42.9, 37.2, 32.7, NA, NA, 52.5, 51.7, 46.4,
                             NA, 46.9, 46.8, 42.8, 48.3, NA, NA, 46.7, NA) 

df.spd_1980 <- data.frame(
  Wahljahr = 1980,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'SPD',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.spd_1980)

# FDP
Erststimmen_in_Prozent <- c(7.2, 7.8, 6.1, NA, NA, 11.4, 9.5, 7.0,
                            NA, 7.3, 7.3, 6.8, 5.4, NA, NA, 7.8, NA)
Zweitstimmen_in_Prozent <- c(10.6, 12.0, 7.8, NA, NA, 15.1, 14.1, 10.6,
                             NA, 11.3, 10.9, 9.8, 7.8, NA, NA, 12.7, NA) 

df.fdp_1980 <- data.frame(
  Wahljahr = 1980,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'FDP',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.fdp_1980)

# GRÜNE
Erststimmen_in_Prozent <- c(1.9, 2.5, 1.8, NA, NA, 3.5, 2.5, 2.2,
                            NA, 2.1, 1.7, 1.6, 0.3, NA, NA, 1.4, NA)
Zweitstimmen_in_Prozent <- c(1.5, 1.8, 1.3, NA, NA, 2.7, 2.3, 1.8,
                             NA, 1.6, 1.2, 1.4, 1.1, NA, NA, 1.4, NA) 

df.grüne_1980 <- data.frame(
  Wahljahr = 1980,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'Grüne',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.grüne_1980)

# 06.03.1983----
Wahlbeteiligung_in_Prozent <- c(89.1, 88.4, 87.6, NA, NA, 88.3, 88.7, 90.2, 
                                NA, 89.6, 89.5, 90.4, 90.6, NA, NA, 89.2, NA)

# UNION
Erststimmen_in_Prozent <- c(52.2, 57.2, 62.2, NA, NA, 37.0, 40.5, 48.3,
                            NA, 49.0, 48.3, 52.8, 47.6, NA, NA, 49.8, NA)
Zweitstimmen_in_Prozent <- c(48.8, 52.6, 59.5, NA, NA, 34.2, 37.6, 44.3,
                             NA, 45.6, 45.2, 49.6, 44.8, NA, NA, 46.5, NA)

df.union_1983 <- data.frame(
  Wahljahr = 1983,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'Union',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.union_1983)

# SPD
Erststimmen_in_Prozent <- c(40.4, 33.8, 30.2, NA, NA, 52.3, 50.8, 44.1,
                            NA, 43.4, 45.0, 40.5, 46.3, NA, NA, 44.3, NA)
Zweitstimmen_in_Prozent <- c(38.2, 31.1, 28.9, NA, NA, 48.7, 47.4, 41.6,
                             NA, 41.3, 42.8, 38.4, 43.8, NA, NA, 41.7, NA) 

df.spd_1983 <- data.frame(
  Wahljahr = 1983,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'SPD',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.spd_1983)

# FDP
Erststimmen_in_Prozent <- c(2.8, 3.5, 3.1, NA, NA, 2.8, 2.2, 2.7,
                            NA, 2.7, 2.4, 3.2, 2.5, NA, NA, 2.1, NA)
Zweitstimmen_in_Prozent <- c(7.0, 9.0, 6.2, NA, NA, 6.5, 6.3, 7.6,
                             NA, 6.9, 6.4, 7.0, 6.0, NA, NA, 6.3, NA) 

df.fdp_1983 <- data.frame(
  Wahljahr = 1983,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'FDP',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.fdp_1983)

# GRÜNE
Erststimmen_in_Prozent <- c(4.1, 4.6, 4.0, NA, NA, 7.1, 6.0, 4.4,
                            NA, 4.5, 3.9, 3.0, 3.0, NA, NA, 3.4, NA)
Zweitstimmen_in_Prozent <- c(5.6, 6.8, 4.7, NA, NA, 9.7, 8.2, 6.0,
                             NA, 5.7, 5.2, 4.5, 4.8, NA, NA, 5.2, NA) 

df.grüne_1983 <- data.frame(
  Wahljahr = 1983,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'Grüne',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.grüne_1983)

# 25.01.1987----
Wahlbeteiligung_in_Prozent <- c(84.3, 83.1, 81.7, NA, NA, 82.7, 83.0, 85.7, 
                                NA, 85.0, 85.4, 86.7, 87.3, NA, NA, 84.4, NA)

# UNION
Erststimmen_in_Prozent <- c(47.8, 51.5, 57.6, NA, NA, 31.7, 40.9, 45.0,
                            NA, 44.9, 43.6, 48.2, 43.8, NA, NA, 46.1, NA)
Zweitstimmen_in_Prozent <- c(44.3, 46.7, 55.1, NA, NA, 28.9, 37.4, 41.3,
                             NA, 41.5, 40.1, 45.1, 41.2, NA, NA, 41.9, NA) 

df.union_1987 <- data.frame(
  Wahljahr = 1987,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'Union',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.union_1987)

# SPD
Erststimmen_in_Prozent <- c(39.2, 31.9, 28.5, NA, NA, 49.5, 44.2, 41.6,
                            NA, 43.4, 44.9, 39.4, 45.7, NA, NA, 43.0, NA)
Zweitstimmen_in_Prozent <- c(37.0, 29.3, 27.0, NA, NA, 46.5, 41.2, 38.7,
                             NA, 41.4, 43.2, 37.1, 43.5, NA, NA, 39.8, NA) 

df.spd_1987 <- data.frame(
  Wahljahr = 1987,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'SPD',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.spd_1987)

# FDP
Erststimmen_in_Prozent <- c(4.7, 6.1, 4.8, NA, NA, 4.6, 4.8, 4.6,
                            NA, 4.4, 4.1, 4.8, 3.8, NA, NA, 4.3, NA)
Zweitstimmen_in_Prozent <- c(9.1, 12.0, 8.1, NA, NA, 8.8, 9.6, 9.1,
                             NA, 8.8, 8.4, 9.1, 6.9, NA, NA, 9.4, NA) 

df.fdp_1987 <- data.frame(
  Wahljahr = 1987,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'FDP',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.fdp_1987)

# GRÜNE
Erststimmen_in_Prozent <- c(7.0, 8.1, 7.3, NA, NA, 11.7, 9.0, 7.4,
                            NA, 6.3, 6.5, 6.2, 5.1, NA, NA, 5.9, NA)
Zweitstimmen_in_Prozent <- c(8.3, 10.0, 7.7, NA, NA, 14.5, 11.0, 9.4,
                             NA, 7.4, 7.5, 7.5, 7.1, NA, NA, 8.0, NA) 

df.grüne_1987 <- data.frame(
  Wahljahr = 1987,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'Grüne',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.grüne_1987)

# 02.12.1990----
Wahlbeteiligung_in_Prozent <- c(77.8, 77.4, 74.4, 80.6, 73.8, 76.5, 78.2, 81.1,
                                70.9, 80.6, 78.7, 81.7, 85.1, 76.2, 72.2, 78.6, 76.4)

# UNION
Erststimmen_in_Prozent <- c(45.7, 49.2, 54.0, 40.5, 36.7, 32.2, 38.9, 43.9,
                            43.5, 46.2, 42.4, 46.7, 38.9, 50.5, 39.4, 46.1, 45.9)
Zweitstimmen_in_Prozent <- c(43.8, 46.5, 51.9, 39.4, 36.3, 30.9, 36.6, 41.3,
                             41.2, 44.3, 40.5, 45.6, 38.1, 49.5, 38.6, 43.5, 45.2) 

df.union_1990 <- data.frame(
  Wahljahr = 1990,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'Union',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.union_1990)

# SPD
Erststimmen_in_Prozent <- c(35.2, 30.3, 27.6, 33.1, 34.2, 44.3, 43.8, 40.6,
                            30.8, 40.7, 43.2, 38.3, 51.7, 18.2, 25.2, 41.2, 22.2)
Zweitstimmen_in_Prozent <- c(33.5, 29.1, 26.7, 30.6, 32.9, 42.5, 41.0, 38.0,
                             26.5, 38.4, 41.1, 36.1, 51.2, 18.2, 24.7, 38.5, 21.9) 

df.spd_1990 <- data.frame(
  Wahljahr = 1990,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'SPD',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.spd_1990)

# FDP
Erststimmen_in_Prozent <- c(7.8, 8.0, 6.0, 7.6, 8.8, 9.1, 7.3, 6.8,
                            10.2, 6.4, 6.8, 7.2, 4.8, 10.6, 17.6, 6.8, 13.0)
Zweitstimmen_in_Prozent <- c(11.0, 12.3, 8.7, 9.1, 9.7, 12.8, 12.0, 10.9,
                             9.1, 10.3, 11.0, 10.4, 6.0, 12.4, 19.7, 11.4, 14.6) 

df.fdp_1990 <- data.frame(
  Wahljahr = 1990,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'FDP',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.fdp_1990)

# GRÜNE
Erststimmen_in_Prozent <- c(5.6, 6.8, 5.4, 4.7, 7.5, 9.5, 6.2, 5.8,
                            0.7, 4.8, 5.1, 4.9, 2.7, 8.0, 6.6, 4.1, 6.8)
Zweitstimmen_in_Prozent <- c(5.1, 5.7, 4.6, 7.2, 6.6, 8.3, 5.8, 5.6,
                             5.9, 4.5, 4.3, 4.0, 2.3, 5.9, 5.3, 4.0, 6.1) 

df.grüne_1990 <- data.frame(
  Wahljahr = 1990,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'Grüne',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.grüne_1990)

# 16.10.1994----
Wahlbeteiligung_in_Prozent <- c(79.0, 79.7, 76.9, 78.6, 71.5, 78.5, 79.7, 82.3,
                                72.8, 81.8, 81.9, 82.3, 83.5, 72.0, 70.4, 80.9, 74.9)

# UNION
Erststimmen_in_Prozent <- c(45.0, 48.5, 54.8, 32.9, 28.2, 32.9, 38.1, 45.1,
                            40.3, 45.2, 42.1, 46.9, 39.7, 51.2, 39.8, 45.7, 42.9)
Zweitstimmen_in_Prozent <- c(41.4, 43.3, 51.2, 31.4, 28.1, 30.2, 34.9, 40.7,
                             38.5, 41.3, 38.0, 43.8, 37.2, 48.0, 38.8, 41.5, 41.0) 

df.union_1994 <- data.frame(
  Wahljahr = 1994,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'Union',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.union_1994)

# SPD
Erststimmen_in_Prozent <- c(38.3, 33.2, 30.7, 35.2, 45.7, 47.6, 42.1, 39.9,
                            30.0, 43.6, 45.6, 40.4, 50.6, 23.5, 34.2, 42.8, 31.6)
Zweitstimmen_in_Prozent <- c(36.4, 30.7, 29.6, 34.0, 45.1, 45.5, 39.7, 37.2,
                             28.8, 40.6, 43.1, 39.4, 48.8, 24.3, 33.4, 39.6, 30.2) 

df.spd_1994 <- data.frame(
  Wahljahr = 1994,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'SPD',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.spd_1994)

# FDP
Erststimmen_in_Prozent <- c(3.3, 4.4, 3.1, 2.4, 2.2, 3.8, 3.0, 3.4,
                            2.6, 3.2, 3.3, 3.7, 2.0, 3.4, 3.5, 3.0, 3.4)
Zweitstimmen_in_Prozent <- c(6.9, 9.9, 6.4, 5.2, 2.6, 7.2, 7.2, 8.1,
                             3.4, 7.7, 7.6, 6.9, 4.3, 3.8, 4.1, 7.4, 4.1) 

df.fdp_1994 <- data.frame(
  Wahljahr = 1994,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'FDP',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.fdp_1994)

# GRÜNE
Erststimmen_in_Prozent <- c(6.5, 8.3, 6.0, 8.9, 3.2, 10.3, 12.6, 7.9,
                            1.3, 5.8, 6.6, 6.3, 4.3, 4.2, 3.8, 7.1, 4.7)
Zweitstimmen_in_Prozent <- c(7.3, 9.6, 6.3, 10.2, 2.9, 11.1, 12.6, 9.3,
                             3.6, 7.1, 7.4, 6.2, 5.8, 4.8, 3.6, 8.3, 4.9) 

df.grüne_1994 <- data.frame(
  Wahljahr = 1994,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'Grüne',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.grüne_1994)

# 27.09.1998----
Wahlbeteiligung_in_Prozent <- c(82.2, 83.1, 79.2, 81.1, 78.1, 82.1, 81.1, 84.2,
                                79.4, 83.9, 83.9, 83.9, 84.8, 81.6, 77.1, 82.4, 82.3)

# UNION
Erststimmen_in_Prozent <- c(39.6, 43.1, 51.8, 25.8, 20.5, 28.7, 34.9, 40.6,
                            31.9, 39.1, 38.8, 43.4, 35.3, 36.9, 30.2, 41.8, 31.2)
Zweitstimmen_in_Prozent <- c(35.1, 37.8, 47.7, 23.7, 20.8, 25.4, 30.0, 34.7,
                             29.3, 34.1, 33.8, 39.1, 31.8, 32.7, 27.2, 35.7, 28.9) 

df.union_1998 <- data.frame(
  Wahljahr = 1998,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'Union',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.union_1998)

# SPD
Erststimmen_in_Prozent <- c(43.8, 38.7, 35.6, 40.6, 47.6, 55.3, 50.6, 45.6,
                            36.8, 51.0, 50.2, 44.6, 55.4, 31.9, 42.2, 49.0, 37.7)
Zweitstimmen_in_Prozent <- c(40.9, 35.6, 34.4, 37.8, 43.5, 50.2, 45.7, 41.6,
                             35.3, 49.4, 46.9, 41.3, 52.4, 29.1, 38.1, 45.4, 34.5) 

df.spd_1998 <- data.frame(
  Wahljahr = 1998,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'SPD',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.spd_1998)

# FDP
Erststimmen_in_Prozent <- c(3.0, 4.4, 2.6, 2.5, 3.0, 2.9, 2.6, 2.9,
                            1.8, 2.7, 2.9, 3.8, 2.0, 3.1, 3.1, 2.8, 2.9)
Zweitstimmen_in_Prozent <- c(6.2, 8.8, 5.1, 4.9, 2.8, 5.9, 6.5, 7.9,
                             2.2, 6.4, 7.3, 7.1, 4.7, 3.6, 4.1, 7.6, 3.4) 

df.fdp_1998 <- data.frame(
  Wahljahr = 1998,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'FDP',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.fdp_1998)

# GRÜNE
Erststimmen_in_Prozent <- c(5.0, 7.2, 4.6, 7.9, 3.3, 8.7, 7.8, 5.4,
                            2.2, 4.5, 5.0, 4.3, 3.4, 3.8, 2.6, 3.9, 3.4)
Zweitstimmen_in_Prozent <- c(6.7, 9.2, 5.9, 11.3, 3.6, 11.3, 10.8, 8.2,
                             2.9, 5.9, 6.9, 6.1, 5.5, 4.4, 3.3, 6.5, 3.9) 

df.grüne_1998 <- data.frame(
  Wahljahr = 1998,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'Grüne',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.grüne_1998)

# 22.09.2002----
Wahlbeteiligung_in_Prozent <- c(79.1, 81.1, 81.5, 77.6, 73.7, 78.8, 79.6, 80.1,
                                70.6, 81.0, 80.3, 80.0, 80.0, 73.7, 68.8, 80.7, 74.8)

# UNION
Erststimmen_in_Prozent <- c(41.1, 46.3, 58.9, 27.7, 23.2, 25.8, 32.4, 40.3,
                            31.5, 37.5, 38.4, 43.0, 37.4, 37.0, 31.0, 39.9, 31.2)
Zweitstimmen_in_Prozent <- c(38.5, 42.8, 58.6, 25.9, 22.3, 24.6, 28.1, 37.1,
                             30.3, 34.5, 35.1, 40.2, 35.0, 33.6, 29.0, 36.0, 29.4) 

df.union_2002 <- data.frame(
  Wahljahr = 2002,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'Union',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.union_2002)

# SPD
Erststimmen_in_Prozent <- c(41.9, 38.2, 29.1, 39.0, 45.1, 54.5, 51.6, 45.3,
                            42.4, 50.1, 47.6, 43.0, 50.2, 32.5, 42.6, 47.8, 40.3)
Zweitstimmen_in_Prozent <- c(38.5, 33.5, 26.1, 36.6, 46.4, 48.6, 42.0, 39.7,
                             41.7, 47.8, 43.0, 38.2, 46.0, 33.3, 43.2, 42.9, 39.9) 

df.spd_2002 <- data.frame(
  Wahljahr = 2002,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'SPD',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.spd_2002)

# FDP
Erststimmen_in_Prozent <- c(5.8, 6.2, 4.1, 5.3, 5.9, 4.8, 4.7, 5.6,
                            4.8, 5.4, 6.4, 7.6, 4.5, 6.7, 7.0, 5.3, 5.9)
Zweitstimmen_in_Prozent <- c(7.4, 7.8, 4.5, 6.6, 5.8, 6.7, 6.8, 8.2,
                             5.4, 7.1, 9.3, 9.3, 6.4, 7.3, 7.6, 8.0, 5.9) 

df.fdp_2002 <- data.frame(
  Wahljahr = 2002,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'FDP',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.fdp_2002)

# GRÜNE
Erststimmen_in_Prozent <- c(5.6, 7.3, 5.9, 11.0, 3.5, 10.2, 8.7, 6.4,
                            3.2, 5.1, 5.3, 4.8, 3.8, 3.5, 2.6, 5.0, 3.1)
Zweitstimmen_in_Prozent <- c(8.6, 11.4, 7.6, 14.6, 4.5, 15.0, 16.2, 10.7,
                             3.5, 7.3, 8.9, 7.9, 7.6, 4.6, 3.4, 9.4, 4.3) 

df.grüne_2002 <- data.frame(
  Wahljahr = 2002,
  Bundesland, 
  Ost_West, 
  Wahlbeteiligung_in_Prozent,
  Partei = 'Grüne',
  Erststimmen_in_Prozent, 
  Zweitstimmen_in_Prozent
)

#View(df.grüne_2002)

# DATA: Dataset----
df.bundestagswahlen_1980_2002 <- rbind(df.union_1980, df.union_1983, df.union_1987, df.union_1990, df.union_1994, df.union_1998, df.union_2002,
                                       df.spd_1980, df.spd_1983, df.spd_1987, df.spd_1990, df.spd_1994, df.spd_1998, df.spd_2002,
                                       df.fdp_1980, df.fdp_1983, df.fdp_1987, df.fdp_1990, df.fdp_1994, df.fdp_1998, df.fdp_2002,
                                       df.grüne_1980, df.grüne_1983, df.grüne_1987, df.grüne_1990, df.grüne_1994, df.grüne_1998, df.grüne_2002)

#View(df.bundestagswahlen_1980_2002)

saveRDS(df.bundestagswahlen_1980_2002, file = 'Bundestagswahlen 1980-2002.rds')
df.bundestagswahlen_1980_2002 <- readRDS(file = 'Bundestagswahlen 1980-2002.rds')
library(ggplot2)

# DATA: Subsets----

# Deutschlandebene
df.deutschland <- subset(df.bundestagswahlen_1980_2002, Ost_West == 'Deutschland')

# Länderebene
df.länder <- subset(df.bundestagswahlen_1980_2002, Ost_West == 'Ost' | Ost_West == 'West')

df.ost <- subset(df.bundestagswahlen_1980_2002, Ost_West == 'Ost')

df.west <- subset(df.bundestagswahlen_1980_2002, Ost_West == 'West')

# Parteiebene
df.partei_union <- subset(df.bundestagswahlen_1980_2002, Partei == 'Union' & Ost_West == 'Ost' | Ost_West == 'West')
df.partei_union_mean <- subset(df.bundestagswahlen_1980_2002, Partei == 'Union' & Ost_West == 'Deutschland')

df.partei_spd <- subset(df.bundestagswahlen_1980_2002, Partei == 'SPD'& Ost_West == 'Ost' | Ost_West == 'West')
df.partei_spd_mean <- subset(df.bundestagswahlen_1980_2002, Partei == 'SPD' & Ost_West == 'Deutschland')

df.partei_fdp <- subset(df.bundestagswahlen_1980_2002, Partei == 'FDP'& Ost_West == 'Ost' | Ost_West == 'West')
df.partei_fdp_mean <- subset(df.bundestagswahlen_1980_2002, Partei == 'FDP'& Ost_West == 'Deutschland')

df.partei_grüne <- subset(df.bundestagswahlen_1980_2002, Partei == 'Grüne' & Ost_West == 'Ost' | Ost_West == 'West')
df.partei_grüne_mean <- subset(df.bundestagswahlen_1980_2002, Partei == 'Grüne' & Ost_West == 'Deutschland')

# PLOTS: Deutschlandebene---- 
# Jährliche Zweitstimmen pro Partei auf Deutschlandebene
ggplot(data = df.deutschland, mapping = aes(x = Wahljahr, y = Zweitstimmen_in_Prozent, group = Partei, color = Partei))+
  geom_point()+
  geom_line()+
  labs(title = 'Bundestagswahlen 1980-2002',
       x = 'Jahr',
       y = 'Zweitstimmen in %')+
  scale_color_manual(values = c('Union' = 'black',
                                'SPD' = 'red',
                                'FDP' = 'gold',
                                'Grüne' = 'green'))+
  #facet_wrap(. ~Partei)
  theme_light()

# PLOTS: Länderebene----
# Jährliche Zweitstimmen pro Partei auf Länderebene
ggplot(data = df.länder, mapping = aes(x = Wahljahr, y = Zweitstimmen_in_Prozent, group = Bundesland, color = Bundesland))+
  geom_point()+
  geom_line()+
  labs(title = 'Bundestagswahlen 1980-2002',
       x = 'Jahr',
       y = 'Zweitstimmen in %')+
  facet_wrap(. ~Partei)+
  theme_light()

ggplot(data = df.länder, mapping = aes(x = Wahljahr, y = Zweitstimmen_in_Prozent, group = Partei, color = Partei))+
  geom_point()+
  geom_line()+
  labs(title = 'Bundestagswahlen 1980-2002',
       x = 'Jahr',
       y = 'Zweitstimmen in %')+
  scale_color_manual(values = c('Union' = 'black',
                                'SPD' = 'red',
                                'FDP' = 'gold',
                                'Grüne' = 'green'))+
  facet_wrap(. ~Bundesland)+
  theme_light()

ggplot(data = df.länder, mapping = aes(x = Wahljahr, y = Wahlbeteiligung_in_Prozent, group = Bundesland, color = Bundesland))+
  geom_point()+
  geom_line()+
  labs(title = 'Bundestagswahlen 1980-2002',
       x = 'Jahr',
       y = 'Wahlbeteiligung in %')+
  facet_wrap(. ~Ost_West)+
  theme_light()

ggplot(data = df.ost, mapping = aes(x = Wahljahr, y = Zweitstimmen_in_Prozent, group = Bundesland, color = Bundesland))+
  geom_point()+
  geom_line()+
  labs(title = 'Bundestagswahlen 1980-2002',
       x = 'Jahr',
       y = 'Zweitstimmen in %')+
  facet_wrap(. ~Partei)+
  theme_light()

# PLOTS: Parteiebene----

# CALC: Streuungs-/Längenmaße----

# Wahlbeteiligung Bundestagswahlen
ggplot(data = df.länder[df.länder$Wahljahr == 1998,], mapping = aes(y = Wahlbeteiligung_in_Prozent))+
  geom_boxplot()+
  labs(title = 'Wahlbeteiligung an der Bundestagswahl 1998')+
  facet_wrap(. ~Ost_West)+
  theme_gray()

# längenmaße
# mittel
mean(df.west$Wahlbeteiligung_in_Prozent)
#median
median(df.west$Wahlbeteiligung_in_Prozent)

# streuungsmaße
# spannweite
range(df.west$Wahlbeteiligung_in_Prozent)
max(df.west$Wahlbeteiligung_in_Prozent) - min(df.west$Wahlbeteiligung_in_Prozent)
# standardabweichung
sd(df.west$Wahlbeteiligung_in_Prozent, na.rm = T)

summary(df.west$Wahlbeteiligung_in_Prozent)
sd(df.west$Wahlbeteiligung_in_Prozent, na.rm = T)
summary(df.ost$Wahlbeteiligung_in_Prozent)
sd(df.ost$Wahlbeteiligung_in_Prozent, na.rm = T)

# Union durchschnittlichswerte
summary(df.partei_union_mean$Zweitstimmen_in_Prozent)

