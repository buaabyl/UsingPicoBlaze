// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/xec_libs/data/simprims/ffsrced.v,v 1.1 2005/05/10 01:20:02 wloo Exp $
`celldefine
primitive ffsrced (q, clk, d, ce, set, rst, notifier);

  output q; reg q;
  input clk, d, ce, set, rst, notifier;

  table

    //   clk    d     ce   set   rst   notifier    q     q+;

         (01)   0      1    0     0       ?    :   ?  :  0;
         (01)   1      1    0     0       ?    :   ?  :  1;
         (01)   x      1    0     0       ?    :   ?  :  x;
         (01)   0      x    0     0       ?    :   0  :  0;
         (01)   1      x    0     0       ?    :   1  :  1;

         (10)   0      1    0     0       ?    :   ?  :  0;
         (10)   1      1    0     0       ?    :   ?  :  1;
         (10)   x      1    0     0       ?    :   ?  :  x;
         (10)   0      x    0     0       ?    :   0  :  0;
         (10)   1      x    0     0       ?    :   1  :  1;

         (??)   ?      0    0     0       ?    :   ?  :  -;

          ?     ?      ?    1     0       ?    :   ?  :  1;
          ?     ?      ?    ?     1       ?    :   ?  :  0;
          ?     ?      ?    0     x       ?    :   0  :  0;
         (01)   0      1    0     x       ?    :   ?  :  0;
         (10)   0      1    0     x       ?    :   ?  :  0;
          ?     ?      ?    x     0       ?    :   1  :  1;
         (01)   1      1    x     0       ?    :   ?  :  1;
         (10)   1      1    x     0       ?    :   ?  :  1;

          ?    (??)    ?    0     0       ?    :   ?  :  -;
          ?     ?    (??)   0     0       ?    :   ?  :  -;
          ?     ?      ?   (?0)   ?       ?    :   ?  :  -;
          ?     ?      ?    ?    (?0)     ?    :   ?  :  -;

          ?     ?      ?    ?     ?       *    :   ?  :  x;

  endtable

endprimitive