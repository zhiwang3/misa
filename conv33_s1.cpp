// #include <iostream>

typedef __attribute__((__vector_size__(2 * sizeof(int)))) int mr_type;//__attribute__((__vector_size__(2 * sizeof(int))))

typedef struct {
    // uint32_t ifm_h;
    // uint32_t ifm_w;
    // uint32_t ifm_c;
    // uint32_t ofm_c;
    // uint32_t ofm_h;
    // uint32_t ofm_w;
    // uint32_t k_h;
    // uint32_t k_w;
    // uint32_t k_c;
    int ifm_h;
    int ifm_w;
    int ifm_c;
    int ofm_c;
    int ofm_h;
    int ofm_w;
    int k_h;
    int k_w;
    int k_c;
} conv_shape_t;

// 以下两种情况只向左、上补padding
// if(ofm_w % 2 == 0 && w_strd == 2 && k_w == 3)
// {
//     pshape.top = 0;
//     pshape.left = 1;
//     pshape.bottom = 0;
//     pshape.right = 0;
// }

// if(ofm_h % 2 == 0 && h_strd == 2 && k_h == 3)
// {
//     pshape.top = 1;
//     pshape.left = 0;
//     pshape.bottom = 0;
//     pshape.right = 0;
// }

typedef struct {
    // uint8_t top;
    // uint8_t bottom;
    // uint8_t left;
    // uint8_t right;
    int top;
    int bottom;
    int left;
    int right;
} pad_shape_t;

typedef struct {
    // uint8_t w_strd;
    // uint8_t h_strd;
    int w_strd;
    int h_strd;
} stride_shape_t;

typedef struct {
    // uint8_t w_dilat;
    // uint8_t h_dilat;
    int w_dilat;
    int h_dilat;
} dilate_shape_t;

typedef struct {
    // uint32_t grp_num;
    int grp_num;
} chn_group_t;

typedef struct {
    conv_shape_t   cshape;
    pad_shape_t    pshape;
    stride_shape_t strd_shape;
    dilate_shape_t dilat_shape;
    chn_group_t    cgroup_num;
    // uint32_t       relu; // true: conv + bn + relu(0/1); false: conv + bn
    int       relu;
} conv2d_params_t;

void conv3x3_s1(char *p_ifm, char *p_ofm, char *p_wt, char *p_bs, conv2d_params_t *conv_param)
{
    mr_type ifm_l_0;//, ifm_l_1, ifm_l_2;
    mr_type ofm_l;//=*((mr_type *)p_ifm);
    //mr_type wt, bs;
    //mr_type empty;
     int ifm_l_sz = conv_param->cshape.ifm_c * conv_param->cshape.ifm_w;
     int ofm_l_sz = conv_param->cshape.ofm_c * conv_param->cshape.ofm_w;
    // int wt_sz=conv_param->cshape.ofm_c * conv_param->cshape.k_w * conv_param->cshape.k_h * conv_param->cshape.k_c;
    ifm_l_0=__builtin_riscv_alloc_mr(ifm_l_sz,conv_param->strd_shape.w_strd,ifm_l_0);         //def MR1
    // ifm_l_1=__builtin_riscv_alloc_mr(ifm_l_sz,ifm_l_sz,ifm_l_1);         //def MR2
    // ifm_l_2=__builtin_riscv_alloc_mr(ifm_l_sz,ifm_l_sz);         //def MR3
    // __buildin_set_mr_sz(ifm_l_0, ifm_l_sz);                     //def MR1
    // __buildin_set_mr_sz(ifm_l_1, ifm_l_sz);                     //def MR2
    // __buildin_set_mr_sz(ifm_l_2, ifm_l_sz);                     //def MR3
    // result=__builtin_riscv_conv33_s1(ifm_l_sz,ofm_l);
    // ofm_l=__builtin_riscv_alloc_mr(ofm_l_sz,ofm_l_sz);           //def MR4
    // result=__builtin_riscv_conv33_s1(ifm_l_sz,ifm_l_0);
    // result=__builtin_riscv_conv33_s1(ifm_l_sz,ofm_l);
    ofm_l=__builtin_riscv_alloc_mr(ofm_l_sz,conv_param->strd_shape.w_strd,ofm_l);           //def MR4
    // ofm_l=__builtin_riscv_alloc_mr(ofm_l_sz,ofm_l_sz,ofm_l);           //def MR4
    // result=__builtin_riscv_conv33_s1(ifm_l_sz,ifm_l_0);
    // __buildin_set_mr_sz(ofm_l, ofm_c * ofm_w);                  //def MR4

    // wt=__builtin_riscv_alloc_mr(ofm_l_sz,ofm_l_sz);
    // __buildin_set_mr_sz(wt, ofm_c * k_w * k_h * k_c);           //def MR16
    // __buildin_set_mr_sz(bs, ofm_c * ofm_h * ofm_w);             //def MR24
    
    // wt = *(mr_type *)p_wt;                                      //trans.load MR16, p_wt
    // bs = *(mr_type *)p_bs;                                      //trans.load MR24, p_bs
//    ifm_l_0 = *(mr_type *)p_ifm;
//    ifm_l_1 = *((mr_type *)((char *)p_ifm + ifm_l_sz));
//    ofm_l = __buildin_macro_conv_1l(0, ifm_l_0, ifm_l_1, wt, bs);
//    ofm_h_iter ++;
    
    for(int ofm_h_iter = 0; ofm_h_iter < conv_param->cshape.ofm_h; ofm_h_iter++)
    {
        // int tmp_ofm_l_sz=ofm_l_sz;
        // int tmp_ifm_l_sz=ofm_l_sz;
        if(ofm_h_iter != 0)
        {
        //   tmp_ofm_l_sz=0;
        //   tmp_ifm_l_sz=0;
        //   ifm_l_0 = *((mr_type *)(0));
            ifm_l_0 =*((mr_type *)((char *)p_ifm + ifm_l_sz * (ofm_h_iter - 1)));
        // ifm_l_0=__builtin_riscv_alloc_mr(ifm_l_sz,ifm_l_sz,ifm_l_0);
        }
        // else
        // {
        // }
        // ifm_l_0=__builtin_riscv_alloc_mr(ofm_h_iter,tmp_ofm_l_sz); 
        // else
        // {
        //   ifm_l_0 = empty;
        // }
        // ifm_l_0 = (ofm_h_iter == 0)? empty : *((mr_type *)((char *)p_ifm + ifm_l_sz * (ofm_h_iter - 1)));
        // ifm_l_1 = *((mr_type *)((char *)p_ifm + ifm_l_sz * ofm_h_iter));
        // if(ofm_h_iter != conv_param->cshape.ifm_h - 1)
        // {
        // }
        // ifm_l_2 = *((mr_type *)((char *)p_ifm + ifm_l_sz * (ofm_h_iter + 1)));
        // ifm_l_2 = (ofm_h_iter == conv_param->cshape.ifm_h - 1)? empty : *((mr_type *)((char *)p_ifm + ifm_l_sz * (ofm_h_iter + 1)));
        ofm_l=__builtin_riscv_conv33_s1(ifm_l_sz/*this arg is for test*/,ifm_l_0);
        // ofm_l = __buildin_macro_conv_1l(ifm_l_0, ifm_l_1, ifm_l_2, wt, bs);
        *((mr_type *)p_ofm) = ofm_l;
    }
    /*
     * loop 0  liveness list: MR2, MR3, MR4
     *  ifm_l_0 = (ofm_h_iter == 0)? 0 : *((mr_type *)((char *)p_ifm + ifm_l_sz * (ofm_h_iter - 1));                    MR0
        ifm_l_1 = *((mr_type *)((char *)p_ifm + ifm_l_sz * ofm_h_iter));                                                trans.load MR2 addr_ifm_l_0 ifm_l_sz
        ifm_l_2 = (ofm_h_iter == ifm_h - 1)? 0 : *((mr_type *)((char *)p_ifm + ifm_l_sz * (ofm_h_iter + 1));            trans.load MR3 addr_ifm_l_1 ifm_l_sz
        ofm_l = __buildin_macro_conv_1l(ifm_l_0, ifm_l_1, ifm_l_2, wt, bs);                                             macro_conv1 MR4 MR0 MR2 MR3 MR16 MR24
        *((mr_type *))p_ofm = ofm_l;                                                                                    trans.store MR4 addr_ofm_l_0 ofm_l_sz
     *
     *
     *  cache list: addr_ifm_l_0 addr_ifm_l_1 addr_ofm_l_0
     *
     * loop 1  liveness list: MR1, MR2, MR3, MR4
     *  ifm_l_0 = (ofm_h_iter == 0)? 0 : *((mr_type *)((char *)p_ifm + ifm_l_sz * (ofm_h_iter - 1));                    trans.load MR1 addr_ifm_l_0 ifm_l_sz     by hardware cache
        ifm_l_1 = *((mr_type *)((char *)p_ifm + ifm_l_sz * ofm_h_iter));                                                trans.load MR2 addr_ifm_l_1 ifm_l_sz     by hardware cache
        ifm_l_2 = (ofm_h_iter == ifm_h - 1)? 0 : *((mr_type *)((char *)p_ifm + ifm_l_sz * (ofm_h_iter + 1));            trans.load MR3 addr_ifm_l_2 ifm_l_sz
        ofm_l = __buildin_macro_conv_1l(ifm_l_0, ifm_l_1, ifm_l_2, wt, bs);                                             macro_conv1 MR4 MR1 MR2 MR3 MR16 MR24
        *((mr_type *))p_ofm = ofm_l;                                                                                    trans.store MR4 addr_ofm_l_1 ofm_l_sz
     *
     *
     *  cache list: addr_ifm_l_0 addr_ifm_l_1 addr_ofm_l_0 addr_ifm_l_2 addr_ofm_l_1
     *
     * loop 2  liveness list: MR1, MR2, MR3, MR4
     *  ifm_l_0 = (ofm_h_iter == 0)? 0 : *((mr_type *)((char *)p_ifm + ifm_l_sz * (ofm_h_iter - 1));                    trans.load MR1 addr_ifm_l_1 ifm_l_sz     by hardware cache
        ifm_l_1 = *((mr_type *)((char *)p_ifm + ifm_l_sz * ofm_h_iter));                                                trans.load MR2 addr_ifm_l_2 ifm_l_sz     by hardware cache
        ifm_l_2 = (ofm_h_iter == ifm_h - 1)? 0 : *((mr_type *)((char *)p_ifm + ifm_l_sz * (ofm_h_iter + 1));            trans.load MR3 addr_ifm_l_3 ifm_l_sz
        ofm_l = __buildin_macro_conv_1l(ifm_l_0, ifm_l_1, ifm_l_2, wt, bs);                                             macro_conv1 MR4 MR1 MR2 MR3 MR16 MR24
        *((mr_type *))p_ofm = ofm_l;                                                                                    trans.store MR4 addr_ofm_l_2 ofm_l_sz
     *
     *
     *  cache list: addr_ifm_l_0 addr_ifm_l_1 addr_ofm_l_0 addr_ifm_l_2 addr_ofm_l_1 addr_ifm_l_3 addr_ofm_l_2
     *
     * loop 3  liveness list: MR1, MR2, MR3, MR4
     *  ifm_l_0 = (ofm_h_iter == 0)? 0 : *((mr_type *)((char *)p_ifm + ifm_l_sz * (ofm_h_iter - 1));                    trans.load MR1 addr_ifm_l_2 ifm_l_sz     by hardware cache
        ifm_l_1 = *((mr_type *)((char *)p_ifm + ifm_l_sz * ofm_h_iter));                                                trans.load MR2 addr_ifm_l_3 ifm_l_sz     by hardware cache
        ifm_l_2 = (ofm_h_iter == ifm_h - 1)? 0 : *((mr_type *)((char *)p_ifm + ifm_l_sz * (ofm_h_iter + 1));            trans.load MR3 addr_ifm_l_4 ifm_l_sz
        ofm_l = __buildin_macro_conv_1l(ifm_l_0, ifm_l_1, ifm_l_2, wt, bs);                                             macro_conv1 MR4 MR1 MR2 MR3 MR16 MR24
        *((mr_type *))p_ofm = ofm_l;                                                                                    trans.store MR4 addr_ofm_l_3 ofm_l_sz
     *
     *  cache list: addr_ifm_l_1 addr_ofm_l_0 addr_ifm_l_2 addr_ofm_l_1 addr_ifm_l_3 addr_ofm_l_2 addr_ifm_l_4 addr_ofm_l_3
     *
     * loop 4  liveness list: MR1, MR2, MR3, MR4
     *  ifm_l_0 = (ofm_h_iter == 0)? 0 : *((mr_type *)((char *)p_ifm + ifm_l_sz * (ofm_h_iter - 1));                    trans.load MR1 addr_ifm_l_3 ifm_l_sz     by hardware cache
        ifm_l_1 = *((mr_type *)((char *)p_ifm + ifm_l_sz * ofm_h_iter));                                                trans.load MR2 addr_ifm_l_4 ifm_l_sz     by hardware cache
        ifm_l_2 = (ofm_h_iter == ifm_h - 1)? 0 : *((mr_type *)((char *)p_ifm + ifm_l_sz * (ofm_h_iter + 1));            trans.load MR3 addr_ifm_l_5 ifm_l_sz
        ofm_l = __buildin_macro_conv_1l(ifm_l_0, ifm_l_1, ifm_l_2, wt, bs);                                             macro_conv1 MR4 MR1 MR2 MR3 MR16 MR24
        *((mr_type *))p_ofm = ofm_l;                                                                                    trans.store MR4 addr_ofm_l_4 ofm_l_sz
     *
     *  cache list: addr_ifm_l_2 addr_ofm_l_1 addr_ifm_l_3 addr_ofm_l_2 addr_ifm_l_4 addr_ofm_l_3 addr_ifm_l_5 addr_ofm_l_4
     *
     *  loop 5  liveness list: MR1, MR2, MR3, MR4
     *  ifm_l_0 = (ofm_h_iter == 0)? 0 : *((mr_type *)((char *)p_ifm + ifm_l_sz * (ofm_h_iter - 1));                    trans.load MR1 addr_ifm_l_4 ifm_l_sz     by hardware cache
        ifm_l_1 = *((mr_type *)((char *)p_ifm + ifm_l_sz * ofm_h_iter));                                                trans.load MR2 addr_ifm_l_5 ifm_l_sz     by hardware cache
        ifm_l_2 = (ofm_h_iter == ifm_h - 1)? 0 : *((mr_type *)((char *)p_ifm + ifm_l_sz * (ofm_h_iter + 1));            trans.load MR3 addr_ifm_l_6 ifm_l_sz
        ofm_l = __buildin_macro_conv_1l(ifm_l_0, ifm_l_1, ifm_l_2, wt, bs);                                             macro_conv1 MR4 MR1 MR2 MR3 MR16 MR24
        *((mr_type *))p_ofm = ofm_l;                                                                                    trans.store MR4 addr_ofm_l_5 ofm_l_sz
     *
     *  cache list: addr_ifm_l_3 addr_ofm_l_2 addr_ifm_l_4 addr_ofm_l_3 addr_ifm_l_5 addr_ofm_l_4 addr_ifm_l_6 addr_ofm_l_5
     */

}