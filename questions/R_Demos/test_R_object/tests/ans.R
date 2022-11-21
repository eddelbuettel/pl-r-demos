params = jsonlite::read_json("/grade/data/data.json")$params

expected_x <- data.frame(ii = as.integer(params$ii),
                         nn = params$nn,
                         cc = "hello, world!")
