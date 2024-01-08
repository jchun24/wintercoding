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

