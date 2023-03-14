library(robotstxt)
library(rvest)

#scraping website
url <- "https://www.espncricinfo.com/story/anantha-narayanan-jayasuriya-stunner-in-singapore-and-all-the-other-outliers-in-odi-history-1348299"

path= paths_allowed(url)

web = read_html(url)
View(web)

content <- web %>% html_nodes(".ci-html-content div") %>% html_text()
View(content)
#lower case
lowc = tolower(content)
View(lowc)
# upper case
highc = toupper(content)
View(highc)

#character replacement
chartr(old = "a",new = "s", lowc)
#splitting strings
spl = strsplit(highc,split = " ")
View(spl)

#extract as list
spl[[2]]

#extract as words
spl2 = unlist(strsplit(highc, split = " "))
View(spl2)

spl2
spl2[5]
spl2[3051]
#importing library
library(stringr)

str_length(content)
str_length(spl)
str_length(spl2)

str_detect(spl2,"B")
str_detect(spl2,"AT")

str_which(spl2,"AT")

str_which(spl2, "AT")
spl2[2855]

str_count(spl2, "A")

a = str_flatten(spl," ")
View(a)

str_to_title(lowc[3])

str_to_sentence(lowc[1])