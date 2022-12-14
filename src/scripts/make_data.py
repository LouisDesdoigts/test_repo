import paths as p

import jax.numpy as np
import jax.random as jr

data = jr.normal(jr.PRNGKey(0), (10000,))
np.save(p.data / "src/data/data.npy", data)