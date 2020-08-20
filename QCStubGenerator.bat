set project_path=C:\Projects\QuantConnect\JoeYuZhou\ironpython-stubs
set ironpython_path=E:\Projects\QuantConnect\IronPythonNew\ironpython2\bin\Debug\net45
cd %project_path%\release\stubs\QuantConnect
DEL /f /q /s *.* > NUL
cd ..
rmdir /q /s QuantConnect
cd ..
cd ..
%ironpython_path%\ipy -X:FullFrames -m ironstubs make --all --keep-partial
python -m stubsGenerator --path=%project_path%\\release\stubs\QuantConnect --partition


