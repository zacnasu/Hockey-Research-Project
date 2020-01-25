import nhlscrapi
from nhlscrapi.games.game import GameType, GameKey, Game
from random import seed
from random import sample, randint
# seed random number generator
seed(1)
# prepare a sequence
sequence = [i for i in range(1271)]
# select a subset without replacement
subset = sample(sequence, 60)
print(subset)

for i in subset:
    season = 2019                                    # 2013-2014 season
    game_num = i
    game_type = GameType.Regular                     # regular season game
    game_key = GameKey(season, game_type, game_num)
    game = Game(game_key)
    period = randint(1, 3)
    # game.load_all()
    print(game.matchup)
    print(period)
