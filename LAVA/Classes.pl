# Classes
# There are three types of classes:

# Lava Classes - Can only be used inside Envisage 
# Triangulation Class - Can be used outside of Envisage 
# Vulcan Classes - Can be used outside of Envisage 

# The documentation for each class includes methods for accessing the class.
# Lava Classes
# Always include the Lava module at the top of your Perl script when using Lava classes.

use Lava;

Lava::Panel
Lava::Obj
Lava::Links
Lava::Metadata
Lava::Coord
Lava::Text
Lava::Selection
Lava::Layer
Lava::Point
Lava::TriSelection
Lava::Contourer
Lava::gfx::window
Lava::Attributes
Lava::GPAN


Lava::Panel
# The Lava::Panel class may be used to create Envisage panels for acquiring specific information from the user. Not all Envisage features are implemented in version 1.1.

# Only one panel may be "opened" at a time. This is not usually a problem because panels close themselves after they are executed, when their instance goes out of scope, or when their instance is "recycled".

# For example: 
$panel1 = new Panel;
 
$panel2 = new Panel;   # BAD - two panels opened 

But: 
$panel1 = new Panel;
$panel1 = new Panel;  # OK, "panel1" is recycled.

And: 
$panel1 = new Panel; 
$panel1->execute('Hit me !');
    
$panel2 = new Panel;    # Ok, panel1 was closed by the execute method.

Methods:
$panel_instance = new Lava::Panel;
 
    $panel_instance : New instance of the Lava::Panel class

# This constructor creates a new Lava::Panel instance and initialises the required values. It may not be possible to create a new panel if one is already "open". See the above class notes for more information.
# The following are items (members) that can be added to your panel using the $panel-> syntax.

For example: 
$panel->text("This is some text that will appear on your panel");
 
    text($string [,$flags] )
    # $string : Contains text to appear on panel.
    # $flags  : If this string contains the substring "hi" then the text string will be highlighted. 

# This method adds a highlighted text line to the panel. For example: 

$panel->text("This is a line of text", "hi");

# will highlight the text. 
item($label,$reference)
 
#    $label     : String containing label for item.
#    $reference : Perl reference to variable for data transfer.

# This method adds a field line to a panel. The label appears to the left of the area containing the editable variable, which may be text or numeric. The formatting of the numeric values is left up to Perl.
# A reference to a Perl variable is used to determine the initial value for the item and, if the user clicks OK, it is used to show where the result should be placed. The reference is most easily generated using the "\ " Perl notation. For example:

$my_data = "Fantastic";      #Default value
 
$panel->item("Enter description for Lava", \$my_data); 
# second argument to item now has a reference supplied
# On successful completion of the panel, the new description will be stored in $my_data. Note, the following is incorrect: 
$panel->item("Enter description for Lava", "Useless"); # Ooops

because "Useless" is a string, not a reference.

numeric($label, $reference [, $width [, $decimals]] )
 
    # $label     : String containing label for item.
    # $reference : Perl reference to variable for data transfer.
    # $width     : Width, in characters, of field.
    # $decimals  : Number of decimal places used for representation.
# This method adds a numeric field to a panel. The label appears to the left of the area containing the editable variable. If no width is supplied, then a width of 20 is used. If no decimal value is supplied, then 6 decimal places are used.

For example:

$my_value = 21;
 
$panel->numeric("Enter your age", \$my_value, 3, 0);
# Creates a numeric field of width 3 and no decimal places. 
logical_button($label, $reference)
 
    $label     : String containing label for item.
    $reference : Perl reference to variable for data transfer.
# This method adds a check box to a panel.

# colour($label, $reference)
# line($label, $reference)
# pattern($label, $reference)
 
    $label     : String containing label for item.
    $reference : Perl reference to variable for data transfer.
# These 3 related functions add the standard graphical selectors to a panel. The label is printed to the left of a colour, line, or pattern array, respectively. $reference should refer to an integer variable that holds the index of the graphic type. 
pick_list($file_type, $filter, $remove_extension)
 
    $file_type        : Envisage files_layout file type (deprecated).
    $filter           : List of acceptable file matches.
    $remove_extension : Whether the extensions should be removed from files in the list.
# This method should be called immediately after the item method to add a file pick list to the newly created item. The use of $file_type field is deprecated and should be left empty, that is

$panel->pick_list("", "*.gif;*.png");

# The above pick_list contains all of the .gif and .png files in the working directory.

# The filter contains a semi-column separated list of possible matching types and the $remove_extension allows the characters trailing the final "." in the file name to be removed. For example:

$image = "babe.gif";
 
    $panel->item("Enter image name", \$image);
    $panel->pick_list("", "*.gif;*.rgb", 1);
# The above code adds an item requesting an image name to the panel. The item will have a pick_list containing a list of images (without extensions) found in the current working directory.

pick_list_data(@pick_strings)
 
    @pick_strings : List of items to appear in pick list
# This method should be called immediately after the item method to add the given pick list to the newly created item. The @pick_strings array contains an arbitrary list of items to appear in the pick list. For example: 
$panel->pick_list_data("aardvark", "bee", "cat", "dog");
 
# Or
@animals = qw(aardvark bee cat dog);
 
$panel->pick_list_data(@animals);
$OK = execute($title)
 
    # $OK    : Whether "OK" was selected (as opposed to Cancel).
    # $title : Title to be placed at the top of the panel.

# This method does most of the work associated with panels. You are actually presented with this panel when this method is called. If the user clicks Cancel, then none of the variables referred to by the panel items will be affected. If the user clicks OK, then the variables referred to by the panel items will be filled with the data contained in the panel. The method returns whether you accepted the panel, or whether you wished to cancel.



# Lava::Obj
# The Lava::Obj class is the class most fundamental to Envisage. It can represent any design database object, and its class definition closely mirrors the internal data storage format. Examples of Envisage objects can easily be seen using the Analyse > Details > List Objects option.

# All Envisage objects have a common header type. This header contains:

# Name forty alphanumeric characters (user-definable field). 
# Description forty alphanumeric characters (user-definable field). 
# Group forty alphanumeric characters (user-definable field). Since objects may be picked by group, different objects that should be logically grouped may be given the same group name for convenience. 
# Primitive Different primitives can cause the point data of the object to be interpreted differently. If the primitive name starts with a '$' sign then special meaning is given:
# $CIRCLE The object is actually a circle 
# $TRIANG The object is filled with solid triangulations 
# $ELLIPSE Ellipses are drawn at each point 
# $PCURVE Points describe a polynomial curve 
# $SCURVE Points describe a spline 
# $RHUMB_NAV Navigation curve 
# $GREAT_NAV Navigation curve 
# $LT_... A line style curve. 

# If the name does not start with a '$' sign, then it may refer to an entry in the <proj>.pcd (primitive) file. If no entry is found, then the primitive may refer to a symbol name. 
# Feature This field is set when digitising is done using the "feature" method and is useful for selection when labelling. It may hold the string "SYMBOL", in which case the coordinate names refer to symbol names. If the Feature is "NO_PLOT" and the object is part of a drafting sheet, then the object will not appear on plots. 
# Control The control field describes how the text angle is stored. All new text objects have this field set to "TXT_NEW". 
# Value The objects (double precision, real) value can take on a variety of special and arbitrary meanings depending on the application. For example, it is used to describe the angle of "SYMBOL" objects and the level of contour strings. 
# Colour This holds an index into the design databases colour table. 
# Line The Line variable holds both an index into the line type/style array and a line thickness. The line type is extracted by taking the modulo 10 (remainder after division) of this value and the line thickness is this value divided by 10, plus 1. 
# Pattern The pattern value applies to closed polygons and is an index into the (possibly user-defined) pattern "palette". A value of 0 means unfilled. A value of 1 means solid filled and greater values are indices. 
# Closed This describes whether the polygon should be connected back to the initial point. 

# In addition to these header attributes, an Envisage object may have external "link" records. These records contain data that have special meanings according to the "type" field of the record. For certain types of links, one or more of the following link records are merged into the original link. These merged links have a type less than 0.

# Type Meaning of Data:

# -X This link data belongs to the previous link of type X 
# 0 This link record is to be deleted/ignored 
# 1 Text file link. 
# Current record = file name
# Current record +1 = description
 
# 2 Isis DB link. 
# Current record = file name
# Current record +1, first 20 chars = environment
# Current record +1, second 20 chars = datasheet
# Current record +2 = dB key (or _NAME or _DESCRIPTION)
# Current record +3 = description
 
# 3 Application specific link 
# 4 Execution link 
# Current record = file name
# Current record +1 = Command
# Current record +2 = Args
# Current record +3 = description
 
# 5 Macro link 
# Current record = Name
# Current record +1 = description
# Current record +more = macro link specific data
 

# These links may be examined in Envisage using the Analyse > Attribute Data > Inquire option.

# Although the above information is common to all Envisage objects, Envisage objects have extra information according to their type. Currently, an Envisage object may either be a polygon or a text object.

# Polygon objects have an additional (possibly very large) array of coordinate information. Each coordinate contains the following fields:

# X User-defined (double precision) coordinate value. 
# Y User-defined (double precision) coordinate value. 
# Z User-defined (double precision) coordinate value. 
# W User-defined (double precision) coordinate value. This is usually not displayed in the standard 3D view (although it can be displayed if the coordinate window is defined to do so) and takes on different meanings according to the application. For example, it refers to the symbol angle when the object is a symbol object, but may refer to an ore grade in another application. 
# Type 16-bit integer field describing the drawing of the object. 0 = Move to Set current position to this point. If no drawing is done from this point, a marker (usually a cross) will be drawn. 
# 1 = Draw to A line is drawn from the previous point to this point in the current colour. 
# 10<=Type<60 Change colour to (Type-10) and "Draw to" this point. 
# 60<=Type Change colour to (Type-60) and "Move to" this point. 
 
# Point name The coordinate Point name defines a symbol if the object is a symbol object. Otherwise the application may use the Point name for its own purposes. 

# Text objects have their own set of additional attributes:

# X X location of text 
# Y Y location of text 
# Z Z location of text 
# W W location of text 

# In Lava, these values have been mapped into the polygon coordinate array. That is, to access the text position, you should read/write the 0th coordinate value.

# Font The text font number affects the size, style, and type face of the generated text, as well as how the other text attributes affect the display.

# Font values:

# 4-7 - Zoom invariant fonts
#  "Size" is ignored when drawing, but instead the font remains a constant size on the screen, no matter what the zoom. Angle has no effect on the display, only on the drafting. The plotting size is generated from the "size" field, which is in plotter units. 
# 10-43 - Vector fonts Several different type-faces are available. The size of the characters on both the screen and the plots are given by the "Height" field in user coordinates. The size field is used only for listing purposes. 
# 44 - Scaled font The "Height" field defines the height. This font remains a constant size on all plots no matter what the scale. 
 
# Size For invariant fonts, the size defines the plotting size. For all other fonts, it is used for listing purposes only. 
# Angle Angle at which text is to be drawn. 
# Height Height (real size) of font. Not used for invariant fonts. 
# Scale This field is used for listing only. 
# Text Data As well as the font definition, text objects have a list of strings containing the actual text information. 

# The usual method of calculating the font size attributes is to set a "default" scale, then pick the desired plotting size, then calculate the height from these two values.

# Methods:
$object_instance = new Lava::Obj("text");
 
    # $object_instance : New instance of the Lava::Obj class
    
# This constructor creates a new Lava::Obj instance and initialises the required values. If the optional "text" string is added, then the object will be a text object, otherwise it will be a polygon object.

$poly = is_poly()
 
    # $poly : Whether the object is of type polygon
 
$text = is_text()
 
    # $text : Whether the object is of type text
# The following methods all take the same form. That is, if no parameters are supplied, then the method returns the specified value. If one parameter is supplied, then the object attribute is set to the supplied value. The meanings of the attributes are given above.

 [$name]        = name([$new_name])
 [$description] = description([$new_description])
 [$group]       = group([$new_group])
 [$primitive]   = primitive([$new_primitive])
 [$control]     = control([$new_control])
 [$colour]      = colour([$new_colour])
 [$value]       = value([$new_value])
 [$line]        = line([$new_line])
 [$pattern]     = pattern([$new_pattern])
 [$closed]      = closed([$new_closed])
 [$feature]     = feature([$new_feature])
($coordinates) = coordinates([$new_co-ordinates])

$coordinates     : reference to objects coordinate set
$new_coordinates : new reference to objects coordinate set
If a value is supplied, then the objects takes on this coordinate set. If no value is supplied, then a reference to the objects coordinate set is returned. Since it is a reference, any operations on the reference will equivalently operate on the object. For example:

$coords = $obj->coordinates;
 
$coords->i(0,1,0,0);           # Change the coordinates of the 0th value in reference

will actually change the contents of the object. The coordinate reference is valid for both text and polygon objects, but only the 0th coordinate value is used by text objects.

$links = links([$new_links])
 
    $links     : reference to links array object
    $new_links : new reference to links array object
If a value is supplied, then the objects take on this links array object. If no value is supplied, then a reference to the links array object is returned. Since it is a reference, any operations on the reference will equivalently operate on the object.

$text = text([$new_text])
 
    $text     : reference to text data object
    $new_text : new reference to text data object
If a value is supplied, then the objects take on this text data object. If no value is supplied, then a reference to the text data object is returned. Since it is a reference, any operations on the reference will equivalently operate on the object.


--------------------------------------------------------------------------------

Lava::Links
The Lava::Links object encapsulates an array of link records that may be associated with an Envisage object. Access to these values currently requires knowledge of the Link Type & Link Data records described in the Lava::Obj section, so only advanced users are encouraged to modify these records. Hopefully, future versions of Lava will have a higher-level interface to these link records.

Methods:
$link_instance = new Lava::Links
 
    $link_instance : newly created instance of a Lava::Links object
An empty (containing no records) Lava::Links may be created using this method. This step is usually unnecessary because a Lava::Links object is automatically created when a Lava::Obj is created, and a reference to this is usually adequate for all link operations.

[($type, $data)] = i($i [, $new_type [, $new_data]])
 
    $type     : If no $new_type is supplied, then $type is the type of the $ith link
    $data     : If no $new_type is supplied, then $data is the data of the $ith link
    $new_type : If supplied, this sets the type field of the ith link record
    $new_data : If supplied, this sets the data field of the ith link record
This method may be used to examine or set data associated with the ith link record.

$n = n
  
    $n : Number of valid link records.

--------------------------------------------------------------------------------

Lava::Metadata
In Vulcan, the metadata attached to objects is stored in the link records but in a compressed form. If you want to manipulate the metadata, you should use the Lava::Metadata class instead of the Lava::Link class. Lava::Metadata encapsulates an array of key => value pairs that may be associated with the Envisage object. These are normally set up via a template using the Metadata menu in Envisage. Although used interchangeably, the term metadata actually refers to attribute data which is data that is associated with the object rather than data that describes the object.

Methods:
$metadata_instance = new Lava::Metadata
 
    $metadata_instance : newly created instance of a Lava::Metadata object
An empty (containing no records) Lava::Metadata may be created using this method. This step is usually unnecessary because a Lava::Metadata object is automatically created when a Lava::Obj is created, and a reference to this is usually adequate for all link operations.

[(key,$value)] = i($i [, $new_key [, $new_value]])
 
    $key      : If no $new_key is supplied, then the $key is the key of the $ith metadata pair
    $value    : If no $new value is supplied, then $value is the value of the $ith metadata pair 
    $new_key  : If supplied, this sets the key field of the ith metadata pair
    $new_data : If supplied, this sets the value field of the ith metadata pair
This method may be used to examine or set data associated with the ith metadata pair.


$n = n
 
    $n : Number of metadata pairs.
This is used to see if there is any metadata.

The following example prints out the metadata attached to a set of selected objects.

use Lava;
 
my $s = new Lava::Selection( "for examining metadata", "multi,shadowed" );
 
while ( $s->has_more() )
{
     # get the metadata from this object
     my $metadata     = $s->metadata();
     my $num_metadata = $metadata->n();
 
     # print them out
     foreach my $i (0 .. $num_metadata - 1)
     {
        my ($key, $value) = $metadata->i($i);
 
        print "$key : $value\n";
    }
 
    $s->next()
}
The next example sets metadata to the selected objects:

use Lava;
 
for (
    my $s = new Lava::Selection("for setting metadata", "multi shadowed");
    $s->has_more();
    $s->next()
    )
{
    # create some new metadata
    # if editing the existing metadata, we could also just use $s->metadata
    my $new_meta = new Lava::Metadata;
 
    $new_meta->i( 0, "Vulcan", "Is Great" );
 
    # reset and save
    $s->metadata($new_meta);
    $s->replace();
}

--------------------------------------------------------------------------------

Lava::Coord
The Lava::Coord object encapsulates an array of coordinate records. See the Lava::Obj section for a description of these records. Text objects only use the 0th coordinate record to describe their position.

Methods:
$coord_instance = new Lava::Coord
 
    $coord_instance : newly created instance of a Lava::Coord object
An empty (containing no records) Lava::Coord may be created using this method. This step is usually unnecessary because a Lava::Coord object is automatically created when a Lava::Obj is created, and a reference to this is usually adequate for all coordinate operations.

[$x, $y, $z, $w, $t, $name] = i($i[, $n_x[, $n_y[, $n_z[, $n_w[, $n_t[, $n_name]]]]]])
 
    $x    : If $n_x is not supplied, $x = X value of the ith coordinate.
    $y    : If $n_x is not supplied, $y = Y value of the ith coordinate.
    $z    : If $n_x is not supplied, $z = Z value of the ith coordinate.
    $w    : If $n_x is not supplied, $w = W value of the ith coordinate.
    $t    : If $n_x is not supplied, $t = Type of the ith coordinate.
    $name : If $n_x is not supplied, $name = Name of the ith coordinate.
 
    $i    : Specifies which coordinate is being set/examined.
    $n_x  : If supplied, sets the X value of the ith coordinate.
    $n_y  : If supplied, sets the Y value of the ith coordinate.
    $n_z  : If supplied, sets the Z value of the ith coordinate.
    $n_w  : If supplied, sets the W value of the ith coordinate.
    $n_t  : If supplied, sets the Type of the ith coordinate.
    $n_x  : If supplied, sets the Name of the ith coordinate.
This method may be used to set or examine the ith coordinate record. See Lava::Obj section for discussion of the meanings of these fields.

$n = n
 
    $n : Number of valid coordinate records.
[$name, $size, $angle, $type, $x, $y, $z] = symbol($i[, $n_name[, $n_size[, $n_angle[, $n_type[, $n_x[, $n_y[, $n_z]]]]]]]);
 
    $name   : If $n_name is not supplied, $name is the name of the ith symbol
    $size   : If $n_name is not supplied, $size is the size of the ith symbol
    $angle  : If $n_name is not supplied, $angle is the angle of the ith symbol
    $type   : If $n_name is not supplied, $type is the type of the ith symbol
    $x      : If $n_name is not supplied, $x is the x position of the ith symbol
    $y      : If $n_name is not supplied, $y is the y position of the ith symbol
    $z      : If $n_name is not supplied, $z is the z position of the ith symbol
 
    $i      : specifies which symbol is being set/examined
    $n_name : if specified, changes the name of the ith symbol
    $n_size : if specified, changes the size of the ith symbol
    $n_type : if specified, changes the type of the ith symbol
    $n_x    : if specified, changes the x value of the ith symbol
    $n_y    : if specified, changes the y value of the ith symbol
    $n_z    : if specified, changes the z value of the ith symbol
The symbol method can be used to set a given coordinate to represent a symbol or to examine the contents of a given coordinate by treating it as a symbol. This method should only be used when the associated object is known to hold symbols, that is, when the object has the feature "SYMBOL". If you want to create a new object that contains symbols, first set the feature code using: 
$obj->feature("SYMBOL");

before setting the coordinates to the desired symbol values. For example, the following script requests a point and then creates a symbol at that point. In this example, the (zero-th) symbol name is "DAM", the size is 100, the angle is 90 and the point type is 1. 
use Lava;
 
my $layer = new Lava::Layer;
 
if ( $layer->is_valid() )
{
    my $point = new Lava::Point("Symbol location");
      
    if ( $point->get() )
    {
        my $obj = new Lava::Obj;
        
        $obj->feature("SYMBOL");
        $obj->coordinates->symbol( 0, "DAM", 100, 90, 1, $point->position() );
 
        $layer->add($obj);
    }
}

--------------------------------------------------------------------------------

Lava::Text
The Lava::Text object encapsulates an array of text data, as well as various text attributes. See the Lava::Obj section for a description of these data and attributes.

Methods:
$text_instance = new Lava::Text
 
    $text_instance : newly created instance of a Lava::Text object
A default (containing no line) Lava::Text may be created using this method. This step is usually unnecessary because a Lava::Text object is automatically created when a Lava::Obj is created, and a reference to this is usually adequate for all text operations.

The following methods all take the same form. That is, if no parameters are supplied, then the method returns the specified value. If one parameter is supplied, then the object attribute is set to the supplied value. The meanings of the attributes are given in Lava::Obj section.

[$angle]  = angle([$new_angle])
[$height] = height([$new_height])
[$size]   = size([$new_size])
[$font]   = font([$new_font])
[$scale]  = scale([$new_scale])
 
$line = i($i[, $new_line])
 
    $line     : If $new_line is not supplied, the ith line of text is returned
    $new_line : If supplied, the ith line of text is set to this value
This method may be used to set/examine individual lines of text.

$n = n
 
    $n : Number of valid text lines.

--------------------------------------------------------------------------------

Lava::Selection
The Lava::Selection object manages the prompting, selection, highlighting, loading, and replacing of Envisage objects. The first object is requested as soon as the Lava::Selection object is created. The objects are then presented one by one to the Lava script for processing, where they may be examined or manipulated and replaced.

Note Lava may not have more than one Lava::Selection "open" at one time.
 

A Lava::Selection object closes itself once all selection has been completed, or when the object is destroyed. There are a number of easy strategies that may be used to ensure only one Lava::Selection is current at a time. For example, you can destroy an object by setting it to 0:

 $selection = 0;

or you can limit its scope to, say, a subroutine:

sub my_get
{
    $selection = new Lava::Selection("Select object", "multi");
}
# There goes the selection!
or you can "recycle" the same variable name whenever you start a selection:

$selection = new Lava::Selection("Select object", "multi");
 
$selection = new Lava::Selection("Select object", "multi"); # Destroy the old, start a new.
Selections may be either single or multiple. A single selection requests a single object and then finishes. A multiple selection brings up the standard Envisage Multiple Selection box and then returns objects one by one to the Lava script, which then calls the "next" method to get subsequent objects. You may also request the selection to shadow objects as they are selected. This prevents the same object being selected twice by the selection routines.

An object's "id" is unique to the object and may be used as a key for further processing. The id will remain constant, even if the object is "replace"d. It will change, however, if the object is shifted to a different layer, deselected, or deleted. The layer in which the selected object resides can be determined using the layer method. For example, the following script transfers the layer name, for selected objects, into the object name.

use Lava;
 
my $s = new Lava::Selection( "To layer-name", "multi" );
 
while ($s->has_more())
{ 
    $s->name( $s->layer() );
 
    $s->replace();
 
    $s->next();
}
Once an object has been selected, you can examine or set the contents by using the methods similar to those of Lava::Obj. The difference being that data is loaded from Envisage into Lava::Selection on a need-to-know basis only, saving time if, say, you only need to examine the "description" field.

Changes to the selected object may be written back to the database using the "replace" method. This replaces the original object with the modified version. Again, data is only transferred on a need-to-know basis. For example, if you change the colour of the object, only the header record of the object will be replaced.

The "has_more" and "next" methods are ideally suited for use in a Perl "for" loop. For example:

for (
      my $s = new Lava::Selection("to recolour", "multi");
      $s->has_more();
      $s->next()
      )
{
    $s->colour(32); # change the object's colour
 
    $s->replace();  # update the object
}
Selections may be specified using a layer matching criterion, rather than requiring the selection to be done with the mouse on the screen. 
This is done by using the magic first argument "by layer" to the selection object constructor, and a pattern match which has the same syntax as the standard Vulcan syntax, that is"*" and "?". For example, create a selector for everything:

use Lava;
 
$select_all = new Lava::Selection("by layer", "*");
Or, to reduce the line thickness of drillholes:

use Lava;
 
my $drills = new Lava::Selection("by layer","DIG\$DRILL");
 
while($drills->has_more())        
{
    $drills->line(0);
 
    $drills->replace();
 
    $drills->next();
}
Note The '$' sign has to be escaped by using a backslash if using double quotes.
 

Methods:
$selection_instance = new Lava::Selection([$prompt[, $flags]])
 
    $selection_instance : newly created instance of a Lava::Selection object.
    $prompt             : Text with which to prompt the user, or the special string "by layer" in which case the flags refer to a pattern match requesting a set of layers.
    $flags              : May contain "multi"    - Multiple object selection (not single)
                                      "shadow"   - Shadow objects as they are selected.
                                      "points"   - Highlight selected object's points        
When a Lava::Selection object is created, it immediately prompts the user for an object. For multiple selections, the prompt follows the text "select criterion". The flags field may be used to modify the behaviour of the selection, as described above.

$result = has_more
 
    $result : Whether the selection object has a valid object.
has_more
The "has_more" method is used to run through all objects in a selection. It can be used to detect when the user has finally cancelled out of the selection routines. If, say, the user selected by layer then "has_more" would be true while the objects were processed one-by-one by the Lava script. The user is then automatically presented with the option for another layer. If she cancels out of this, then she is presented with the Multiple Selection box. If she then cancels out of this, then the "has_more" will be false and the selection will be closed. 
next
This method goes back to the Envisage selection routines and waits for a response from the user, or uses the next object in the selected stack.

is_first
Determines if the current object is the first selection. 
$result = is_first
 
    $result : Returns whether this is the first selection from the object.
id
An object's "id" is unique to the object and may be used as a key for further processing. The id will remain constant, even if the object is "replace"d. It will change, however, if the object is shifted to a different layer, deselected or deleted. 
$id = id
 
    $id : Unique integer identifying the selected object.
layer
This method will return the layer name in which the selected object resides. 
$layer_name = layer
 
    $layer_name: the layer in which the selected object resides.
replace
This method replaces the selected object in the Envisage database with the data contained in the Lava object.

The following methods outwardly behave identically to the Lava::Obj routines of the same name, except that they intelligently load information from Envisage as required:

name, description, group, primitive, control, value, colour, line pattern, closed, is_poly, is_text, links, co-ordinates and text


--------------------------------------------------------------------------------

Lava::Layer
The Lava::Layer object may be used to create or select a layer into which new objects may be added. The way in which the layer is created depends mainly on the parameters passed to the constructor.

With no parameters, the Lava::Layer will point to the current layer if one exists, or prompt the user to make a layer current in a way similar to most of the Design - Create menu functions. Lava::Layers should always be checked for validity, using the is_valid method, because there are many reasons why the user won't or can't open a layer.

If a layer name is provided to the constructor, then a layer of the given name is created, selected, or made current, depending on the existence of the layers in the database/work file. The layer may optionally be cleared of all objects by adding a "clear" flag.

Methods:
$layer_instance = new Lava::Layer([$name [, $description[, $flags]]])
  
   $layer_instance : returned Lava::Layer instance
   $name           : Name of layer to be created/selected/made current
   $description    : Description to apply to new layer
   $flags          : May contain  "clear" - Clear the layer of objects
At the time of creation, the Lava::Layer object will attempt to create, select, or make current the given layer. If no layer is given, and no layer is current, then the user will be prompted to make one current.

$result = is_valid
 
    $result  : Whether the layer was successfully opened.
The validity of the Lava::Layer should always be checked before any attempt is made to use the layer because there are many reasons for not being able to open a layer.

add($object)
 
    $object : Lava::Object to be inserted into layer
This method adds a Lava::Obj to the given layer. The layer must be a "valid" layer. See the Lava::Obj section for more details of Lava::Objects.

$edited = edited([$new_edited])
 
    $edited     : If $new_edited is not provided, this contains the edited status of the layer.
    $new_edited : Sets the edited status of the layer.
This method may be used to examine (by not passing $new_edited) or set the "edited" status of the layer. Only layers that are edited are saved, so it is advisable to set the layer to edited after adding an object.


--------------------------------------------------------------------------------

Lava::Point
The Lava::Point object can be used to input 3D data from the user, using the standard Envisage picking methods (Indicate, Snap, Keyboard, etc.). A multiple mode is supported whereby a rubber line is drawn between successive points if the view is in plan mode.

This object behaves slightly differently to the other Lava objects in that it does not prompt for the first point when the object is first created. This is because every prompt must return a value indicating whether Cancel was selected - this extra return value is not neatly incorporated in a constructor.

Lava::Point objects support two prompts, one for the first point and one for subsequent points. Different behaviour may be generated by using more than one Lava::Point object.

Methods:
$point_instance = new Lava::Point([$prompt_1 [, $prompt_2]])
 
  $point_instance : new Lava::Point selection object
  $prompt_1       : Prompt for first point
  $prompt_2       : Prompt for subsequent points
This creates a Lava::Point object and prepares it for selecting points.

$result = is_valid
 
    $result : Whether a point has been successfully chosen
The "get" method attempts to get a point from the user. If successful, the 3D location is stored internally, otherwise false is returned.

$result = get
 
    $result : User has picked a point (that is not cancelled)
The "position" method returns the position of the last point chosen.

($x, $y, $z) = position
  
    $x : X position of last chosen point
    $y : Y position of last chosen point
    $z : Z position of last chosen point

--------------------------------------------------------------------------------

Lava::TriSelection
The Lava::TriSelection class is used to select triangulations from the Envisage display, and may be used to replace or modify the chosen triangulation display.

The selected triangulation may be accessed through its name, or through the Triangulation structure.

Methods:
$tsel_instance = new Lava::TriSelection [$prompt]
 
    $tsel_instance : Lava::TriSelection object holding the chosen triangulation
    $prompt        : Selection prompt
A Lava::TriSelection object is created, the user is prompted to select a triangulation. The name and ID of this triangulation is then stored for future reference.

$result = is_valid
 
    $result : Whether the user selected a triangulation
The validity of the Lava::TriSelection should always be checked, because there are many reasons why the user may not select a triangulation.

$name = name
 
    $name : Name of chosen triangulation  
The index of a triangulation is a unique integer ID that may be used to identify the triangulation while it remains loaded.

$index = index
 
    $index : Index of triangulation
When no triangulation object is provided, the "triangulation" method loads the selected triangulation into a data structure and then returns a reference to it. The Lava script may access this triangulation reference as it would a normal triangulation. Changes to the returned reference will change the data held in the TriSelection object. If an object reference is provided, then the Lava::TriSelection object takes a copy of the reference and uses it as its data source.

$triangulation = triangulation([$new_triangulation])
 
    $triangulation     : If $new_triangulation is not provided, a reference to the selected triangulation object is returned.
    $new_triangulation : When provided, this sets the triangulation data.
replace
The replace method writes the Lava::TriSelections object to disk and then re-loads itself over the top of the originally selected triangulation, using the original triangulation display attributes.


--------------------------------------------------------------------------------

Lava::Contourer
The Lava::Contourer object may be used to contour triangulations. The contours come back as objects, suitable for insertion into layers. To perform contouring, you first create a Lava::Contourer object, with the name of the triangulation that you want to contour in the constructor.

Note Only one contourer object can exist at one time.
 

This should not be a problem; just make sure that the contourer variable goes out of scope, undefine it, or reuse it, as with the selection object.

Once created, you can get as many contours as required, using the "create_contour" method.

For example, the following script allows the user to select a triangulation from the screen, it then opens a destination layer and appends various contours at the Z levels selected by the user:

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
Methods:
$contour_instance = new Lava::Contourer($name)
 
    $contour_instance : returned Lava::Contourer instance.
    $name             : name of triangulation to be contoured.
          
$obj = $contour->create_contour($z)
 
    $obj : returned object.
    $z   : Z level of desired contour.

--------------------------------------------------------------------------------

Lava::gfx::window
The Lava::gfx::window class may be used to access a graphics window. You can then manipulate the effects and grid properties.

Methods:
To access the active graphics window:


$w = new Lava::gfx::window;

To access a specific graphics window:

$w = new Lava::gfx::window($window_name);

where $window_name is the name of the window.

To get an array of window names:

@windows = Lava::gfx::windows();

The attributes of a window are 'name', 'effects' and 'grid'.

To access these attributes:

$w = new Lava::gfx::window(); #get current window
 
print "Active window is " . $w->{name} . "\n";
The 'effects' and 'grid' attributes return a hash reference. The effects hash matches the effects on the Effects toolbar (although some cannot be accessed) and the grid matches the dynamic grid settings. Each of these are described below.

The toolbar button corresponding to the effect displays beside the effect name.

Effect Description 
show_annotations  When zero (0) annotations are hidden otherwise they are displayed. 
refresh_timer When zero (0) the timer is hidden otherwise it displays. 
dial_on Show/hide the direction dial. 
view_rb_stereo Go into/out of red/blue stereo mode. 
callback_enable Enable dynamic displays. 
draw_stars Draw window background. 
draw_extents Draw boundary boxes around each visible graphics object. 
anti-alias Blend the pixels and lines, resulting in smoother drawn objects. 
mark_end_on_lines Draw small points whenever a line perpendicular to the view plane contains points that cannot be seen. 
reduced_zbuffer Draw layers on top of underlays. 
smooth Use hardware lighting. 
daylight_enable Start the daylight simulation. 

For example,

use Lava;
 
my $w = new Lava::gfx::window;
 
$w->{effects}->{smooth}        = 1;     # use hardware lighting
$w->{effects}->{refresh_timer} = 1;     # display refresh timer
Attribute Type Description 
visible Boolean Show/hide the grid. 
show_x Boolean Show X (easting) grid lines. 
show_y Boolean Show Y(northing) grid lines. 
show_z Boolean Show Z(level) grid lines. 
origin_x float The origin for the X grid lines. 
origin_y float The origin for the Y grid lines. 
origin_z float The origin for the Z grid lines. 
step_x float The step value for the grid in the X direction. 
step_y float The step value for the grid in the Y direction. 
step_z float The step value for the grid in the Z direction. 
annotate_x boolean Annotate the X grid lines. 
annotate_y boolean Annotate the Y grid lines. 
annotate_z boolean Annotate the Z grid lines. 
brightness integer The level of brightness of the grid lines (a value between 0 and 255). 
colour integer Colour for the gridlines (rgb value). 
snap_visible boolean When using grid snapping mode, only snaps to the visible grid lines. 
snap_actual boolean When using grid snapping mode, snaps to the grid even if the lines are not currently visible. 
type string Type of Grid (that is, XY, YZ, XZ, etc.) Refer to the Analyse > Grid > Apply for more information. 
label_all boolean Label all grid lines in the directions where annotations have been requested. 
label_major boolean Label only major grid lines in the directions where annotations have been requested. 
label_scr boolean Place labels in the screen plane. 
label_grd boolean Place labels in the grid plane. 
font_size integer Size of the font for the grid labels (between 10 and 30). 
Note

snap_visible and snap_actual are mutually exclusive. 
label_all and label_major are mutually exclusive. 
label_scr and label_grd are mutually exclusive. 
 

For example,


use Lava;
 
my $w = new Lava::gfx::window;
 
$w->{grid}->{origin_x}    = 70000.0;
$w->{grid}->{origin_y}    = 5000.0;
$w->{grid}->{origin_z}    = -1000.0;
$w->{grid}->{step_x}      = 100.0;
$w->{grid}->{step_y}      = 100.0;
$w->{grid}->{step_z}      = 100.0;
$w->{grid}->{brightness}  = 255;
$w->{grid}->{label_major} = 1;
$w->{grid}->{visible}     = 1;

--------------------------------------------------------------------------------

Lava::Attributes
Like metadata, attributes are attached to objects and stored in the link records in a compressed form. To access the attributes of an object you should use the Lava::Attributes class. Lava::Attributes encapsulates a hash of templates, and attributes in those templates, that are associated with an object.

Methods:
An empty (containing no records) Lava::Attributes may be created using this method. This step is usually unnecessary because a Lava::Attributes object is automatically created when a Lava::Obj is created, and a reference to this is usually adequate for all link operations. 
$attr_instance = new Lava::Attributes
 
    $attr_instance : newly created instance of a Lava::Attributes object
The "templates" method may be used to get the names of the templates that are applied to an object. 
@templates = get_templates();
 
    @templates : an array of templates that are applied to an object.
This method may be used to get the names of the attributes in the given template that have been applied to an object. Attribute names are only unique in a given template so you may have multiple attributes with the same name if they exist under different templates. 
@attr_names = get_template_attributes($template);
 
    @attr_names : an array of the attributes that exist with $template
    $template   : the name of the template to get the attribute array from
The "get" method may be used to get the value of an attribute that is associated with an object. 
$value = get($template, $attr);
 
    $value    : the value of the the attribute $attr
    $template : the name of the template that $attr is in
    $attr     : the name of the attribute that we are getting the value for
The "set" method may be used to change the value of an attribute that is associated with an object. Note that this method only works for attributes that exist in a template that has already been applied to the object. This method will not add a new attribute or template to an object. 
set($template, $attr, $value);
 
    $value    : the value that the attribute will be changed to
    $template : the name of the template that $attr is in
    $attr     : the name of the attribute whose value we are changing
The example below shows how to print out a list of templates that are associated with an object along with the names and values that exist underneath the templates for an object.

use Lava;
 
for (
    my $s = new Lava::Selection "Select object for printing attribute data";
    $s->has_more();
    $s->next()
    )
{
    my $attr      = $s->attributes();
    my @templates = $attr->get_templates();
 
    foreach my $template (@templates)
    {
        print "Template: $template\n";
 
        my @keys = $attr->get_template_attributes($template);
 
        foreach my $key (@keys)
        {
            my $value = $attr->get( $template, $key );
 
            print " Attr: $key: $value\n";
        }
    }
}

--------------------------------------------------------------------------------

Triangulation Class
The Triangulation object provides an interface to the Envisage triangulation structures. The point and triangle data may be accessed through the member functions.

Each triangle consists of 3 vertex indices. These are indices into the point array, which holds a 3D location for each point. The triangles are formed by using the three sets of 3D points as vertices.

Methods:
$triangulation = new Triangulation($name)
 
    $triangulation : Returned triangulation object.
    $name          : Optional triangulation name.
The constructor returns a new triangulation object. If a name is provided then the triangulation of the given name is loaded.

$result = is_valid
 
    $result : Whether a triangulation has been successfully loaded or set.
 
$points = points
 
    $points : The number of points in the triangulation
 
$triangles = triangles
 
    $triangles : Number of triangles in the object
 
($x, $y, $z) = point($i[, $n_x[, $n_y[, $n_z]]])
 
  $x   : If $n_x is not supplied, X coordinate of ith vertex.
  $y   : If $n_x is not supplied, Y coordinate of ith vertex.
  $z   : If $n_x is not supplied, Z coordinate of ith vertex.
  $i   : Number of point of interest.
  $n_x : New X value for the ith vertex.
  $n_y : New Y value for the ith vertex.
  $n_z : New Z value for the ith vertex.
This method can be used to set or examine the location of the ith vertex.

($v1, $v2 ,$v3) = triangle($i[, $n_v1[, $n_v2[, $n_v3]]])
 
  $v1   : If $n_v1 is not supplied, 1st vertex in ith triangle
  $v2   : If $n_v1 is not supplied, 2nd vertex in ith triangle
  $v3   : If $n_v1 is not supplied, 3rd vertex in ith triangle
  $i    : Number of point of interest.
  $n_v1 : New vertex index for the 1st vertex in the ith triangle.
  $n_v2 : New vertex index for the 2nd vertex in the ith triangle.
  $n_v3 : New vertex index for the 3rd vertex in the ith triangle.
This method reads a triangulation from disk. If no name is supplied, then the name given to the constructor is used.

read($name)
 
    $name : Name of triangulation to be read.
This method writes a triangulation to disk. If no name is supplied, then the name given to the constructor is used.

write($name)
 
    $name : Name of triangulation to be written.

--------------------------------------------------------------------------------

Vulcan Classes
Always include the vulcan module at the top of your Perl script when using Vulcan classes.

use vulcan;

vulcan::block_model
vulcan::isisdb
vulcan::grid
vulcan::mapio
vulcan::triangulation
vulcan::tri_attributes

vulcan::block_model
Methods:
The constructor

$bm = new vulcan::block_model(name, mode);
 
    name is the name of the block model
    mode is "r" to read the block model, "w" to allow writing.
The "select" method limits the amount of blocks selected. 
$bm->select(expression);

Where expression is a block selection expression which contains the same switches used by the external block modelling executables such as BCALC. For example,


# Select blocks with solid.00t using proportional volumes
$bm->select("-X -t solid.00t");
 
# or select blocks using a condition
$bm->select('-C "density gt 2.5"');
Caveats when using conditional expressions

The syntax used in the expression is detailed in Appendix B and should not be confused with Perl conditionals. 
The condition needs to be double quoted and because strings in Perl need to be quoted as well some confusion may arise especially when using Perl scalars in the expression. To avoid this use Perls qq function for example: 
$bm->select( qq{-C "fault eqs '$fault_block'"} );
        


$bm->field_list();

returns a list of field names in the block model.

$bm->field_list_numbers();

returns a list of numeric valued field names in the block model.

$bm->field_list_string();

returns a list of string valued field names in the block model.

$bm->is_field(name);

returns true if name is a field.

$bm->is_number(name);

returns true if name is a numeric field.

$bm->is_string(name);

returns true if name is a numeric field.

$bm->get(name);

returns a numeric field value.

$bm->get_string(name);

returns a string field value.

$bm->get_multiple( \@vl );

returns a list of field values.

$bm->put(name, value);

sets field name to value.

$bm->put_string(name, value);

sets field name to string value.

$bm->next();

Move to the next block (writes current block if needed).

$bm->write();

Writes current block.

$bm->eof();

Returns true if eof was encountered, that is, the block model is not currently positioned on a block.

$bm->get_position();

Returns current block position.

$bm->set_position(pos);

Move to the specified position.

$bm->find_xyz(x,y,z);

Finds a block containing the given (x, y, z) coordinate. The coordinate is in block model co-ordinates.

$bm->find_world_xyz(x,y,z);

Finds a block containing the given (x, y, z) coordinate. The coordinate is in real world co-ordinates

$bm->rewind();


Move to the first block.

$bm->close();

Close the block model.

$bm->to_world(x,y,z);

Converts a block model coordinate to a real world coordinate.

$bm->to_model(x,y,z);

Converts a real world coordinate to a block model coordinate.

$bm->model_extent();

Returns the extent of the block model in block model co-ordinates.

$bm->model_origin();

Returns the origin of the block model in real world co-ordinates.

$bm->model_orientation();

Returns the rotation angles for the orientation of the block model. For an unrotated block model these angles are 90, or 0.

$bm->model_n_schemas();

Returns the number of schemes in the block model.

$bm->model_schema_extent(k);

Returns the kth scheme extent.

$bm->model_schema_size(k);

Returns the size of the kth schemes blocks. The result is a list of six numbers; the first three are the x, y and z minimum block size and the second three the x, y and z maximum block size.

$bm->match_extent();

Returns the current blocks extent. If blocks are being selected proportionally according to a triangulation, the extent will be smaller than the actual block extent. The volume of the extent is the same as the volume of the intersection of the block and triangulation.

$bm->block_extent();

Returns the current blocks extent.

$bm->push_select(selection);

Saves the current selection and starts a new selection. The block model is positioned at the first block matching the selection criteria.

$bm->pop_select();

Restores the previously saved selection. The block model returns to the block where it was prior to the push_select(). The previous selection criteria are restored.

Selections can be nested up to five levels deep. The typical use of push_select() and pop_select() is to search a block model for blocks surrounding a block.


--------------------------------------------------------------------------------

Example 1
use vulcan;
 
my $bm = new vulcan::block_model( "n1.bmf", "r" );
 
# Restrict to blocks inside a triangulation
$bm->select("-t abc.00t");
 
for ( ; !$bm->eof(); $bm->next() )
{
    # Report some values.
    print $bm->get("xworld"),
        " ", $bm->get("yworld"),
        " ", $bm->get("zworld"),
        "\n";
}
Example 2
use vulcan;
 
my $bm = new vulcan::block_model( "n1.bmf", "w" );
 
my @fl = $bm->field_list();
 
foreach my $f (@fl)
{
    print "  FIELD: $f\n";
}
 
$bm->rewind();
 
my @vl = ( "density", "xworld", "yworld", "zworld" );
 
for ( my $i = 0; !$bm->eof(); $bm->next(), $i++ )
{
    # Change the density.
    my $d = 100.0 - $bm->get("density");
 
    $bm->put( "density", $d );
 
    # Report some values.
    my @v = $bm->get_multiple( \@vl );
 
    print $i, ": ";
 
    foreach my $x (@v)
    {
        print $x, " ";
    }
    print "\n";
}
Example 3 - using pop_select() and push_select()
sub find_nearest_block_value
{
    my ( $x, $y, $z ) = @_;
 
    # We are assuming that there is some data in the block model. If there is no positive data in the block model, this function will not
    # terminate. If there is very little positive data in the block model, it will run very slowly.
 
    my $best = -9;
    my $bestd;
 
    while ( $best == -9 )
    {
        my $sel = sprintf "-b %f %f %f %f %f %f",
            $x - $delta,
            $x + $delta,
            $y - $delta,
            $y + $delta,
            $z - $delta,
            $z + $delta;
 
        $bm->push_select($sel);
 
        $bestd = $delta**2;
 
        while ( !$bm->eof() )
        {
            my $v = $bm->get($field);
 
            if ( $v >= 0.0 )
            {
                my $x1 = $bm->get("xcentre");
                my $y1 = $bm->get("ycentre");
                my $z1 = $bm->get("zcentre");
 
                my $d  = ( $x - $x1 )**2 + ( $y - $y1 )**2 + ( $z - $z1 )**2;
 
                if ( $d < $bestd )
                {
                    $best  = $v;
                    $bestd = $d;
                }
            }
            $bm->next();
        }
 
        $bm->pop_select();
 
        if ( $best == -9 )
        {
            # No data found.
            $delta += 3 * $block_size;
        }
    }
 
    # Make a guess at the next search distance.
    $delta = sqrt( $bestd + $block_size ) + $block_size;
 
    return $best;
}The condition needs to be double quoted and because strings in Perl need to be quoted as well some confusion may arise especially when using Perl scalars in the expression. To avoid this use Perls qq function e.g.:     $bm->select( qq{-C "fault eqs \"$fault block\""} );
        
        snap_visible and snap_actual are mutually exclusive.label_all and label_major are mutually exclusive.label_scr and label_grd are mutually exclusive.visibleshow_xshow_yshow_zorigin_xorigin_yorigin_zstep_xstep_ystep_zannotate_xannotate_yannotate_zbrightnesscoloursnap_visiblesnap_actualtypelabel_alllabel_majorlabel_scrlabel_grdfont_sizeshow_annotations 
refresh_timer
dial_on
view_rb_stereo
callback_enable
draw_stars
draw_extents
anti-alias
mark_end_on_lines
reduced_zbuffer
smooth
daylight_enable
SizeAngleHeightScaleText DataYZWYZWTypePoint name012345DescriptionGroupPrimitiveFeatureControlValueColourLinePatternClosed
Example 4 - copy a variable or variables from one block to another

use vulcan;
 
my $bmi = new vulcan::block_model( "model1.bmf", "r" );


my $bmo = new vulcan::block_model( "mode12.bmf", "w" );

 
$bmo->rewind();


# Restrict blocks in output block model to those inside a triangulation

$bmo->select("-t abc.00t -X");

for ( ; !$bmo->eof(); $bmo->next() )

{

# get current world coordinates for output block model.

($xc,$yc,$zc)= ($bmo->get("xworld"),$bmo->get("yworld"),

$bmo->get("zworld"));

#find a matching block in the input blockmodel

if (!$bmi->find_world_xyz($xc,$yc,$zc))

{

#read two numeric variables, var1 and var2, from

input model at found location

($tmpvar1,$tmpvar2)=($bmi->get("var1"),$bmi->

get("var2"));

# writing values to output block model in numeric

variables dvar1 and dvar2

$bmo->put("dvar1"), $tmpvar1);

$bmo->put("dvar2"), $tmpvar2);

}

}

--------------------------------------------------------------------------------

vulcan::isisdb
The isisdb Lava interface allows access to Isis databases.

Overview
An Isis database consists of a sequence of records. Each record has a type, which specifies to which table in the design the record belongs; that is, what fields are in the record.

Records in a database are grouped into objects. An object is the set of records that belongs to a particular key. A key is the set of values of the primary key fields in the header table (the first table in the design). For example, in a drilling database each hole is an object, and the key is the value of the HOLEID field in the collar record.

The order of the records in the database is important, as it determines the objects. An object starts with a single header record (a record whose type is the first table in the design) and consists of all subsequent records until the next header record of end of database. The following diagram depicts the objects and records in an example drilling database.

Objects and Records in a Drilling Database


Records in an Isis Database
Therefore a database can be considered a collection of objects, where an object is a collection of records and a record is a collection of fields.

Access to a database is achieved by considering one record at a time. Therefore at any stage a database has a particular position, called the current record position. This position may point to a data record or it may be beyond the data. A position beyond the data is a valid position known as EOD (end of data), and will occur in the following cases;

there are no records in the database. 
a request was made to move to the next record when the database was at the final record. 
a request was made to move to a particular record that doesnt exist (for example record 0, or record 2000 when there are only 100 records in the database). 
When the database is positioned at a particular record, the contents of that record are automatically read into a buffer, known as the record buffer. All operations for reading and updating fields are performed on the record buffer rather than directly on the database.

After updating fields, the modified buffer can be saved back to the database. The record buffer can be saved back to the same position from which it came (that is, the current record position), in which case the existing record in the database is updated. This will occur automatically if the database position is moved to another record. The buffer can also be inserted elsewhere to create a new record in the database. The table type of the record buffer can also be changed to convert the record to a different type.

Methods:
$db = new vulcan::isisdb(name, mode, env);

Opens or creates a database.

name is the name of the database 
mode is "r" to open the database for reading only, "w" to allow writing, or "create" to create the database 
env is the environment name. 
$db->is_open(); 
Returns true if the database is open. This method should always be used immediately after a new vulcan::isisdb() to check whether the database opened successfully.

$db->close(); 
Closes a database. If this is not done before the script exits changes may be lost.

$db->table_list(); 
Returns the list of table names in the design of the database.

$db->field_list(table); 
Returns the list of field names in the given table.

$db->field_index(field, table); 
Returns the index of the field in the table, starting from 1. If the field does not exist then –1 is returned.

$db->field_list_numbers(table); 
Returns the list of names of all numeric fields in the given table.

$db->field_list_strings(table); 
Returns the list of names of all text fields in the given table.

$db->delete_record() 
Deletes the current record. If the current record is a header record then all other records in that object will now belong to the previous object. Therefore, care should be taken to delete the other records, or instead use delete_key() to remove the entire object. Returns 0 on success.

$db->delete_key(key) 
Deletes all records belonging to the object of the given key. Returns 0 on success.

$db->determine_key() 
Internally calculates the key of the current object if the current record is a header record. The object key value can then be retrieved using get_key(). This procedure is useful when using find_key() with a wildcard pattern. Calling determine_key() then get_key() will retrieve the key name of the object that was found.

$db->get_key() 
Returns the key string of the object to which the current record belongs. The determine_key() method must be called first when the current record position points to the object’s header record (for example, immediately after a find_key() call).

$db->is_field(field, table); 
Returns true if the field exists in the given table.

$db->is_number(field, table); 
Returns true if the field is a numeric field in the given table.

$db->is_string(field, table); 
Returns true if the field text field in the given table.

$db->get(field);
$db->get(index); 
Returns the value of a numeric field (specified by name or index) from the record buffer. This method will fail if the field is not numeric.

$db->get_string(field);
$db->get_string(index); 
Returns the text value of a field (specified by name or index) from the record buffer. If the field is numeric, then the text representation will be returned (for example “123.45”).

$db->get_multiple( \@vl ); 
Returns an array of values of several numeric fields (specified by a list of names) from the record buffer. This method will fail if any of the fields are not numeric.

$db->get_multiple_string( \@vl ); 
Returns an array of text values of several fields (specified by a list of names) from the record buffer. If any of the fields are numeric their values will be returned as strings (for example “123.45”).

$db->put(field, value);
$db->put(index, value); 
Sets the value of a numeric field (specified by name or index) in the record buffer to the given number. This method will fail if the field is not numeric.

$db->put_string(field, value);
$db->put_string(index, value); 
Sets the value of a field (specified by name or index) in the record buffer to the given string. If the field is numeric, the string is converted to a number.

$db->next(); 
Moves the current record position to the next record, returning 0 if the resulting position points to a data record (not at the end of data). If, prior to the move, the record buffer has been modified then the changes will be automatically written unless a manual write has already been called (write(), append() or insert() methods).

$db->get_table_name(); 
Returns the table name of the record buffer.

$db->put_table_name(); 
Sets the table name of the record buffer.

$db->write(); 
Writes the record buffer over the current record.

$db->append(); 
Appends the record buffer as a new record at the end of the database. This should only be done when new objects are being written as, in general, it is difficult to determine to which object the new record will belong (whichever object is at the end). To add records to an existing object, use the insert_after() and insert_before() methods.

$db->insert_after(); 
Inserts the record buffer as a new record after the current record.

$db->insert_before(); 
Inserts the record buffer as a new record before the current record. Care should be taken with the database position as if the current record is a header record, then inserting a record before it will add the record to the previous object.

$db->eof(); 
Stands for end of file. Returns true if the current record position is EOD (end of data).

$db->get_position(); 
Returns current record position. This may be used as a bookmark to return to a position later on.

$db->rewind(); 
Sets the current record position to the first record in the database. If there are no records in the database eof() will return true.

$db->set_position(pos); 
Moves the current record position to the given position. The position should not be manually constructed but must have come from a previous get_position() call.

$db->find_key(key); 
Move the current record position to the header record of the given object key. The key may be a full name or contain wildcards. Valid wildcards are;

* - matches 0 or more characters (for example “LK*” will find the first key starting with “LK”) 
% - matches exactly 1 character (for example “%%%F” will match the first 4 character key ending with “F”) 
Returns 0 on success.

$db->next_key(key); 
Move the current record position to the next object (that is, the next header record in the database). Returns 0 on success.

$db->next_same_key(); 
Move the current record position to the next record in the database, returning 0 if the resulting position points to a data record in the same object. Otherwise the database will be in an EOD state and eof() will return true.

$db->append_buffer(table, buffer); 
Appends the given binary string buffer as a new record, of the given table type, at the end of the database. The record will belong to the last object in the database, and so this method should only be used when adding new objects. In conjunction with get_buffer(), this method allows records to be copied to new objects.

$db->get_buffer(); 
Returns a string copy of the record buffer. The returned string is binary and cannot be manipulated. The table type of the record buffer should also be retrieved (using get_table_name()) and stored, as both values are used together with append_buffer().

Example 1: Reading from a Database
use vulcan;
 
# Open the database for reading
my $db = new vulcan::isisdb( "thordemo.dhd", "r" );
die "Could not open database\n" unless $db->is_open();
 
# Retrieve the list of tables in the design
my @tables = $db->table_list();
 
# Loop through each table
foreach my $t (@tables)
{
    # Retrieve the list of fields in the table
    my @fl = $db->field_list($t);
 
    # Print the table and field names
    print "table $t: fields: ";
 
    foreach my $f (@fl)
    {
        print "$f ";
    }
    print "\n";
}
 
# Position the database at the first record
$db->rewind();
 
# Read sequentially through all records
for ( ; !$db->eof(); $db->next() )
{
    # Print the HOLEID and DEPTH field values if the record comes from the COLLAR table
    if ( $db->get_table_name() eq "COLLAR" )
    {
        print $db->get_string("HOLEID"), " ", $db->get("DEPTH"), "\n";
    }
}
 
# Close the database
$db->close();
Example 2: Writing to a Database
use vulcan;
 
# Open the database for reading and writing
my $db = new vulcan::isisdb( "thordemo.dhd", "w" );
die "Could not open database\n" unless $db->is_open();
 
# Find the "L22" hole
print "L22 not found\n" if $db->find_key("L22");
 
# Loop through records of this key
while ( !$db->eof() )
{
    if ( $db->get_table_name() eq "ASSAY" )
    {
        # Calculate the width fields for assay records
        my $width = $db->get("TO") - $db->get("FROM");
 
        $db->put( "WIDTH", $width );
    }
 
    # Move to next record automatically saves changes
    $db->next_same_key();
}
 
# Close the database
$db->close();

--------------------------------------------------------------------------------

vulcan::grid
Methods:
$gr = new vulcan::grid(name);

Opens the grid.

$gr->load(name);

Loads a grid into an existing grid.

$gr->copy(grid);

Assigns a grid.

$gr->save(name);

Saves a grid as the given name. If name is blank, save the grid as the same name it was loaded.

$gr->get_x0();

Returns the lower left x coordinate.

$gr->get_y0();

Returns the lower left y coordinate.

$gr->get_nx();

Returns the size in the x direction.

$gr->get_ny();

Returns the size in the y direction.

$gr->get_dx();

Returns grid cell size in the x direction.

$gr->get_dy();

Returns grid cell size in the y direction.

$gr->n_data();

Returns the number of grid cells.

$gr->set_x0(x0);

Sets the grid origin x.

$gr->set_y0(x0);

Set the grid origin y.

$gr->set_dx(x0);

Sets the grid cell size in x.

$gr->set_dy(x0);

Sets the grid cell size in y. At this time, always set dx and dy to the same value.

$gr->set_size(nx, ny);

Set the number of grid cells for the x and y directions.

$gr->load_triangulation($t);

Given that gr has already been positioned and sized with set_x0(), set_y0(), set_size(), this loads the triangulation by evaluating a surface triangulation at each grid point.

$gr->get_x(k);

Returns the x position for grid cell k.

$gr->get_y(k);

Returns the y position for grid cell k.

$gr->get_w(k);

Returns the value for grid cell k.

$gr->get_mask(k);

Returns the mask value for grid cell k.

$gr->get_elevation(x, y);

Returns the interpolated grid cell elevation for (x, y).

$gr->get_elevation_mask(x, y);

Returns the interpolated mask (x, y).

$gr->put_w(k, w);

Defines the value for a grid cell.

$gr->put_mask(k, w);

Defines the mask for a grid cell.

$gr->ij_to_pos(i, j);

Returns the grid cell number for a given (i, j) cell coordinate.


--------------------------------------------------------------------------------

Example
use vulcan;
 
my $gr = new vulcan::grid("mckbl1a.srg");
 
print $gr->get_nx(), " ", $gr->get_ny(), "\n";
 
my $n    = $gr->get_nx() * $gr->get_ny();
my $z    = 0.0;
my $mask = 0;
 
for (my $i = 0; $i < $n; $i++ )
{
    print $gr->get_x($i), " ", $gr->get_y($i), " ", $gr->get_w($i), "\n";
}

--------------------------------------------------------------------------------

vulcan::mapio
Methods:
$db = new vulcan::mapio(name, mode, env, proj);

name is the name of the file 
mode "r" to read the model, "w" to allow writing 
env is the environment. May be blank if the database is a .map file 
proj is the project name. May be blank if the database is a .map file 
$db->select(expression);

not implemented for mapio.

$db->table_list();

returns a list of available table types. For mapio this is just a list containing "data".

$db->field_list();

returns a list of field names in the block model.

$db->field_list_numbers(table);

returns a list of numeric valued field names in the block model.

$db->field_list_string(table);

returns a list of string valued field names in the block model.

$db->is_field(name, table);

returns true if name is a field.

$db->is_number(name, table);

returns true if name is a numeric field.

$db->is_string(name, table);

returns true if name is a numeric field.

$db->get(name);

returns a numeric field value from the current table.

$db->get_string(name);

returns a string field value from the current table.

$db->get_multiple( \@vl );

returns a list of field values.

$db->put(name, value);

set field name to value.

$db->put_string(name, value);

set field name to string value.

$db->next();

Move to the next block (writes current table if needed).

$db->get_table_type();

Returns the current table type.

$db->put_table_type();

Sets the current table type.

$db->write();

Writes current block.

$db->append();

append table at end of database.

$db->eof();

Returns true if eof was encountered, that is, the database is not currently positioned on a table.

$db->get_position();

Returns current table position.

$db->rewind();

Move to the first table.

$db->set_position(pos);

Move to the given table position.

$db->find_key(key);

Position to the given key, usually a group id.

$db->next_key(key);

Position to the next key.

$db->next_same_key();

Position to the next table, but set eof if not in the same key.


--------------------------------------------------------------------------------

Example
use vulcan;
 
my $db = new vulcan::mapio( "abcabc.map", "r" );
 
my @recs = $db->table_list();
 
foreach my $r (@recs)
{
    my @fl = $db->field_list($r);
 
    print "table $r\n";
 
    foreach my $f (@fl)
    {
        print "  FIELD ", $r, " ", $f, "\n";
    }
}
 
for ( ; !$db->eof(); $db->next() )
{
    print $db->get("X"), " ", $db->get("Y"), " ", $db->get("Z"), " ", $db->get("W"), "\n";
}

--------------------------------------------------------------------------------

vulcan::triangulation
Methods:
$tr = new vulcan::triangulation(name);

Opens and reads the triangulation.

$tr->save(name);

Saves the triangulation.

$tr->is_ok();

Returns true if a triangulation was loaded correctly.

$tr->n_nodes();

Returns the number of nodes in the triangulation.

$tr->n_faces();

Returns the number of faces in the triangulation.

$tr->add_node( x, y, z);

Adds a node to a triangulation.

$tr->add_face( k1, k2, k3);

Adds a face spanning the nodes k1, k2, and k2.

$tr->clear();

Removes all nodes and faces.

$tr->get_elevation( x, y);

For a surface triangulation, returns the elevation at (x, y).

$tr->get_elevation_mask(x, y);

For a surface triangulation, returns the mask at (x, y). If the returned mask is 0, there is no surface above (x, y).


--------------------------------------------------------------------------------

Example
use vulcan;
 
my $tr = new vulcan::triangulation("topo.00t");
 
print $tr->n_faces(), " ", $tr->n_nodes(), "\n";
 
print "elevation of point [500, 600] is " , $tr->get_elevation( 500.0, 600.0 ) , "\n";

--------------------------------------------------------------------------------

vulcan::tri_attributes
Methods:
$attr = new vulcan::tri_attributes(file);

Returns a way to access the attributes stored in a triangulation where file is the full path to the triangulation.

$attr->is_ok();

Returns true if the input triangulation is ok to edit.

$attr->put(name, value, type);

Add new attribute into the triangulation. Returns true if successful, false otherwise.

$attr->clear();

Remove all attributes from the triangulation.

$attr->delete_key(name);

Remove named attribute from the triangulation.

$attr->get_string(name);

Return attributes value in string format.

$attr->get_type(name) ;

Return attributes type in string format.

$attr->get_keys();

Return all attributes keys in string format.

$attr->get_values();

Return all attributes values in string format.

$attr->get_hash();

Return all attributes keys and values in a hash map.

$attr->exists(name);

Check if the attribute already exists in triangulation.

$attr->get_last_error();

Returns the last error.

$attr->save();

Save edited attributes into triangulation.


--------------------------------------------------------------------------------

Example 1:
use vulcan;
 
my $attr = new vulcan::tri_attributes("E:\\fine.00t");
 
unless ( $attr->is_ok() )
{
    die "Unable to load specified triangulation";
}
 
my $intVal   = 10;
my $dlVal    = 10.55;
my $boolVal  = $intVal != $dlVal;
my $strVal_1 = "10";
my $strVal_2 = "10.33";
my $strVal_3 = "06/07/2012";
 
print $attr->get_last_error() unless  $attr->put( "test1", $strVal_2, "NOTYPE" );

--------------------------------------------------------------------------------

Example 2
This script reads a CSV file and assigns specific column contents as Attributes to triangulation files found on a given folder (Currently hard coded in the $foldername variable).

use Lava;
use vulcan;
use File::Basename;
use autodie;
 
# Folder where triangulations are stored and CSV file name
my $csvfile    = "tridata.csv";
my $foldername = "so_run1_scn4.tri";
 
Lava::Show("Working ... Please wait");
 
# Read CSV data where columns are: triname,au,cu,type,area,volume,thickness
open my $if_fh, q{<}, $csvfile;
while (<$if_fh>)
{
    chomp;
 
    # Comma separated split
    my ($triname, $au, $cu, $type, $area, $volume, $thickness) = split /\s*,\s*/, $_;
 
    $data{ $triname }{au}     = $au;
    $data{ $triname }{cu}     = $cu;
    $data{ $triname }{type}   = $type;
    $data{ $triname }{area}   = $area;
    $data{ $triname }{volume} = $volume;
    $data{ $triname }{tonnes} = $thickness;
}
close $if_fh;
 
# Cycle through all triangulations in folder and set attributes
foreach my $trifile ( glob("$foldername/*.00t") )
{
    my $triname = basename($trifile);
 
    if ( exists $data{$triname} )
    {
        setattributes( $foldername, $triname, $data{$triname}{au}, $data{$triname}{cu}, $data{$triname}{type}, $data{$triname}{'volume'}, $data{$triname}{tonnes});
    }
    else
    {
        print "Data for $triname could not be found\n";
    }
}
 
# subroutine to set attributes to triangulations
sub setattributes
{
    my ( $foldername, $triname, $au, $cu, $type, $volume, $tonnes ) = @_;
 
    my $tri = new vulcan::tri_attributes("$foldername/$triname");
 
    $tri->put( "FileName", $triname,    "String" );
    $tri->put( "Folder",   $foldername, "String" );
    $tri->put( "Augrade",  $au,         "Double" );
    $tri->put( "Cugrade",  $cu,         "Double" );
    $tri->put( "OreType",  $type,       "String" );
    $tri->put( "Volume",   $volume,     "Double" );
    $tri->put( "Tonnes",   $tonnes,     "Double" );
 
    $tri->save();
}

--------------------------------------------------------------------------------

Related topics
Introduction 
Running a Lava Script 
Functions 
Classes 
Example 
GPAN 
Need more help?
Go to www.maptek.com/support to access the Maptek Client Support page. 

Have feedback on this help topic? Share it with us at VulcanDocumentation@maptek.com. 
Copyright© 2016 Maptek Pty Limited 
