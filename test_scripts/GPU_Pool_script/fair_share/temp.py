#!/usr/bin/python

import os
line = '(time echo "\n" | /home/dipanjans/Cuda_Sdk_3.2/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/BlackScholes_8192 0 >/dev/null 2>/dev/null) > /dev/null &'
os.environ['LD_PRELOAD'] = "/home/dipanjans/GPU_Pool_raghav/kidron_fs/interposer/libci.so"
os.system(line)
