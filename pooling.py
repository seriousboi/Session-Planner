from models import *


def getSolutionPool(tolerance,model,x,y,instance):
    model.write("writtenModel.lp")
    model.optimize()
    printSolution(x,y,instance)

    optimum = model.objective_value
    currentOptimum = optimum

    while currentOptimum > optimum - tolerance and currentOptimum > 0:
        removeSolutionFromPool(model,x,y,instance)

        model.optimize()
        currentOptimum = model.objective_value
        if currentOptimum > optimum - tolerance:
            printSolution(x,y,instance)


def removeSolutionFromPool(model,x,y,instance):
    nbPlayers,nbSlots,nbMissions,players,slotsDates,dispos,skipper,progress = instance
    variablesAt1 = []
    variablesAt0 = []

    for player in players:
        for slotIndex in range(nbSlots):
            if dispos[player][slotIndex] == 1:
                if x[player][slotIndex].x == 1:
                    variablesAt1 += [x[player][slotIndex]]
                else:
                    variablesAt0 += [x[player][slotIndex]]

    model += (xsum(1-variable for variable in variablesAt1) + xsum(variable for variable in variablesAt0) >= 1)
