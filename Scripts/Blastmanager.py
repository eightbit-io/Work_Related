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


class BlastHole:
    """ Blast hole class
        requires : Hole name, colar x, collar y, and length.
        initialises all other properties of a blast hole.
        Calculates properties as they become availible.
    """
    """The summary line for a class docstring should fit on one line.

        If the class has public attributes, they may be documented here
        in an ``Attributes`` section and follow the same formatting as a
        function's ``Args`` section. Alternatively, attributes may be documented
        inline with the attribute's declaration (see __init__ method below).

        Properties created with the ``@property`` decorator should be documented
        in the property's getter method.

        Attributes
        ----------
        attr1 : str
            Description of `attr1`.
        attr2 : :obj:`int`, optional
            Description of `attr2`.

    """

    holecount = 0
    shot = []

    def __init__(self, name): #, collarX, collarY, length)
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
            param1 : str
                Description of `param1`.
            param2 : :obj:`list` of :obj:`str`
                Description of `param2`. Multiple
                lines are supported.
            param3 : :obj:`int`, optional
                Description of `param3`.
            """

        BlastHole.holecount += 1 # increase hole count

        # Create given object properties
        self.name = "A" + str(name+1)
        #self.collar_X = collarX
        #self.collar_Y = collarY
        #self.design_depth = length

        # Drilling Properties
        self.drilled_depth = None
        self.hard_start = None
        self.hard_finish = None
        self.drilled_date = None

        # Blasting Properties
        self.dip_depth = None
        self.water_depth = None

        if self.hard_start is None:
            self.stem_height = 5
        elif self.hard_start < 3:
            self.stem_height = 3
        elif self.hard_start > 5:
            self.hard_start = 5
        else:
            self.hard_start = self.hard_start

        # Calculate object properties
        #self.blast_volume = self.collarX * self.collarY * self.length


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

    for x in range(10):
        # print(len(shot), " holes created")
        pass

    for x in range(10):
        newhole = BlastHole(x)
        # shot.append(newhole)
        # print("added hole : ", shot[x].name)
