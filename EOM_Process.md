# EOM Process


## Setup
Create the following folders in *\surfaces\\*
+ EOM_Pit_Void
+ EOM_Dozerpush
+

___
## EOM Pit Void

1) Select all weekly Ascons, EOM coal sufaces and Previous EOM Pit Void.
2) Create a grid of the surfaces using *CAD -> Create Grid*
    + .5m spacing,
    + Axis Aligned, 
    + Lowest point
3) Rename the resulting surface as *EOM_Pit_Void_MmmYY*

___
## Create Digger_Final_Surface

1) View all weekly Ascons,
2) Create polygon around dozerpush areas,
3) Create Grid as before,
4) Crop out excavator post strip,
5) Use Topography filter
    > search cell size = .5
6)

___
## Create Digger_Final_Surface
1) Select last weekly ascon and MA1_TOC
2) Create Grid
    + .5m spacing,
    + Axis Aligned, 
    + Highest point
3) Check around coal floor to make sure nothing funny is going on.

___ 
## Calculate Dozerpush Split
Using *Query -> Surface Volume* run the following calulations.

1) Last EOM_Pit_Void - Dozerpush_Final_Surface = Dozer Prime Volume
2) Last EOM_Pit_Void - Digger_Final_Surface = Total Prime Volume
3) Dozerpush_Final_Surface - Digger_Final_Surface = Digger Volume inc Rehandle

Then calculate
1) Digger Prime = Total Prime Volume - Dozer Prime Volume
2) Rehandle = Digger Volume inc Rehandle - Digger Prime



___
## Finally
1) Export EOM_Pit_Void_MmmYY and Dozerpush_Final_Surface_MmmYY surfaces for next month
2) Create next months isite folder and import into folder EOM_Dozerpush
