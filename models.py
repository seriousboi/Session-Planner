from mip import *
from copy import copy


def sessionModel(instance):
    nbPlayers,nbSlots,nbMissions,players,slotsDates,dispos,skipper,progress = instance
    model = Model(name = "session model", solver_name="CBC")

    x = {}
    for player in players:
        x[player] = []
        for slotIndex in range(nbSlots):
            if dispos[player][slotIndex] == 1:
                x[player] += [model.add_var(name=player+"_"+str(slotIndex),var_type=BINARY)]
            else:
                x[player] += [0]
    y = []
    for slotIndex in range(nbSlots):
        y += [model.add_var(name="session_"+str(slotIndex),var_type=BINARY)]

    #présence unique
    for player in players:
        model += (xsum(x[player][slotIndex] for slotIndex in range(nbSlots)) <= 1)

    #nb joueurs minimum pour session
    for slotIndex in range(nbSlots):
        model += (3*y[slotIndex] <= xsum(x[player][slotIndex] for player in players))

    #présence seulement lors des sessions
    for player in players:
        for slotIndex in range(nbSlots):
            if dispos[player][slotIndex] == 1:
                model += (x[player][slotIndex] <= y[slotIndex])

    #nb joueurs maximum dans une session
    for slotIndex in range(nbSlots):
        model += (xsum(x[player][slotIndex] for player in players) <= 3)

    model.objective = maximize(xsum(100*y[slotIndex] for slotIndex in range(nbSlots)))
    model.verbose = False
    return model,x,y


def addIncompatibleConstraint(playerA,playerB,model,x,y,instance):
    nbPlayers,nbSlots,nbMissions,players,slotsDates,dispos,skipper,progress = instance
    for slotIndex in range(nbSlots):
        if (dispos[playerA][slotIndex] == 1 and dispos[playerB][slotIndex] == 1):
            model += (x[playerA][slotIndex] + x[playerB][slotIndex] <= 1)


def addEnemyGroupsConstraints(groupA,groupB,model,x,y,instance):
    for playerA in groupA:
        for playerB in groupB:
            addIncompatibleConstraint(playerA,playerB,model,x,y,instance)


def addTeamMatesConstraint(teammates,model,x,y,instance):
    nbPlayers,nbSlots,nbMissions,players,slotsDates,dispos,skipper,progress = instance
    for pairIndex in range(len(teammates)-1):
        teammateA = teammates[pairIndex]
        teammateB = teammates[pairIndex+1]
        #print(teammateA,"and",teammateB,"are teammates")
        for slotIndex in range(nbSlots):
            if (dispos[teammateA][slotIndex] == 1 or dispos[teammateB][slotIndex] == 1):
                model += (x[teammateA][slotIndex] == x[teammateB][slotIndex])


def addMissionCompatibilityConstraints(model,x,y,instance):
    nbPlayers,nbSlots,nbMissions,players,slotsDates,dispos,skipper,progress = instance

    playersFromIndex = []
    for player in players:
        playersFromIndex += [player]

    for A in range(nbPlayers):
        for B in range(A+1,nbPlayers):
            for C in range(B+1,nbPlayers):
                playerA = playersFromIndex[A]
                playerB = playersFromIndex[B]
                playerC = playersFromIndex[C]
                if getMissionInCommon(playerA,playerB,playerC,instance) == None:
                    #print(playerA,playerB,playerC,"disjointed")
                    for slotIndex in range(nbSlots):
                        if (dispos[playerA][slotIndex] == 1 and
                            dispos[playerB][slotIndex] == 1 and
                            dispos[playerC][slotIndex] == 1):
                            model += (x[playerA][slotIndex]+x[playerB][slotIndex]+x[playerC][slotIndex] <= 2)


def printSolution(x,y,instance):
    print("############ Solution ############")
    nbPlayers,nbSlots,nbMissions,players,slotsDates,dispos,skipper,progress = instance

    nbSessions = 0
    for slotIndex in range(nbSlots):
        nbSessions += y[slotIndex].x
    print(int(nbSessions),"Sessions")

    for slotIndex in range(nbSlots):
        if y[slotIndex].x == 1:
            print("\n"+slotsDates[slotIndex]+":")

            line = ""
            sessionPlayers = []
            for player in players:
                if dispos[player][slotIndex] == 1 and x[player][slotIndex].x == 1:
                    line += player+" "
                    sessionPlayers += [player]
            print("Mission",getMissionInCommon(sessionPlayers[0],sessionPlayers[1],sessionPlayers[2],instance)+1)
            print(line)
    print()


def getMissionInCommon(playerA,playerB,playerC,instance):
    nbPlayers,nbSlots,nbMissions,players,slotsDates,dispos,skipper,progress = instance
    for missionIndex in range(nbMissions):
            if (progress[playerA][missionIndex] == 1 and
                progress[playerB][missionIndex] == 1 and
                progress[playerC][missionIndex] == 1):
                return missionIndex
    return None
