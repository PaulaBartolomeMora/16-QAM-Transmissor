@echo off
REM ****************************************************************************
REM Vivado (TM) v2017.4 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sat Nov 18 13:58:44 +0100 2023
REM SW Build 2086221 on Fri Dec 15 20:55:39 MST 2017
REM
REM Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
call xelab  -wto fa628f42c5f4497dafeea3dc78a09eaf --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_mapeado_16QAM_behav xil_defaultlib.tb_mapeado_16QAM -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
