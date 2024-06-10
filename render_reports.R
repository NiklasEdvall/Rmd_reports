
# Load libraries
library(knitr)

# List of figure filenames to include
fig1 = "fig1.png"
fig2 = "fig2.png"
fig3 = "fig3.png"

# List of subjects
subs = c("sub1", "sub2", "sub3")

# Variables (pretend these are loaded from somewhere)
vars = c(47, 13, 35)

# Create report from markdown template for each subject
for (i in 1:length(subs)) {
  
  rmarkdown::render(input = "report_template.Rmd", 
                    output_format = "html_document",
                    output_file = paste(subs[i], "_report.html", sep=""))
}
