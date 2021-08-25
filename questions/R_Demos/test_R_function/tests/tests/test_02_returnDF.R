## @title [Part 1] Returns DF
## @score 1

## Check to see if student's code returns a data frame

library(tinytest)
using(ttdo)

file <- "/grade/serverFilesCourse/datasets/penguins.csv"

## Get student's result
student <- plr::source_and_eval_safe("/grade/student/student1.R",
                                     penguin_reader(file), "ag")
class_student_return <- class(student)

expect_equal_with_diff(class_student_return, "data.frame")
