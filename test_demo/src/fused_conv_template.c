#include "misa.h"
// #define LOAD(A,B) __builtin_riscv_hpu700_mcoload_use_M0(A,B)


int conv3x3(void *p_ifm, int  line_sz_ifm, 
            void *p_ofm, int  line_sz_ofm,
						int line_cnt)
{
	mr_type linezero=new_M0(0);
	mr_type line_1=new_M0(line_sz_ifm);
	mr_type line_2=new_M0(line_sz_ifm);
	mr_type line_3=new_M0(line_sz_ifm);
	mr_type line_o=new_M0(line_sz_ofm);
	
	load(line_2,(void*)(p_ifm+0*line_sz_ifm));
	load(line_3,(void*)(p_ifm+1*line_sz_ifm));
	
	for (int line_idx = 0; line_idx < line_cnt; line_idx++)
	{
		if(line_idx==0)
			conv(line_o,linezero,line_2,line_3);
		if(line_idx==line_cnt-1)
			conv(line_o,line_1,line_2,linezero);
		if(line_idx>0&&line_idx<line_cnt-1)
			conv(line_o,line_1,line_2,line_3);
		store((void*)(p_ofm+line_idx*line_sz_ofm),line_o);
		move(line_1,line_2);
		move(line_2,line_3);
		if(line_idx<line_cnt-1)
		{
			load(line_3,(void*)(p_ifm+(line_idx+2)*line_sz_ifm));
		}
	}
	return 0;
}

int conv3x3_2(void *p_ifm, int  line_sz_ifm, 
							void *p_ofm, int  line_sz_ofm,
							int line_cnt)
{
	mr_type line[4];
	line[0]=new_M0(0);
	line[1]=new_M0(line_sz_ifm);
	line[2]=new_M0(line_sz_ifm);
	line[3]=new_M0(line_sz_ofm);
	load(line[1],(void*)(p_ifm+0*line_sz_ifm));
	load(line[2],(void*)(p_ifm+1*line_sz_ifm));
	for (int line_idx = 0; line_idx < line_cnt; line_idx++)
	{
		if(line_idx==line_cnt-1)
			line[2]=new_M0(0);
		conv(line[3],line[0],line[1],line[2]);
		if(line_idx==0)
			line[0]=new_M0(line_sz_ifm);

		store((void*)(p_ofm+line_idx*line_sz_ofm),line[2]);
		move(line[0],line[1]);
		move(line[1],line[2]);
		if(line_idx<line_cnt-1)
		{
			load(line[2],(void*)(p_ifm+(line_idx+2)*line_sz_ifm));
		}
	}
	return 0;
}