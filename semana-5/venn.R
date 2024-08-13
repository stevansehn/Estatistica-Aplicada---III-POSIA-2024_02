# # Instalar a biblioteca se necessário
install.packages("VennDiagram")
# Carregar a biblioteca
library(VennDiagram)
# Desenhar o diagrama
draw.triple.venn(area1 = 120, area2 = 70, area3 = 150, 
                 n12 = 40, n23 = 30, n13 = 15, 
                 n123 = 5, category = c("A", "B", "C"),
                 lty = "blank", fill = c("skyblue", "pink1", "mediumorchid"))
