import paths as p
import jax.numpy as np
import jax.random as jr

data1 = jr.normal(jr.PRNGKey(1), (100,))
data2 = jr.normal(jr.PRNGKey(2), (100,))

import os

try:
    os.mkdir(p.data / "data_files")
except FileExistsError:
    pass

np.save(p.data / "data_files/data1.npy", data1)
np.save(p.data / "data_files/data2.npy", data2)