import paths as p

import jax.numpy as np
import matplotlib.pyplot as plt

data = np.load(p.data / "src/data/data.npy")


plt.hist(data)
plt.savefig(p.figures / "sample.pdf", dpi=300)