import ballerina/http;

const API_URL = "https://api.sleeper.app/v1/";

# Returns all nfl players. 
#
# + return - all nfl players
public function getAllPlayers() returns json|error {
    http:Client sleeper = check new(API_URL);
    json players = check sleeper->get("/players/nfl");
    return players;
}

# Returns all nfl players. 
# 
# https://api.sleeper.app/v1/players/<sport>/trending/<type>?lookback_hours=<hours>&limit=<int>
#
# + addOrDrop - can either by 'add' (trending up) or 'drop' (trending down)
# + lookbackHours - number of hours to look back
# + max - max number of results to return
# 
# + return - all nfl players
public function getTrendingPlayers(string addOrDrop, int lookbackHours = 24, int max = 25) returns json|error {
    http:Client sleeper = check new(API_URL);
    json[] players = check sleeper->get("/players/nfl/trending/" + addOrDrop + "?lookback_hours=" + lookbackHours.toString() + "&limit=" + max.toString());
    return players;
}
