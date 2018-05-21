echo "# Titanic-Example" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/drduda9/Titanic-Example.git
git push -u origin master

mean_age <- mean(titanic$age, na.rm = TRUE)

#replace missing values of age column with mean, example code
titanic$age[is.na(titanic$age)] <- mean(titanic$age, na.rm = TRUE)


#real use for this data set to replace missing values with mean in age column
titanic$age[is.na(titanic$age)] <- mean(titanic$age, na.rm = TRUE)

#replace missing values with one value "none"
titanic$boat[is.na(titanic$boat)] <- "NONE"

#creating new column differentiating those that had cabins and those that didn't
titanic$has_cabin_number <- ifelse(titanic$cabin == "", "0", "1")

#replaced missing values from has_cabin_number to 0
titanic$has_cabin_number[is.na(titanic$has_cabin_number)] <- "0"

#Cleaned up version from original dataset
titanic3 <- titanic

