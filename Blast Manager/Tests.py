import unittest
import BlastManagerClasses as bm

class testinit(unittest.TestCase):

    def testhole(self):
        testhole = bm.Drillhole("A10",10,10,10)
        self.assertEqual(testhole.holeid, "A10")

if __name__ == '__main__':
    unittest.main()