from parsers import *
from models import *
from pooling import *



instance = getData()
#instance = applySkipping(instance)

model,x,y = sessionModel(instance)
addMissionCompatibilityConstraints(model,x,y,instance)
addTeamMatesConstraint(["fabien","luis"],model,x,y,instance)
addEnemyGroupsConstraints(["luis"],["niels","victor","kea"],model,x,y,instance)

tolerance = 1
getSolutionPool(tolerance,model,x,y,instance)
