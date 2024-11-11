#include "../inc/schd_core_lib.h"
#include "../inc/schd_lib.h"
// #define LOAD(A,B) __builtin_riscv_hpu700_mcoload_use_M0(A,B)
// define a struct to express the params used


// let the demo simplest
int conv3s1(convpara_t* convpara, uint32_t wt_addr, uint32_t bc_addr, uint32_t ifm_addr, uint32_t efm_addr, uint32_t ofm_addr, mco_reg_size_addr){

  // define mcro register for fm
  mr_type linezero = new_M0(convpara->ifm_line_size - 1);
  mr_type line_1 = new_M0(convpara->ifm_line_size - 1);
  mr_type line_2 = new_M0(convpara->ifm_line_size - 1);
  mr_type line_3 = new_M0(convpara->ifm_line_size - 1);
  mr_type line_o = new_M0(convpara->ofm_line_size - 1);

  //mr_type wt = new_M0(convpara->wt_size);
  mr_type wt = new_M0O(convpara->wt_size - 1);
  //mr_type bc = new_M0(convpara->bc_size);
  mr_type bc = new_M0P(convpara->bc_size - 1);

  uint32_t* p_ifm = &ifm_addr;
  uint32_t* p_ofm = &ofm_addr;
  uint32_t* p_efm = &efm_addr;
  uint32_t* p_wt = &wt_addr;
  uint32_t* p_bc = &bc_addr;

  // load wt and bc
  loadO(wt, (void*)p_wt);
  loadP(bc, (void*)p_bc);

  // init load fm
  load(line_2 , (void*)p_ifm);
  p_ifm +=  convpara->ifm_line_size;
  load(line_3 , (void*)p_ifm);
  p_ifm +=  convpara->ifm_line_size;

 for(int i = 0; i < convpara->ofm_h; i = i + convpara->stride_h){
   if(i == convpara->ofm_h - 1){
     move(line_3, linezero);
   }
   conv(line_o, convpara->tsr_arg, wt, bc, line_1, line_2, line_3);
   store((void*)p_ofm, line_o);
   p_ofm +=  convpara->ofm_line_size;
   move(line_1, line_2);
   move(line_2, line_3);
   if(i < convpara->ofm_h - 1){
     load(line_3, (void*)p_ifm);
     p_ifm +=  convpara->ifm_line_size;
   }
 }
  return 0;
}
