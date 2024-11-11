//
// Created by gaomh on 2024/5/8.
#include "../inc/host_schd_lib.h"
#include "../inc/schd_lib.h"

task_num_t g_task_num;
clist_t g_typ;
uint32_t task_id;
schd_para_t dst_para;
convpara_t convpara;
uint32_t wt_addr;
uint32_t bc_addr;
uint32_t ifm_addr;
uint32_t efm_addr;
uint32_t ofm_addr;

const int ENTRY_conv3s1 = 0x80000000;
//const int ENTRY_schd_conv2d_k1 = 0x80000000;
//const int ENTRY_schd_conv2d_k3 = 0x80000004;
// uint32_t ENTRY_TABLE[16] = {ENTRY_schd_conv2d_k1, ENTRY_schd_conv2d_k3, 0};

//#pragma CODE_SECTION(_INIT0, ".text.init")
__attribute__ ((section (".text.init"))) void _INIT0() {
  asm volatile(
      "j main" : : :
  );
}

void push_thread(schd_para_t * m_para) {
  int32_t i;
  volatile schd_para_t* schd_para = (schd_para_t *)SCHD_PARA;
  volatile uint32_t* schd_ctrl = (uint32_t *)SCHD_CTRL;
  // set SCHD thread param
  schd_para->task_id = m_para->task_id;
  schd_para->clist = m_para->clist;
  schd_para->task_num_x = m_para->task_num_x;
  schd_para->task_num_y = m_para->task_num_y;
  schd_para->task_num_z = m_para->task_num_z;
  schd_para->PC = m_para->PC;
  for(i=0; i<8; i++) {
    schd_para->arg[i] = m_para->arg[i];
  }
  // push current thread
  asm volatile("fence");
  *schd_ctrl = 1;
}

void main() {

  //[M] __schd_intf__ <task.z, task.y. task.x> <<ts.num, vec.num>> schd_conv2d_k3(convpara_t * convpara, uint32_t wt_addr,
  //[M]     uint32_t bc_addr, uint32_t ifm_addr, uint32_t efm_addr, uint32_t ofm_addr);

  g_task_num.x=3; g_task_num.y=0; g_task_num.z=0;
  g_typ.c0 = KNL_TSR;
  task_id = 0x2333;
  dst_para.task_id = task_id;
  dst_para.clist = *((uint32_t *)(&g_typ));
  dst_para.task_num_x = g_task_num.x;
  dst_para.task_num_y = g_task_num.y;
  dst_para.task_num_z = g_task_num.z;
  dst_para.PC = (uint32_t)ENTRY_conv3s1;
  dst_para.arg[0] = (uint32_t)&convpara;
  dst_para.arg[1] = wt_addr;
  dst_para.arg[2] = bc_addr;
  dst_para.arg[3] = ifm_addr;
  dst_para.arg[4] = efm_addr;
  dst_para.arg[5] = ofm_addr;
  push_thread(&dst_para);

  task_id = 0x2334;
  push_thread(&dst_para);

  while(1);
}

