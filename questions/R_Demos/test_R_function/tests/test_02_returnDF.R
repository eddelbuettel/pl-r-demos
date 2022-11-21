## @title [Part 1] Returns DF
## @score 1

## Check to see if student's code returns a data frame

library(tinytest)
using(ttdo)

file <- "/grade/serverFilesCourse/datasets/penguins.csv"

## Get student's result
student <- plr::source_and_eval_safe_with_hiding("/grade/student/student1.R",
                                                 penguin_reader(file),
                                                 "ag",
                                                 "/grade/tests/ans.R")
class_student_return <- class(student)

expect_equal_with_diff(class_student_return, "data.frame")
