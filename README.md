# wintercoding

WINTER WORKLOG BEGINNING


Create GitHub Repository - 25 min.
I had to re-create my account since I couldn’t log in to the old account. 


Shared the link via Canvas, uploaded fall R coding files. 

![Screenshot 2023-12-04 at 4 52 18 PM](https://github.com/jchun24/wintercoding/assets/152927282/8ea7b41a-6373-41bb-a4a3-444f36a7c29a)


Continuing to work with Real-world dataset - 2hrs 10 min. - Sat. Dec 2

Using the meteorites dataset, linked the file with visual studio code. 

Had this error when uploading the dataset to the code. 

![Screenshot 2023-12-04 at 4 58 14 PM](https://github.com/jchun24/wintercoding/assets/152927282/aff14ff1-0958-41a6-ad01-333b1d0f3ce7)

![Screenshot 2023-12-04 at 5 02 17 PM](https://github.com/jchun24/wintercoding/assets/152927282/b59d4da4-0575-49b4-a3d8-13ba7250eaca)

Checked whether these two files were in the same repository, and was not. 

![Screenshot 2023-12-04 at 5 02 34 PM](https://github.com/jchun24/wintercoding/assets/152927282/ea49ce46-a047-4349-aa45-a38fb88269b0)


By doing head(meteorites), able to see that the dataset has been uploaded to the code. 

Did some basic explanatory data analysis on this new dataset - 30 min

First, the file is too big (450000 lines), so I needed a warning(50) to see the first 50 for any operations. 

![Screenshot 2023-12-04 at 5 08 25 PM](https://github.com/jchun24/wintercoding/assets/152927282/471af1cf-5da7-4557-b1c8-cf3d9c6338d3)

Other data analysis operations 

Aggregate analysis & finding relationships between variables

![Screenshot 2023-12-04 at 8 18 54 PM](https://github.com/jchun24/wintercoding/assets/152927282/85bc6846-8c7d-4e31-b401-d73c859e5f0f)

![Screenshot 2023-12-04 at 8 23 55 PM](https://github.com/jchun24/wintercoding/assets/152927282/ae4e5ffe-a581-4a53-b11b-ef6ac19784fc)

This plot is not as helpful since there are some outliers that affect the graph significantly. If there are 45,000 counts, it is likely to have outliers anyways. 

Week 2 Work log 

Before diving into other data analysis, watched very useful lecture on R from MIT open courseware - 52min video - 1hr
![Screenshot 2023-12-11 at 3 17 14 PM](https://github.com/jchun24/wintercoding/assets/152927282/aba3e869-36af-4a8d-acc8-5522922dcf37)

Some great insights on data analysis operation both in java and R. 
Focused on the cluster analysis part from 15min. to approx. 30 min.

From Stackoverflow and open AI, figured out that k-means clustering is the most common method for cluster analysis. 

Trying out the cluster analysis on R - 1hr 30min. 

Again, the CRAN mirror error appeared - not sure what this is. 

![Screenshot 2023-12-11 at 3 23 15 PM](https://github.com/jchun24/wintercoding/assets/152927282/6d52c8d2-ba5f-4664-92a5-07e0243fc973)

Also, some of the variables are categorical, so the code shows this error for not showing numerical values.

![Screenshot 2023-12-11 at 3 25 25 PM](https://github.com/jchun24/wintercoding/assets/152927282/2887c7db-9dd0-40a2-9e12-57f18acec5fe)


![Screenshot 2023-12-11 at 3 26 41 PM](https://github.com/jchun24/wintercoding/assets/152927282/24e07d8d-f3f4-43a1-9425-e115f7b01b7c)

Realized that cluster sample does not work in this case. 
First, went back to some basic EDA, explanatory data analysis. 
For class and mode, they are not quantitative variables, so it just shows character.

![Screenshot 2023-12-11 at 3 28 53 PM](https://github.com/jchun24/wintercoding/assets/152927282/544e0f3b-106a-4d0a-ad0a-e53d07038838)

1hr 30min. - Sun Dec 10 

library(ggplot2)

warnings()

meteorites$year <- as.Date(meteorites$year)

ggplot(meteorites, aes(x = year)) + geom_histogram(binwidth = 365)

Initial code for the given time span, but could not only do the first 50. (idk why) 

![Screenshot 2023-12-11 at 3 39 26 PM](https://github.com/jchun24/wintercoding/assets/152927282/728f50ba-788e-466e-b847-49c313908e1c)

Buch of errors this week, needed a successful code. 

Monday 

ANOVA test 
This is one of the significance test I learned during summer college session at CMU, the one way analysis of variance test fit for multiple categorical variables. 
ANOVA test was built-in on R, so just used aoa function to perform it. 

![Screenshot 2023-12-11 at 3 52 58 PM](https://github.com/jchun24/wintercoding/assets/152927282/d528088b-d02a-40c0-8910-a33abb978f9f)

Degree of freedom for the residuals is extremely large, so it may not be a useful number to use as a conclusion. 

Will continue work on other features on R, and potentially a good tool for this dataset and other datasets as well. 

Wed Dec 13 Worklog 

1 hour 30 min of good coding work for study hall 


Explored new dataset: global warming 
Thought that this one is more applicable to the current world situation 

![Screenshot 2023-12-13 at 11 30 41 PM](https://github.com/jchun24/wintercoding/assets/152927282/f737b8ac-af1e-4e9c-868a-a2729d51efab)

Tried the overall summary statistics 

![Screenshot 2023-12-13 at 11 34 21 PM](https://github.com/jchun24/wintercoding/assets/152927282/22663fb1-93bd-47d0-9255-c58e6e1aa179)

It's basically the difference of temp. between each year based on the previous year.

Wondered if the average temperature increased more during summer than that of during winter. 
Visual plot for comparison

![Screenshot 2023-12-13 at 11 39 28 PM](https://github.com/jchun24/wintercoding/assets/152927282/6415a21a-a36c-4003-a779-7c6ef5b72318)

Well, shows a linear trend with almost no outliers, meaning they increased by a small amount consistently regardless of the season. 

![Screenshot 2023-12-13 at 11 40 45 PM](https://github.com/jchun24/wintercoding/assets/152927282/069f985d-a601-4a62-b677-78d88c871112)

One of the debugging problem - need to figure out how to set the range of the dataset for grouping analysis as a visual representation. Perhaps I will try that during winter break. 

Jan 7 Sun Worklog

Back with coding work, continue on R progress

Grouping analysis for the same dataset 
Tried asking GPT-4 for feedback that I could not solve before break 

![Screenshot 2024-01-08 at 3 36 08 PM](https://github.com/jchun24/wintercoding/assets/152927282/737d3298-5893-4c67-9437-da252f9e373c)

Used data.table this time to my code 

![Screenshot 2024-01-08 at 3 38 45 PM](https://github.com/jchun24/wintercoding/assets/152927282/23c2c050-6c34-4215-af0f-275b144ceabf)

Seemed like there is no dplyr package installed (weird because I have been consistently using it)
Upgraded pip and installed it 

![Screenshot 2024-01-08 at 4 01 49 PM](https://github.com/jchun24/wintercoding/assets/152927282/189de2fb-78a1-47ca-ae65-65a1ccc459ab)

Task is to solve this cran mirror problem soon enough

![Screenshot 2024-01-08 at 4 06 03 PM](https://github.com/jchun24/wintercoding/assets/152927282/c8ade1a7-e4a1-4828-9658-b3b647a39794)

# Jan 11 Worklog 

Finally downloaded the packages for linear graphs and significance tests - 1 hr and 30min

![Screenshot 2024-01-16 at 6 37 53 PM](https://github.com/jchun24/wintercoding/assets/152927282/20d20db5-0e6f-4ee6-bb86-de91913a671f)

Also installed ggplot2 (new version) successfully 

![Screenshot 2024-01-16 at 6 39 26 PM](https://github.com/jchun24/wintercoding/assets/152927282/eeefaf58-ee04-4bcb-8c59-4789033a7299)

Began to get deeper into visual representation and regression model - thought it would be great to have some useful graphs and tables that shows relationships between variables

Asked GPT-4 model for some suggestions 
Learned tidyverse and scattplot as a new tool 

![Screenshot 2024-01-16 at 6 46 06 PM](https://github.com/jchun24/wintercoding/assets/152927282/f32e5efa-1905-40ae-aa4f-716748910aa0)

Error with the code while debugging 

![Screenshot 2024-01-16 at 6 50 42 PM](https://github.com/jchun24/wintercoding/assets/152927282/9b964609-a8e5-43bf-aa03-3bb4cb443ad1)

Used conflicted package 

![Screenshot 2024-01-16 at 6 58 56 PM](https://github.com/jchun24/wintercoding/assets/152927282/1909150b-2e8a-4af0-bdb6-21258c2b8f64)

From the linear regression line, 
geom_smooth(method = "lm", se = FALSE, color = "red"),
by this code the scatterplot should have the regression line, but doesn't seem to work. 

![Screenshot 2024-01-16 at 7 12 47 PM](https://github.com/jchun24/wintercoding/assets/152927282/a12ad261-7362-424c-898d-bea2d1e5c062)

# Jan 15 
Made use of Stackoverflow for the regression line and got it. - 2hrs

![Screenshot 2024-01-16 at 7 16 12 PM](https://github.com/jchun24/wintercoding/assets/152927282/c3ad902f-14b1-48b6-b1ad-879fbfe6131d)

Then, GPT suggested me with a bar graph that compares the yearly average, but bar graph was much harder than scatterplot. 

Had error with the data itself, where there was no marking for "month" in the column. 
![Screenshot 2024-01-16 at 7 22 41 PM](https://github.com/jchun24/wintercoding/assets/152927282/2d336e65-aa2f-48f2-9835-6af1d7be95ca)

Baciscally, cannot label the variables. 

![Screenshot 2024-01-16 at 7 22 51 PM](https://github.com/jchun24/wintercoding/assets/152927282/f26573c7-76eb-4170-b1e0-d59ab92040b8)

So, spent the last 30 mins watching how to label a known dataset 

![Screenshot 2024-01-16 at 7 25 06 PM](https://github.com/jchun24/wintercoding/assets/152927282/f5db375f-282c-4e44-bc1d-02c459f03551)

# Week 4

Jan 20 Brainstorm 
Fall, I went over some basic concepts for R and data science. 
For winter, for those who already saw my presentation, I should give more information on utilizing R. 
Cluster analysis and regression analysis can be a good idea, so I will continue to work on them.  

Bar graph analysis method - 2 hrs 
Downloaded reshape2 

![Screenshot 2024-01-22 at 4 42 09 PM](https://github.com/jchun24/wintercoding/assets/152927282/52f7a95e-ca14-439f-9fad-8dbb6102a9da)

Ran into this error 

![Screenshot 2024-01-22 at 4 55 02 PM](https://github.com/jchun24/wintercoding/assets/152927282/164bf40d-c442-4253-a557-e609f8f91413)

Data frame (df) issue 
Perhaps I need to change the dataset because it's not friendly at all... 

![Screenshot 2024-01-22 at 5 02 51 PM](https://github.com/jchun24/wintercoding/assets/152927282/521f9cd8-6638-4e71-a305-5b87368c8b97)

This format is not good for any code. 
Went back to the meteorites dataset and continued working on the bar graph. 

library(ggplot2)

meteorites <- read.csv("meteorites.csv")

meteorite_counts <- table(meteorites$name_type)

meteorite_counts_df <- as.data.frame(meteorite_counts)
names(meteorite_counts_df) <- c('Type', 'Count')

ggplot(meteorite_counts_df, aes(x = Type, y = Count)) + 
    geom_bar(stat = 'identity', fill = 'steelblue') + 
    theme_minimal() +
    labs(title = 'Meteorite Counts by Type', x = 'Type', y = 'Count') +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))

Hope to see good results for the showcase in following weeks.

Week 5 Work

Last week until long winter weekend - seemed like I have learned enough methods for data analysis, so I should immediately begin findning a good dataset that actually works.
Because meteorites and global warming was from a random dataset website, the format of the file was not fit for code. Perhaps built-in dataset in R would make more sense for application. 

![Screenshot 2024-01-28 at 9 30 43 PM](https://github.com/jchun24/wintercoding/assets/152927282/0b05b44d-818b-4937-99df-cb52013520b5)

List of widely known dataset that is formatted well. 

Thanks to selva86 in Github. 
![Screenshot 2024-01-28 at 9 33 47 PM](https://github.com/jchun24/wintercoding/assets/152927282/a51a0820-3752-4b07-8849-d896ee59cda7)

![Screenshot 2024-01-28 at 9 41 13 PM](https://github.com/jchun24/wintercoding/assets/152927282/2efca670-428d-43df-a926-ab78293b2c9e)

Seems like the dataset is in the correct file. 

ggplot(Boston, aes(x = rm, y = medv)) +
  geom_point() +
  labs(x = "Rooms",
       y = "Median Value")
Simple (not simple) visual plot for finding relationship (using ggplot2)

![Screenshot 2024-01-28 at 9 50 25 PM](https://github.com/jchun24/wintercoding/assets/152927282/a9f45bf4-d315-479d-aae0-e5f2e2766fa0)

Got help from https://stackoverflow.com/questions/70668409/looking-for-a-way-to-plot-a-pairwise-scatterplot-matrix-where-variables-are-in-t 
for pairwise plot and its t test analysis. 

![Screenshot 2024-01-28 at 9 54 44 PM](https://github.com/jchun24/wintercoding/assets/152927282/9991b217-8923-4ec9-84be-6d77f61426a0)

Next week, I may try this ggplot method 
library(ggplot2)

df <- tidyr::pivot_longer(iris, c(Petal.Length, Petal.Width), 
                          names_to = "petal_metric", values_to = "petal_value")
df <- tidyr::pivot_longer(df, c(Sepal.Length, Sepal.Width),
                          names_to = "sepal_metric", values_to = "sepal_value") 

![Screenshot 2024-01-28 at 9 59 07 PM](https://github.com/jchun24/wintercoding/assets/152927282/fb52a128-5c03-4632-adf4-b3b40104e7c9)

![Screenshot 2024-01-28 at 9 58 30 PM](https://github.com/jchun24/wintercoding/assets/152927282/5ebb737e-9d38-4b32-aa21-daaf435ba417)

Presentation Proposal + Brainstorming 

Figured out that it would be nice to show some real-world applications of R to the advanced students. 
Using some methods in statistical analysis, present a few that is cool and informative. 

1. The linear relationship graph for meteorites dataset

![Screenshot 2024-02-12 at 4 51 48 PM](https://github.com/jchun24/wintercoding/assets/152927282/d24f2e42-938c-41f5-9f2a-07067764a458)

2. Linear regression for global warming dataset

![Screenshot 2024-02-12 at 4 53 13 PM](https://github.com/jchun24/wintercoding/assets/152927282/fe19cd06-eb23-48db-b5db-787d0d810827)

3. Boston Housing dataset and how to import a built-in dataset in R library

![Screenshot 2024-02-12 at 4 53 56 PM](https://github.com/jchun24/wintercoding/assets/152927282/fd84535c-d18d-4f3d-9bd1-e272b9e0d35b)

In addition, going through the details in the code will help students to understand which commands produce the outputs just like a python code. 
Some background explanation on those three dataset would also be a good part of the presentation. 

This is the list of variables in Boston housing dataset for reference: 
CRIM: Per capita crime rate by town
ZN: Proportion of residential land zoned for lots over 25,000 sq. ft
INDUS: Proportion of non-retail business acres per town
CHAS: Charles River dummy variable (= 1 if tract bounds river; 0 otherwise)
NOX: Nitric oxide concentration (parts per 10 million)
RM: Average number of rooms per dwelling
AGE: Proportion of owner-occupied units built prior to 1940
DIS: Weighted distances to five Boston employment centers
RAD: Index of accessibility to radial highways
TAX: Full-value property tax rate per $10,000
PTRATIO: Pupil-teacher ratio by town
B: 1000(Bk — 0.63)², where Bk is the proportion of [people of African American descent] by town
LSTAT: Percentage of lower status of the population
MEDV: Median value of owner-occupied homes in $1000s

Only going to focus on few of them. 

Representation of correlation matrix using corrplot 

library(MASS)    
library(corrplot) 
data(Boston)
cor_matrix <- cor(Boston)

corrplot(cor_matrix, method = "color", type = "upper", tl.col = "black", tl.srt = 45, 
         cl.lim = c(-2, 2))
The argument is set to show only the upper triangle matrix of the correlation matrix. 
The only difference is that there is text lables and color limits similar to doing it in html. 
The result is: 

![Screenshot 2024-02-12 at 5 22 58 PM](https://github.com/jchun24/wintercoding/assets/152927282/eda14177-0237-420c-b360-1746354825da)

Explaining what this kind of a heatmap actually means will be important. 
Until next week, I need to figure out how to only use certain variables. 
