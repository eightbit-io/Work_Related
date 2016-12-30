#!/usr/bin/env python3
"""Clean skin blast manager"""
__modulename__ = "Blast Manager"
__author__ = "chris"
__version__ = "0.0.2a"
__date__ = "2016-12-30"
__status__ = "pre-alpha"

class Drillhole:
    """Generic Drill Hole Class"""
    def __init__(self):
        pass

    def __str__(self):
        return "not yet implemented"


class Blast:
    """Generic Blast Class"""
    def __init__(self):
        pass

    def __str__(self):
        return "not yet implemented"

    def createdummyhole(self):
        """create dummy holes for testing."""
        pass

    def createhole(self):
        """Create individual holes"""
        pass

    def importcsv(self):
        """import csv of holes"""
        pass





if __name__ == "__main__":
    print("\n", __modulename__, __status__, __version__, "by", __author__, "Last Updated:", __date__, sep=' ')

