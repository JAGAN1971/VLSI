Warning-[LINX_KRNL] Unsupported Linux kernel
  Linux kernel '5.4.0-152-generic' is not supported.
  Supported versions are 2.4* or 2.6*.

                         Chronologic VCS (TM)
            Version S-2021.09 -- Fri Apr 12 13:56:35 2024

                    Copyright (c) 1991 - 2021 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
   or distribution of this software is strictly prohibited.  Licensed Products
     communicate with Synopsys servers for the purpose of providing software
    updates, detecting software piracy and verifying that customers are using
    Licensed Products in conformity with the applicable License Key for such
  Licensed Products. Synopsys will use information gathered in connection with
    this process to deliver software updates and pursue software pirates and
                                   infringers.

 Inclusivity & Diversity - Visit SolvNetPlus to read the "Synopsys Statement on
            Inclusivity and Diversity" (Refer to article 000036315 at
                        https://solvnetplus.synopsys.com)

Parsing design file 'design.sv'
Parsing design file 'testbench.sv'
Top Level Modules:
       datatype1
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module datatype1
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -m32 -m32 -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/S-2021.09/linux/lib -L/apps/vcsmx/vcs/S-2021.09/linux/lib  -Wl,-rpath-link=./ -Wl,--no-as-needed   objs/amcQw_d.o   _321_archive_1.so  SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o           -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/S-2021.09/linux/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/S-2021.09/linux/lib/vcs_save_restore_new.o /apps/vcsmx/vcs/S-2021.09/linux/lib/ctype-stubs_32.a -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .251 seconds to compile + .371 seconds to elab + .344 seconds to link
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 12 13:56 2024

  
a = xxzzffff b1 = -1 c = f0f0 d = ffff0000ffff0000


l1 = 255 sl1 = -1 bl1 = -1 r1 = xzxz0101


$finish called from file "design.sv", line 33.
$finish at simulation time                   20
           V C S   S i m u l a t i o n   R e p o r t 
Time: 20 ns
CPU Time:      0.680 seconds;       Data structure size:   0.0Mb
Fri Apr 12 13:56:37 2024
