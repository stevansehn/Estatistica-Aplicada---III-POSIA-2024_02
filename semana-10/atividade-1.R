# Atividade 1

# Acessar o dataset e criar um data frame
setwd("/Users/stevansehn/GitHub/Estatistica-Aplicada---III-POSIA-2024_02/semana-10")
df <- read.csv("country_emissions.csv")

filtered_df <- subset(df, iso3_country %in% c("BTN", "AFG"))
str(filtered_df)

# Aplicação da ANOVA - um fator
anova <- aov(filtered_df$emissions_quantity ~ filtered_df$iso3_country, data = filtered_df)
anova
summary(anova)

# Aplicação do teste de Tukey
TukeyHSD(anova)

# Aplicação do teste t-Student
t.test(filtered_df$emissions_quantity ~ filtered_df$iso3_country, conf.level = 0.95)

# Conclusão: há diferença significativa e p-value < 0.01
