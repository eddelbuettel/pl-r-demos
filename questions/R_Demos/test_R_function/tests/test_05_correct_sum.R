## @title [Part 2] Correct Data.Frame Sum
## @score 3

## Check to see if student's code returns the correct data.frame

library(tinytest)
using(ttdo)

# Permute penguins
penguinsTest <- read.csv("/grade/serverFilesCourse/datasets/penguins.csv")
penguinsTest$body_mass_g  <- penguinsTest$body_mass_g + rnorm(nrow(penguinsTest), mean = 5, sd = 1)

## Get student's result
student <- plr::source_and_eval_safe_with_hiding("/grade/student/student2.R",
                                                 penguin_sum(penguinsTest),
                                                 "ag",
                                                 "/grade/tests/solution.R")

## Get correct result
source("/grade/tests/ans.R")
reference <- penguin_sum_reference(penguinsTest)

## Test
expect_equivalent_with_diff(student, reference, tolerance = 1e-4)
