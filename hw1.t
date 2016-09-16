#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x179ddc0 .scope module, "demorgan_test" "demorgan_test" 2 3;
 .timescale 0 0;
v0x17d1940_0 .var "A", 0 0;
v0x17d1a10_0 .var "B", 0 0;
v0x17d1ac0_0 .net "nA", 0 0, L_0x17d1d00; 1 drivers
v0x17d1b70_0 .net "nAandnB", 0 0, L_0x17d1f00; 1 drivers
v0x17d1c50_0 .net "nB", 0 0, L_0x17d1e00; 1 drivers
S_0x17bdf20 .scope module, "dut" "demorgan" 2 9, 3 1, S_0x179ddc0;
 .timescale 0 0;
L_0x17d1d00 .functor NOT 1, v0x17d1940_0, C4<0>, C4<0>, C4<0>;
L_0x17d1e00 .functor NOT 1, v0x17d1a10_0, C4<0>, C4<0>, C4<0>;
L_0x17d1f00 .functor AND 1, L_0x17d1d00, L_0x17d1e00, C4<1>, C4<1>;
v0x17be010_0 .net "A", 0 0, v0x17d1940_0; 1 drivers
v0x17d16b0_0 .net "B", 0 0, v0x17d1a10_0; 1 drivers
v0x17d1750_0 .alias "nA", 0 0, v0x17d1ac0_0;
v0x17d17f0_0 .alias "nAandnB", 0 0, v0x17d1b70_0;
v0x17d18a0_0 .alias "nB", 0 0, v0x17d1c50_0;
    .scope S_0x179ddc0;
T_0 ;
    %vpi_call 2 12 "$display", "A B | ~A ~B | ~A~B ";
    %set/v v0x17d1940_0, 0, 1;
    %set/v v0x17d1a10_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 14 "$display", "%b %b |  %b  %b |    %b ", v0x17d1940_0, v0x17d1a10_0, v0x17d1ac0_0, v0x17d1c50_0, v0x17d1b70_0;
    %set/v v0x17d1940_0, 0, 1;
    %set/v v0x17d1a10_0, 1, 1;
    %delay 1, 0;
    %vpi_call 2 16 "$display", "%b %b |  %b  %b |    %b ", v0x17d1940_0, v0x17d1a10_0, v0x17d1ac0_0, v0x17d1c50_0, v0x17d1b70_0;
    %set/v v0x17d1940_0, 1, 1;
    %set/v v0x17d1a10_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 18 "$display", "%b %b |  %b  %b |    %b ", v0x17d1940_0, v0x17d1a10_0, v0x17d1ac0_0, v0x17d1c50_0, v0x17d1b70_0;
    %set/v v0x17d1940_0, 1, 1;
    %set/v v0x17d1a10_0, 1, 1;
    %delay 1, 0;
    %vpi_call 2 20 "$display", "%b %b |  %b  %b |    %b ", v0x17d1940_0, v0x17d1a10_0, v0x17d1ac0_0, v0x17d1c50_0, v0x17d1b70_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "hw1.t.v";
    "./hw1.v";
