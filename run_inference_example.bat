@echo off
echo ==============================================
echo ToothGroupNetwork Inference Script
echo ==============================================
echo.

REM Set the path to the folder containing your 3D .obj files
set INPUT_DIR="replace_with_your_input_folder_path_here"

REM Set the path where you want the prediction .json files to be saved
set SAVE_DIR="results_folder"

REM Set the paths to the model checkpoints (assuming they are in a "ckpts" folder)
set CKPT_FPS="ckpts\tgnet_fps"
set CKPT_BDL="ckpts\tgnet_bdl"

REM Set empty path to ignore the text split path and process EVERYTHING in the INPUT_DIR
set SPLIT_TXT=""

echo Running inference...
echo Input Directory: %INPUT_DIR%
echo Save Directory: %SAVE_DIR%
echo.

python start_inference.py --input_dir_path %INPUT_DIR% --split_txt_path %SPLIT_TXT% --save_path %SAVE_DIR% --model_name tgnet --checkpoint_path %CKPT_FPS% --checkpoint_path_bdl %CKPT_BDL%

echo.
echo ==============================================
echo Inference Finished! Check your results folder.
echo ==============================================
pause