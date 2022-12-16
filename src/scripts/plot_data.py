import paths as p

import jax.numpy as np
import matplotlib.pyplot as plt

# data = np.load(p.data / "data.npy")
data1 = np.load(p.data / "data_files/data1.npy")
data2 = np.load(p.data / "data_files/data2.npy")


plt.hist(data1)
plt.hist(data2)
plt.savefig(p.figures / "sample.pdf", dpi=300)