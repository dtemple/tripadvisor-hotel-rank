library(dplyr)

library(rvest)

#Grab the HTML from the page
html<-read_html("https://www.tripadvisor.com/Hotel_Review-g60713-d81215-Reviews-Hotel_Zeppelin_San_Francisco-San_Francisco_California.html")

# Pull in just the rank and read it
rank<-html_nodes(html,'#HEADING_GROUP .rank_text , #HEADING_GROUP .rank')
longrank<-html_text(rank)

# Remove the formatting
ranknum<-gsub("#", "", x=longrank)

# Save it as an integer
as.integer(ranknum[2])

