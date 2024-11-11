#include <stdint.h>



// #define tran_instr(pc,arg,arg_cnt,mrd,mrs,mrs_cnt) {\
//     for(int i=0; i<arg_cnt; i+=2) {\
//         c_mco_arg(i, arg[i], arg[i+1]);\
//     }\
//     for(int i=0; i<mrs_cnt; i+=2) {\
//         c_mco_reg(i, mrs[i].idx, mrs[i+1].idx, mrs[0].core);\
//     }\
//     tran(mrd,void *);\
// }


// #define tran_instr(pc,arg,arg_cnt,mrd,mrs,nrs_cnt) {\
//         for(int i=0; i<arg_cnt; i+=2) {\
//             store(pc,mrd);\
//         }}



typedef __attribute__((__vector_size__(2 * sizeof(int)))) int32_t mr_type;//__attribute__((__vector_size__(2 * sizeof(int))))

typedef __attribute__((__vector_size__(4 * sizeof(int)))) int32_t mr_type2;//__attribute__((__vector_size__(2 * sizeof(int))))




#define __aio                                                                  \
  static __inline__                                                            \
      __attribute__((__always_inline__, __nodebug__, __overloadable__))

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcoarg)))
void arg(uint32_t,uint32_t);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcoregOP_M0)))
void regOP(mr_type,mr_type);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcoregOP_M1)))
void regOP(mr_type2,mr_type2);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcoreg_M0)))
void reg(mr_type,mr_type);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcoreg_M1)))
void reg(mr_type2,mr_type2);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcoload_M0)))
void load(mr_type,void *);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcoload_M1)))
void load(mr_type2,void *);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcoloado_M0)))
void loadO(mr_type,void *);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcoloado_M1)))
void loadO(mr_type2,void *);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcoloadp_M0)))
void loadP(mr_type,void *);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcoloadp_M1)))
void loadP(mr_type2,void *);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcomove_M0)))
void move(mr_type,mr_type);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcomove_M1)))
void move(mr_type2,mr_type2);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcoconv_M0)))
void conv(mr_type,mr_type,mr_type,mr_type);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcoconv_M0_test)))
void conv(mr_type, uint32_t*,  mr_type, mr_type, mr_type, mr_type, mr_type);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcotran_M0)))
void tran(mr_type,void *);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcotran_M1)))
void tran(mr_type2,void *);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcocore_M0)))
void core(mr_type,void *);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcocore_M1)))
void core(mr_type2,void *);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcostore_M0)))
void store(void *,mr_type);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mcostore_M1)))
void store(void *,mr_type2);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_alloc_M0)))
mr_type new_M0(int);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_alloc_M1)))
mr_type2 new_M1(int);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_alloc_M0O)))
mr_type new_M0O(int);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_alloc_M1O)))
mr_type2 new_M1O(int);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_alloc_M0P)))
mr_type new_M0P(int);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_alloc_M1P)))
mr_type2 new_M1P(int);

__aio __attribute__((clang_builtin_alias(__builtin_riscv_hpu700_mco16args)))
void arg16(uint32_t,uint32_t,uint32_t,uint32_t,
               uint32_t,uint32_t,uint32_t,uint32_t,
               uint32_t,uint32_t,uint32_t,uint32_t,
               uint32_t,uint32_t,uint32_t,uint32_t);

// __aio __attribute__((__clang_riscv_builtin_alias(__builtin_riscv_hpu700_mcoload_M1)))
// mr_type2 intrinsic_wrapper(int, int);
