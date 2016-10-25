#Functions
#This function determines the current version of Lava.

$version = Lava::version() 
 
    # $version : Returns the current revision of Lava.
 
#This function returns the current project code.
$prj = Lava::Project()
    # $prj : returned project code

#This function returns the current environment code.
$env = Lava::Project_Environment
    # $env : returned environment code

#This function returns the name of the currently opened block model or a null string (if a block model is not open).
$cbm = Lava::Current_BModel($mode)
    # $cbm  : return name of the currently opened block model (if applicable).
    # $mode : file name mode (0 = returns the whole path, 1 = file name only).
    # Note: $cbm will be set to a null string if there is no block model open.

#This function returns the name of the currently opened design database or an empty string (if no DGD is opened).
$dgd = Lava::Current_DGDName($mode)
    $dgd  : return name of the currently openeddesign database (if applicable).
    $mode : file name mode (0 or no argument = returns the whole path, 1 = file name only).
    Note: $dgd will be set to an empty string if there is no DGD open.
#This function changes the visibility of an object segment ($seg).
Lava::Object_Visibility($seg, $mode)
    $seg  : object segment id
    $mode : visibility mode (0 = visible, 1 = shadow, 2 = invisible)Example:
my $obj = new Lava::Selection( 'Select object to hide' );
Lava::Object_Visibility( $obj->id(), 2 );
#This function takes an polygon object, projects it to another $thickness apart, and creates a triangle solid from the two polygons. The triangle is returned as a Lava::Triangulation
$tri = Lava::TriSolid_from_Polygon($obj, $thickness, $type)
    $obj       : polygon object to project and turn into a solid triangulation
    $thickness : thickness of solid
    $type      : projection mode (0 = top, 1 = mid, 2 = bottom)
    $tri       : returned Lava::TriangulationExample:
my $tri_file = 'C:/Temp/solid.00t';
my $s = new Lava::Selection( 'Select object to triangulate' );
my $tri = Lava::TriSolid_from_Polygon( $s->obj(), 500, 2 );
$tri->write($tri_file);
Lava::Show_Triangulation($tri_file);
#This function loads a triangulation (given by $filename) into Envisage. If $interactive is true then a load panel is displayed, allowing the user to specify the display parameters.
Lava::Show_Triangulation( $filename,$interactive)
    $filename    : filename of triangulation
    $interactive : boolean - show an interactive panel when loading triangulation or use defaults
#This function displays the given message in a standard Envisage text box. The text box is only transitory and will be removed with the next output or input request.
Lava::Show($message)
    $message : Text to be displayed.
#This function displays the given message in a standard Envisage text box. The text box persists until its "Ok" button is pressed.
Lava::Message($message)
   
    $message : Text to be displayed.
#This function displays the given message in a standard Envisage text box, rings an alarm and writes the error message to the usual places. The text box persists until its "Ok" button is pressed.
Lava::Error($message)
 
    $message : Text to be displayed.
#This function buffers the given message to a line of the Envisage Report Window. If the message is blank, then all buffered lines are flushed and displayed in the Report Window.
#If the given message begins with "H", then the line is highlighted. This feature may be implemented differently in later versions.
Lava::Report($message)
 
    $message : Line of text to be displayed.
#This function executes a system command and waits for the command to finish before proceeding. It is provided as an alternative to the Perl built-in system function, but unlike system(), will hide any spawned windows in the background. The return value is the exit status of the program as returned by the wait call (see http://perldoc.perl.org/functions/system.html).

Lava::System($command)

 

    $command : system command

 

#This function is an overload of Lava::System, indicated by passing a second parameter, which can be any value. This overloaded version captures STDOUT and sets the return value to it.

Lava::System($command, 1)

 

    $command : system command


# Lava::Contourer
# The Lava::Contourer object may be used to contour triangulations. The contours come back as objects, suitable for insertion into layers. To perform contouring, you first create a Lava::Contourer object,
# with the name of the triangulation that you want to contour in the constructor.
# Note Only one contourer object can exist at one time.
# This should not be a problem; just make sure that the contourer variable goes out of scope, undefine it, or reuse it, as with the selection object.
# Once created, you can get as many contours as required, using the "create_contour" method.
# For example, the following script allows the user to select a triangulation from the screen, it then opens a destination layer and appends various contours at the Z levels selected by the user:"

use Lava;
 
# Creating the selection causes the user to be prompted for a triangulation,
# or, if only one is loaded, picks the only one loaded.
my $tsel = new Lava::TriSelection();
 
# The selection will not be valid if the user cancels it, or if no triangulation is loaded.
if ( $tsel->is_valid() )
{
    my $valid = 1;
 
    # Get the name - we need this to create out the contourer object.
    my $name = $tsel->name();
 
    # Create contouring object.
    my $contourer = new Lava::Contourer($name);
 
    # Open a layer (select for appending, or create if required)
    # Hard-wired name, but could be based on triangulation name etc.
    my $layer = new Lava::Layer("CONTOURS");
 
    # Select some Z levels ...
    while ($valid)
    {
        my $point = new Lava::Point("Select level to contour");
 
        $point->get();
 
        if ( $valid = $point->is_valid() )
        {
            my ( $x, $y, $z ) = $point->position();
 
            # Create the Envisage object (it will have the default colour etc)
            my $obj = $contourer->create_contour($z);
 
            # Could set the various attributes of the object here if you wanted.
 
            # Add object to the layer.
            $layer->add($obj);
        }
    }
}
# Methods:
$contour_instance = new Lava::Contourer($name)
 
    $contour_instance : returned Lava::Contourer instance.
    $name             : name of triangulation to be contoured.
          
$obj = $contour->create_contour($z)
 
    $obj : returned object.
    $z   : Z level of desired contour.
