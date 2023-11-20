@echo off
REM ****************************************************************************
REM Vivado (TM) v2017.4 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Fri Nov 17 13:46:16 +0100 2023
REM SW Build 2086221 on Fri Dec 15 20:55:39 MST 2017
REM
REM Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
call xelab  -wto e06165ee33124632814c5567ac626386 --debug typical --relax --mt 2 -L xil_defaultlib -L xlslice_v1_0_1 -L fifo_generator_v13_2_1 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot prueba_xadc_tb_behav xil_defaultlib.prueba_xadc_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
