@REM win10锁屏壁纸导出脚本,默认保存在系统盘根目录下的pics内，修改picdir变量可变更保存路径。
@REM Automatically export win10 lock screen wallpaper
set picdir=%SystemDrive%\pics
if not exist %picdir% (md %picdir%) else (rd /s /Q %picdir% && md %picdir%)
cd /d %userprofile%
for /r /d %%i in (*Windows.Content*) do cd /d %%i\LocalState\Assets
copy * %picdir%
cd /d %picdir%
rename * *.jpg
cd /
start %picdir%
