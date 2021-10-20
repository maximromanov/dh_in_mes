import random

atoms = []

for l in ["a", "b", "c", "d", "e", "f", "g", "h"]:
  for d in range(1,11,1):
    print(f"{l}{d}")
    atoms.append(f"{l}{d}")


print(atoms)
random.shuffle(atoms)
print(atoms)

skip = ["y", "n"]
trails = []

for a in atoms:
  test = random.choice(skip)
  if skip == "y":
    pass
  else:
    src = a
    trg = random.choice(atoms)
    if src[0] != trg[0]:
      link = f"{src}->{trg}"
      trails.append(link)
    else:
      pass

print(trails)

with open("trails_sim.txt", "w", encoding="utf8") as f9:
  f9.write("; ".join(trails))
  


