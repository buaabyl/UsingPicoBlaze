`celldefine
primitive latchsr (q, clk, d, set, rst, notifier);

  output q; reg q;
  input clk, d, set, rst, notifier;

  table

    //   clk    d   set   rst  notifier   q     q+;

          1     0    0     0      ?   :   ?  :  0;
          1     1    0     0      ?   :   ?  :  1;
          0     ?    0     0      ?   :   ?  :  -;
          x     0    0     x      ?   :   0  :  -;
          x     1    0     x      ?   :   1  :  -;
          ?     ?    1     0      ?   :   ?  :  1;
          ?     ?    ?     1      ?   :   ?  :  0;
          0     ?    0     x      ?   :   0  :  0;
          1     0    0     x      ?   :   ?  :  0;
          0     ?    x     0      ?   :   1  :  1;
          1     1    x     0      ?   :   ?  :  1;
          ?     ?    ?     ?      *   :   ?  :  x;

  endtable

endprimitive
