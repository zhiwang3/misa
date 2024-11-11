#include "misa.h"
// #define LOAD(A,B) __builtin_riscv_hpu700_mcoload_use_M0(A,B)
// define a struct to express the params used

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

// let the demo simplest
int new_conv3x3(convpara_t* convpara, void *p_ifm, void *p_ofm, void *p_wt, void *p_bc){

    // define mcro register for fm
    mr_type linezero=new_M0(0);
    mr_type line_1 = new_M0(convpara->ifm_line_size);
    mr_type line_2 = new_M0(convpara->ifm_line_size);
    mr_type line_3 = new_M0(convpara->ifm_line_size);
    mr_type line_o = new_M0(convpara->ofm_line_size);
    // define mcro register for wt and bc
    // TODO: alias wt_size no need to -1
    // TODO: need to config loado and loadp
    //mr_type wt = new_M0(convpara->wt_size);
    mr_type wt = new_M0O(convpara->wt_size);
    //mr_type bc = new_M0(convpara->bc_size);
    mr_type bc = new_M0P(convpara->bc_size);

    // load wt and bc
    loadO(wt, (void*)p_wt);
    loadP(bc, (void*)p_bc);

    // init load fm
    load(line_2 , (void*)(p_ifm + 0 * convpara->ifm_line_size));
    load(line_3 , (void*)(p_ifm + 1 * convpara->ifm_line_size));
    conv(line_o, convpara->tsr_arg, wt, bc, linezero, line_2, line_3);

    // for(int i = 0; i < convpara->ofm_h; i = i + convpara->stride_h){
    //   if(i == 0){
    //     conv(line_o, convpara->tsr_arg, wt, bc, linezero, line_2, line_3);
    //     //conv(line_o, wt, bc, linezero, line_2, line_3);
    //   }
    //   if(i == convpara->ofm_h - 1){
    //     conv(line_o, convpara->tsr_arg, wt, bc, line_1, line_2, linezero);
    //     //conv(line_o, wt, bc, line_1, line_2, linezero);
    //   }
    //   if(i > 0 && i < convpara->ofm_h - 1){
    //     conv(line_o, convpara->tsr_arg, wt, bc, line_1, line_2, line_3);
    //     //conv(line_o, convpara->tsr_arg, wt, bc, line_1, line_2, line_3);
    //   }
    //
    //   store((void*)(p_ofm + convpara->ofm_line_size * i), line_o);
    //   move(line_1, line_2);
    //   move(line_2, line_3);
    //   if(i < convpara->ofm_h - 1){
    //     load(line_3, (void*)(p_ifm + (i + 2) * convpara->ifm_line_size));
    //   }
    // }
    return 0;
  }
