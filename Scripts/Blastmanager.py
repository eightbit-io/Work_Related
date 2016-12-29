#!/usr/bin/python3
"""Drill and Blast manager project

    This module will hopefully one day be the combined drill and blast manager experience
    importing an area polygon and creating the complete design and information package.

    The below docstring is an example numpy docstring that will be this projectrs standard.

    Example
    -------
    Examples can be given using either the ``Example`` or ``Examples``
    sections. Sections support any reStructuredText formatting, including
    literal blocks::

        $ python example_numpy.py


    Section breaks are created with two blank lines. Section breaks are also
    implicitly created anytime a new section starts. Section bodies *may* be
    indented:

    Notes
    -----
        This is an example of an indented section. It's like any other section,
        but the body is indented to help it stand out from surrounding text.

    If a section is indented, then a section break is created by
    resuming unindented text.

    Attributes
    ----------
    module_level_variable1 : int
        Module level variables may be documented in either the ``Attributes``
        section of the module docstring, or in an inline docstring immediately
        following the variable.

        Either form is acceptable, but the two should not be mixed. Choose
        one convention to document module level variables and be consistent
        with it.


    .. _NumPy Documentation HOWTO:
    https://github.com/numpy/numpy/blob/master/doc/HOWTO_DOCUMENT.rst.txt
"""

import string # used in string.ascii_lowercase for main loop

class DrillHole:
    """Call that for each blast hole"""

    def __init__(self, holeid, collar_x, collar_y, holelength):
        """Example of docstring on the __init__ method.

            The __init__ method may be documented in either the class level
            docstring, or as a docstring on the __init__ method itself.

            Either form is acceptable, but the two should not be mixed. Choose one
            convention to document the __init__ method and be consistent with it.

            Note
            ----
            Do not include the `self` parameter in the ``Parameters`` section.

            Parameters
            ----------
            holeid : str
                the hole ID eg A1 -> a10

            collarX : int
                Collar location in the x direction. GDA 94

            collarY : int
                Collar location in the x direction. GDA 94

            length : int
                Down hole depth in metres

            """

        self.holeid = holeid
        self.collar_x = collar_x
        self.collar_y = collar_y
        self.holelength = holelength

    def stemlength():
        pass

    def holetonnage():
        pass


class CambeyBlast:
    """ Class that contains full detials and methods for each blast.

        requires : Hole name, colar x, collar y, and length.
        initialises all other properties of a blast hole.
        Calculates properties as they become availible.

        If the class has public attributes, they may be documented here
        in an ``Attributes`` section and follow the same formatting as a
        function's ``Args`` section. Alternatively, attributes may be documented
        inline with the attribute's declaration (see __init__ method below).

        Attributes
        ----------
        attr1 : str
            Description of `attr1`.
        attr2 : :obj:`int`, optional
            Description of `attr2`.

    """

    def __init__(self, name):
        self.blastname = name
        self.holes = []

    def createholes(self, holeid, collar_x, collar_y, holelength):
        """ Add holes to list created in init"""
        self.holes.append(DrillHole(holeid, collar_x, collar_y, holelength))






    def example_method(self, param1, param2):
        """Class methods are similar to regular functions.

        Note
        ----
        Do not include the `self` parameter in the ``Parameters`` section.

        Parameters
        ----------
        param1
            The first parameter.
        param2
            The second parameter.

        Returns
        -------
        bool
            True if successful, False otherwise.

        """
        return True





if __name__ == "__main__":

    BLAST = CambeyBlast("YC053")
    for x in string.ascii_lowercase:
        BLAST.createholes(x, 10, 10, 10)

    for hole in BLAST.holes:
        print(hole.holeid)
