import random

def generate(data):
  
  # generate question parameters
  data["params"]["ii"] = random.randint(2, 9)
  data["params"]["nn"] = round(random.normalvariate(mu=0, sigma=1), 3)
