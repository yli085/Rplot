library(readxl)
library(ggplot2)

df <- read_excel('~/Desktop/data.xlsx')
names(df)[2] <- "Yield" 

ggplot(data=df) +
  geom_bar(aes(x = Years, y = Yield), stat='Identity', fill="darkgreen", width=4)+
  geom_line(aes(x=Years, y=Yield), color='orange', linewidth=1)+
  geom_point(aes(x=Years, y=Yield))+
  ylim(0,500)+
  scale_x_continuous(expand=c(.1, .1), breaks=seq(1950, 2010, 10))+
  theme_bw()+
  theme(panel.grid.major=element_blank(),
        panel.grid.minor=element_blank())+
  theme(axis.title=element_text(face="bold", color="black", size=14),
        axis.text=element_text(color="black", size=12))+
  labs(y="Yield (kg/Mu)")
