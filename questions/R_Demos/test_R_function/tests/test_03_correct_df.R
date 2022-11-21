## @title [Part 1] Correct Data.Frame
## @score 3

## Check to see if student's code returns the correct data.frame

library(tinytest)
using(ttdo)

file <- "/grade/serverFilesCourse/datasets/penguins.csv"

## Get student's result
student <- plr::source_and_eval_safe_with_hiding("/grade/student/student1.R",
                                                 penguin_reader(file),
                                                 "ag",
                                                 "/grade/tests/solution.R")

## Get correct result
source("/grade/tests/ans.R")
reference <- penguin_read_reference(file)

## Test
expect_equivalent_with_diff(student, reference, tolerance = 1e-4)
