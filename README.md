# Step 1. Install Dependencies

macro ISA requires the following dependencies:

•	CMake (>= 3.24.0)

•	Git

•	GCC 7.1

•	Clang 5.0

•	Python (>= 3.8)

To easiest way to manage dependency is via conda, which maintains a set of toolchains including TVM and LLVM across platforms. 

# Step 2. Get Source from Github

You can also choose to clone the source repo from github.

```
>>> git clone https://github.com/zhiwang3/misa.git
```

# Step 3. Configure and Build

Create a build directory and run CMake to configure the build. The following example shows how to build

```
>>> cd misa
>>> rm -rf build && mkdir build && cd build
```

# Step 4. Construct a Simple Model

```c
#include "misa.h"

Tile_Shape tile_shape(64, 64, 16)

int ofm_addr, ifm_addr, wt_addr;
int stride = 1;
int kernel_size = 3;
int padding_size = 1;
char padding_type = 'zero'
args_type args_param;

mr_type(args_param, stride, kernel_size, padding_size, padding_type);

int conv_test(*Tile_Shape tile_shape, int* ofm_addr, int* ifm_addr, int* wt_addr, args_type* args_param){

    conv3x3<<<tile_shape>>>(ofm_addr, ifm_addr, wt_addr, args_param);

    return ofm_addr;
}

```



NOTE: During the model compilation process, TVM uses LLVM for low-level code generation and cross-platform support across multiple hardware architectures. To enable support for our FPGA accelerator, we made modifications to the LLVM, so the project includes a customized version of the LLVM framework.