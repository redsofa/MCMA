# Information on CUDA Installation Version
```
nvcc -V
```
```
nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2021 NVIDIA Corporation
Built on Thu_Nov_18_09:45:30_PST_2021
Cuda compilation tools, release 11.5, V11.5.119
Build cuda_11.5.r11.5/compiler.30672275_0
```


# Information on Ubuntu Installation Version
```
lsb_release -a
```

```
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 22.04.5 LTS
Release:        22.04
Codename:       jammy
```

# Kernel Version
```
uname -r
```

```
6.8.0-45-generic
```

# Create conda environment
conda create -n mcma-env


pip install tensorflow[and-cuda]
conda install python=3.12.4
