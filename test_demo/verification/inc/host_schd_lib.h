//
// Created by gaomh on 2024/5/8.
//
#ifndef LLVM_HOST_SCHD_LIB_H
#define LLVM_HOST_SCHD_LIB_H

typedef char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;
#define KNL_TSR 1
typedef unsigned long long uint64_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef struct {
  uint32_t c0 : 4;
  uint32_t c1 : 4;
  uint32_t c2 : 4;
  uint32_t c3 : 4;
  uint32_t c4 : 4;
  uint32_t c5 : 4;
  uint32_t c6 : 4;
  uint32_t c7 : 4;
} clist_t;

typedef struct {
  uint32_t task_id;
  uint32_t clist;
  uint32_t task_num_x;
  uint32_t task_num_y;
  uint32_t task_num_z;
  uint32_t rsv0;
  uint32_t PC;
  uint32_t rsv1;
  uint32_t arg[8];
} schd_para_t;

#define SCHD_CTRL   0x20010000  //[RW]
#define SCHD_STATUS 0x20010008  //[RO]
#define SCHD_INF    0x2001000c  //[RO]
#define SCHD_ADDR   0x20010010  //[RW]
#define SCHD_PARA   0x20010050  //[RW]

void push_thread(schd_para_t * m_para);


#endif // LLVM_HOST_SCHD_LIB_H
