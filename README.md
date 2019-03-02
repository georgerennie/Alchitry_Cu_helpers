# Alchitry-Verilog-Helper-Files

A collection of verilog code and pin constraints to aid development for Alchitry boards with iCEcube2
At the moment however this only supports the Alchitry Cu board, in particular for usage with the Alchitry Io element.
N.B. The files in this repository are designed for the Alchitry Cu board with iCEcube2 and will likely not be of much use for other use cases

Copyright 2019 George Rennie, distributed under GPL V3

# Table of Contents
1. [Repo Contents](#repo-contents)
2. [Building a demo project](#building-a-demo-project)
3. [Creating a new project with iCEcube2](#creating-a-new-project-with-icecube2)

## Repo Contents
1. Base Projects - Files to start projects for different Alchitry setups from
2. Demo Projects - Basic projects to show Alchitry functions
3. Pin Configuration Files - .pcf files for Alchitry boards

## Building a demo project
1. Find a demo project appropriate to your boards in the folder Demo Projects
2. Open iCEcube2 and open the .project file found in the demo folder in iCEcube2
3. Select Tool>Run All to build the source into a binary for the FPGA
4. Open Alchitry Loader and choose the appropriate board. Use "Open Bin File" to open the binary you built in step 3. This will be located in "demo_project_name_Implmnt/sbt/output/bitmap" and will have the file extension .bin
5. Plug in your Alchitry board and click "Program". This will write the binary onto the Alchitry board

## Creating a new project with iCEcube2
1. Open iCEcube2 and select "New Project"
2. Name the project and select its directory, iCEcube2 will create a directory with the project name in this directory for the code
3. Select the device and its package (The Cu uses an iCE40 HX8K CB132)
4. Check the other settings available if you wish to change them then click "Next"
5. Locate where you have this repository installed and find any Pin Configuration Files from the folder of the same need that you need for the project and select them before clicking finish
6. Locate all folders from within the appropriate base project in this repository's "Base Projects" folder and copy them into the new project's folder
7. Finally right-click "Add Synthesis Files" and click "Add Files" in iCEcube2 then find all files you have just copied into the new folder and add them to the project
8. Projects can now be built in much the same way as the previous section [Building a demo Project](#building-a-demo-project)