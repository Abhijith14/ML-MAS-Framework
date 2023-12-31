@echo off
REM (C) University of Aberdeen
REM Abhijith Udayakumar
echo 1.Downloading the LAV model weights
mkdir tmp
cd tmp
powershell -command "& {Invoke-WebRequest -Uri https://github.com/alshukairi/public/raw/main/LAV_Weight/LAV_weights.zip.000 -OutFile LAV_weights.zip.000}"
powershell -command "& {Invoke-WebRequest -Uri https://github.com/alshukairi/public/raw/main/LAV_Weight/LAV_weights.zip.001 -OutFile LAV_weights.zip.001}"
powershell -command "& {Invoke-WebRequest -Uri https://github.com/alshukairi/public/raw/main/LAV_Weight/LAV_weights.zip.002 -OutFile LAV_weights.zip.002}"
copy /b LAV_weights.zip.* ..\LAV_weights.zip

echo 2. Extract the LAV weights folder
cd ..
powershell -command "Expand-Archive -Path LAV_weights.zip -DestinationPath MLMAS_Project/ML_Models/LAV -Force"
rmdir /S /Q tmp
del LAV_weights.zip


echo 3.Downloading CARLA 0.9.10.1 with the required AdditionalMaps
mkdir MLMAS_Project\CARLA_0.9.10.1
cd MLMAS_Project\CARLA_0.9.10.1
powershell -command "& {Invoke-WebRequest -Uri https://carla-releases.s3.eu-west-3.amazonaws.com/Windows/CARLA_0.9.10.1.zip -OutFile CARLA_0.9.10.1.tar.gz}"
powershell -command "& {Invoke-WebRequest -Uri https://carla-releases.s3.eu-west-3.amazonaws.com/Windows/AdditionalMaps_0.9.10.1.zip -OutFile AdditionalMaps_0.9.10.1.tar.gz}"

echo 4.Extracting CARLA and MAP folders
tar -xf CARLA_0.9.10.1.tar.gz
tar -xf AdditionalMaps_0.9.10.1.tar.gz

del CARLA_0.9.10.1.tar.gz
del AdditionalMaps_0.9.10.1.tar.gz

cd ..\..
echo Finish: The project folder is ready
