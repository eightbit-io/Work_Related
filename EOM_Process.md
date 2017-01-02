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
## Create dozpush final surface

1) View all weekly Ascons,
2) Create polygon around dozerpush areas,
3) Create Grid as before,
4) Crop out excavator post strip,
5) use Topography filter
    > search cell size = .5
6)

--- 
## Calculate Dozerpush Split
Using *Query -> Surface Volume* run the following calulations.


___
## Finally
1) Export EOM_Pit_Void_MmmYY, Dozerpush_Final_Surface_MmmYY and xx surfaces for next month