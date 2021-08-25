## @title [Part 1] Runs Without Errors
## @score 1

## Check to see if student's code runs without error

## this is the path once mounted, in the repo it is just 'datasets/penguins.csv'
file <- "/grade/serverFilesCourse/datasets/penguins.csv"
penguins <- read.csv(file)

expect_silent(plr::source_and_eval_safe("/grade/student/student1.R",
                                        penguin_reader(file),
                                        "ag"))
