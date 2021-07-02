Procedures of reinstalling NVIDIA driver, CUDA and cuDNN
===

## Remove anything about NVIDIA

```
sudo apt-get remove --purge nvidia*
sudo apt-get autoremove
```
:warning: autoremove may remove some dependencies of other softwares! Take care of the command!


## Install NVIDIA driver

### Search for your driver

```
apt search nvidia
```

### Select one driver (the last one is a decent choice)

```
sudo apt install nvidia-driver-xxx
```

### Reboot

```
sudo shutdown -r now
```

### Test the driver

```
nvidia-smi
```

If it doesn't work, sometimes this is due to the secure boot option of your motherboard, disable it and test again.

## Install CUDA

:information_source: Try to read the lastest NVIDIA CUDA [Installation Guide](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/) by yourself.

### Download cuda deb file from the [nvidia website](https://developer.nvidia.com/cuda-toolkit-archive)

```
sudo dpkg -i <cuda_file>.deb
sudo apt-get update
sudo apt-get install cuda-10.0
```

### *Secure boot issue* (skip if all things go well)

+ If you miss the MOK key importing after rebooting , which may cause nvidia-smi not working. [reference](https://askubuntu.com/questions/1122855/mok-manager-nvidia-driver-issue-after-cuda-install)
```
sudo mokutil --import /var/lib/shim-signed/mok/MOK.der
```
+ Set the password
+ Reboot and import the key with the password
+ Or just go into BIOS and disable secure boot

### Add cuda to your PATH and install the toolkit

```
export PATH=/usr/local/cuda-10.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export CUDA_HOME=/usr/local/cuda-10.0
nvcc --version
```
If you want to run `nvcc --version` all the time, add them to `~/.bashrc` file.
```
. ~/.bashrc
```

### *Test CUDA* (Optional)

#### Use the toolkit to check your CUDA capable devices

```
cuda-install-samples-10.0.sh ~/.
cd ~/NVIDIA_CUDA-10.0_Samples/1_Utilities/deviceQuery
make
shutdown -r now
```

#### Run the samples

```
cd ~/NVIDIA_CUDA-10.0_Samples/1_Utilities/deviceQuery
./deviceQuery
```

## Install cuDNN

:information_source: Try to read the lastest NVIDIA cuDNN [Installation Guide](https://docs.nvidia.com/deeplearning/sdk/cudnn-install/index.html) by yourself.

### Download cudnn deb file from the [nvidia website](https://developer.nvidia.com/rdp/cudnn-download)

### Two methods to install (it depends on which file you download):

#### Install from a tar file

```
tar -zxvf cudnn-10.0-linux-x64-v7.6.4.tgz
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
```

#### Install from a debian file

```
sudo dpkg -i libcudnn7_7.6.4.38-1+cuda10.0_amd64.deb
```
