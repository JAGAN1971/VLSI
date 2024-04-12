Warning-[LINX_KRNL] Unsupported Linux kernel
  Linux kernel '5.4.0-153-generic' is not supported.
  Supported versions are 2.4* or 2.6*.

                         Chronologic VCS (TM)
            Version S-2021.09 -- Fri Apr 12 03:43:32 2024

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
       packed_array
TimeScale is 1 ns / 1 ns
Starting vcs inline pass...

1 module and 0 UDP read.
recompiling module packed_array
rm -f _cuarc*.so _csrc*.so pre_vcsobj_*.so share_vcsobj_*.so
if [ -x ../simv ]; then chmod a-x ../simv; fi
g++  -o ../simv      -m32 -m32 -rdynamic  -Wl,-rpath='$ORIGIN'/simv.daidir -Wl,-rpath=./simv.daidir -Wl,-rpath=/apps/vcsmx/vcs/S-2021.09/linux/lib -L/apps/vcsmx/vcs/S-2021.09/linux/lib  -Wl,-rpath-link=./ -Wl,--no-as-needed   objs/amcQw_d.o   _322_archive_1.so  SIM_l.o       rmapats_mop.o rmapats.o rmar.o rmar_nd.o  rmar_llvm_0_1.o rmar_llvm_0_0.o           -lvirsim -lerrorinf -lsnpsmalloc -lvfs    -lvcsnew -lsimprofile -luclinative /apps/vcsmx/vcs/S-2021.09/linux/lib/vcs_tls.o   -Wl,-whole-archive  -lvcsucli    -Wl,-no-whole-archive          /apps/vcsmx/vcs/S-2021.09/linux/lib/vcs_save_restore_new.o /apps/vcsmx/vcs/S-2021.09/linux/lib/ctype-stubs_32.a -ldl  -lc -lm -lpthread -ldl 
../simv up to date
CPU time: .274 seconds to compile + .389 seconds to elab + .355 seconds to link
Chronologic VCS simulator copyright 1991-2021
Contains Synopsys proprietary information.
Compiler version S-2021.09; Runtime version S-2021.09;  Apr 12 03:43 2024

/example for single dimensional packed array

//display the bit data type value 
data of abc[3] = 0
data of abc[2] = 1
data of abc[1] = 1
data of abc[0] = 0

data of pqr[15] = 0
data of pqr[14] = 0
data of pqr[13] = 0
data of pqr[12] = 1
data of pqr[11] = 0
data of pqr[10] = 0
data of pqr[9] = 0
data of pqr[8] = 0
data of pqr[7] = 1
data of pqr[6] = 1
data of pqr[5] = 1
data of pqr[4] = 1
data of pqr[3] = 1
data of pqr[2] = 1
data of pqr[1] = 1
data of pqr[0] = 0

data of xyz[7] = 0
data of xyz[6] = 0
data of xyz[5] = 0
data of xyz[4] = 1
data of xyz[3] = 0
data of xyz[2] = 0
data of xyz[1] = 0
data of xyz[0] = 0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.600 seconds;       Data structure size:   0.0Mb
Fri Apr 12 03:43:34 2024
