//
// Created by gaomh on 2024/5/12.
//

#ifndef LLVM_SCHD_LIB_H
#define LLVM_SCHD_LIB_H
//typedef char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;

typedef unsigned long long uint64_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;

typedef struct {
  uint32_t ifm_h;
  uint32_t ofm_h;
  uint32_t stride_h;
  uint32_t wt_h;
  uint32_t padding_t;
  uint32_t wt_size;
  uint32_t bc_size;
  uint32_t ifm_line_size;
  uint32_t ofm_line_size;
  uint32_t ifm_tile_line_size;
  uint32_t ofm_tile_line_size;
  uint32_t ifm_tile_offset;
  uint32_t ofm_tile_offset;
  uint32_t tsr_arg[16];
}convpara_t;

typedef struct {
  uint32_t x;
  uint32_t y;
  uint32_t z;
} task_num_t;

int conv3s1(convpara_t* convpara, uint32_t wt_addr, uint32_t bc_addr, uint32_t ifm_addr, uint32_t efm_addr, uint32_t ofm_addr);
#endif // LLVM_SCHD_LIB_H
