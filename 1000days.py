from datetime import date

d0 = date(2022, 4, 30)
d1 = date.today()

delta = d1 - d0

print(delta.days)
