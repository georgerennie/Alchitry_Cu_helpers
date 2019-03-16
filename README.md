# Alchitry-Verilog-Helper-Files

A collection of verilog code and pin constraints to aid development for Alchitry boards with iCEcube2
At the moment however this only supports the Alchitry Cu board, in particular for usage with the Alchitry Io element.
N.B. The files in this repository are designed for the Alchitry Cu board with iCEcube2 and will likely not be of much use for other use cases

Copyright 2019 George Rennie, distributed under GPL V3

## Creating a new project with iCEcube2
1. Open iCEcube2 and select "New Project"
2. Name the project and select its directory, iCEcube2 will create a directory with the project name in this directory for the code
3. Select the device and its package (The Cu uses an iCE40 HX8K CB132)
4. Check the other settings available if you wish to change them then click "Next"
6. Locate all folders from within the appropriate base project in this repository's "Base Projects" folder and copy them into the new project's folder
7. Right-click "Add Synthesis Files" and click "Add Files" in iCEcube2 then find all files in the src and synthesis_constraints folder
8. Right-click "Add P&R Files" and click "Add Files" in iCEcube2 then find all files in the pcfs folder
8. Projects can now be built in much the same way as the previous section [Building a demo Project](#building-a-demo-project)
9. Select Tool>Run All to build the source into a binary for the FPGA
10. Open Alchitry Loader and choose the appropriate board. Use "Open Bin File" to open the binary you built in step 3. This will be located in "demo_project_name_Implmnt/sbt/output/bitmap" and will have the file extension .bin
11. Plug in your Alchitry board and click "Program". This will write the binary onto the Alchitry board