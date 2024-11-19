import matplotlib.pyplot as plt
import sys
PATH=sys.argv[1]

X=[]
with open(PATH, "r") as f:
    for line in f:
        try:
            line=line.split()
            start=int(line[-5])
            end=int(line[-4])
            X.append(end-start)
        except:
            pass

plt.hist(X, density=True, bins=20)
plt.savefig("../data/histogram/"+PATH.split("/")[-1][:-3]+"png")