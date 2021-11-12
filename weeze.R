## weezeR - exploratory data analysis of weezer's spotify ranks, genre, and history

## load libraries
library(tidyverse)
library(jsonlite)
library(spotifyr)
library(knitr)

##connect to spotify api
Sys.setenv(SPOTIFY_CLIENT_ID = 'c94876c454994ff8adbd1fa500523159')
Sys.setenv(SPOTIFY_CLIENT_SECRET = 'd9fe80e060134180a713ad0bb42d4020')

access_token <- get_spotify_access_token()

#table data - album, genre, scrobbles, date
weezer <- get_artist_audio_features('weezer')

weezer %>%
  count(key_mode, sort = TRUE) %>%
  head(5) %>%
  kable()


