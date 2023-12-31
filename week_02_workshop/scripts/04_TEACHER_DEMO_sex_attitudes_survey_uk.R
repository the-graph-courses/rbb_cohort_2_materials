# DESCRIPTIVE TITLE FOR SCRIPT
# FIRST_NAME LAST_NAME
# Date in YYYY-MM-DD format

##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 0. Intro ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# This assignment tests that you can: 
# - read in data with the `read_csv()` function.
# - create frequency tables with `janitor::tabyl()` and save those with `write_csv()`
# - create simple plots with `esquisse::esquisser()` and save those plots
# These skills were covered in the following lessons 
# Data Dive - https://bit.ly/3Ij59z6
# RStudio Projects - https://bit.ly/3MzxkfT


# Work can be done individually or in groups 
# Note that even if you work in a group, every individual must still upload their own script.
# The final deadline is 24 hours after the workshop ends.
# Reach out to an instructor if you need an extension.

##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 1. Load packages ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if(!require(pacman)) install.packages("pacman")
pacman::p_load(tidyverse, janitor, esquisse)

##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 2. Import data ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# INSTRUCTION: Here, use `read_csv()` to load in your dataset from the "data" folder
# The dataset you need should have the same name as your script. 

uk <- read_csv("data/04_TEACHER_DEMO_sex_attitudes_survey_uk.csv")

##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 3. Create and export a frequency table ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# INSTRUCTION: Using the `tabyl()` function from the {janitor} package, 
# make a frequency table of the `rnssecgp_6` variable
# Then use `write_csv()` to save this table in your "outputs" folder

tabyl(uk, _______________)

write_csv(x = , 
          file = )

##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 4. Create plots to show POINT A & POINT B below, then export these ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# INSTRUCTION: Here, use {esquisse} to generate two {ggplot2} figures 
# that demonstrate each of the POINTS listed below 
# (If you know how to work with ggplot directly, you can skip esquisse)
# Then use the `ggsave()` function to save your plots in the "outputs" folder

# POINT A : A plurality of respondents are in the 25-34 age group (`agrp` variable)
# POINT B : Among respondents aged 65-74, a large proportion consider religion to be "Fairly important" (`religimp` variable)

# HINT: The techniques needed above were covered in the "Data dive" and "RStudio Project" lessons. 
# With one exception: for POINT B, you will need to filter the dataset that you are plotting
# Do this by clicking on the Data tab of your esquisse window (bottom right). 
# You should see some sliders or variable selectors you can use to filter

age_group_plot <- uk %>%
 ggplot() +
 aes(x = agrp, fill = agrp) +
 geom_bar() +
 scale_fill_hue(direction = 1) +
 theme_minimal()

ggsave(filename = "outputs/age_group.png", plot = age_group_plot)


##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 5. Submitting your work ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# INSTRUCTION: 
# To submit, upload your completed R script to the assignment page. 
# The final deadline is 24 hours after the workshop ends.




##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## 6. Present ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# INSTRUCTION: One person from each group will be approached by an instructor and asked to present their work. 
# The selected person will, in about 2 minutes: 
# - Share one of their figures from POINT A or POINT B above, and explain it
# - (Optional) Share your figure from the BONUS section below


##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## BONUS (optional ungraded work) ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# This section is only relevant if you finish early or are feeling ambitious 
# QUESTION: For your assigned dataset, 
# try to create a single figure or a series of figures to answer the question below
# -- Among the "agree with opinion" questions (the variables starting with `sn`, from `snpres` to `snearly`) which have the largest differences between male and female respondents?

