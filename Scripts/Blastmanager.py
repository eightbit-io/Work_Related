class BlastHole:
    """ Blast hole class 
        requires : Hole name, colar x, collar y, and length.
        initialises all other properties of a blast hole.
        Calculates properties as they become availible.
    """
    holecount = 0
    
    def __init__(self, name): #, collarX, collarY, length)

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
        
        if self.hard_start == None:
            self.stem_height = 5
        elif self.hard_start < 3:
            self.stem_height = 3
        elif self.hard_start > 5:
            self.hard_start = 5
        else: 
            self.hard_start = self.hard_start
            
        # Calculate object properties
        #self.blast_volume = self.collarX * self.collarY * self.length

shot = []        
for x in range(10):
    newhole = BlastHole(x)
    shot.append(newhole)
    print("added hole : ", shot[x].name )

print (len(shot), " holes created")