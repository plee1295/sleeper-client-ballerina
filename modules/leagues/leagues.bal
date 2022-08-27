import ballerina/http;

const API_URL = "https://api.sleeper.app/v1/";

# Returns all leagues for a user with the given id during the given year. 
#
# + id - user id
# + season - year
# + return - league from id
public function getAllLeaguesForUser(string id, string season) returns json|error {
    http:Client sleeper = check new(API_URL);
    json[] leagues = check sleeper->get("/user/" + id + "/leagues/nfl/" + season);
    return leagues;
}

# Returns the league with the given league id.
#
# + id - league id
# + return - league from id
public function getLeagueById(string id) returns json|error {
    http:Client sleeper = check new(API_URL);
    json league = check sleeper->get("/league/" + id);
    return league;
}

# Returns the rosters for the league given by id. 
#
# + id - league id
# + return - rosters for league
public function getRostersForLeague(string id) returns json|error {
    http:Client sleeper = check new(API_URL);
    json[] rosters = check sleeper->get("/league/" + id + "/rosters");
    return rosters;
}

# Returns the users for the league given by id. 
#
# + id - league id
# + return - users for league
public function getUsersInLeague(string id) returns json|error {
    http:Client sleeper = check new(API_URL);
    json[] users = check sleeper->get("/league/" + id + "/users");
    return users;
}

# Returns the matchups for the league given by id for the given week.
#
# + id - league id
# + week - matchup week
# + return - matchups for league for given week
public function getMatchupsForLeague(string id, int week) returns json|error {
    http:Client sleeper = check new(API_URL);
    json[] matchups = check sleeper->get("/league/" + id + "/matchups/" + week.toString());
    return matchups;
}

# Returns the winner's bracket matchups for a league given by id.
#
# + id - league id
# + return - winner's bracket matchups for league
public function getWinnersBracketForLeague(string id) returns json|error {
    http:Client sleeper = check new(API_URL);
    json[] bracket = check sleeper->get("/league/" + id + "/winners_bracket");
    return bracket;
}

# Returns the loser's bracket matchups for a league given by id.
#
# + id - league id
# + return - loser's bracket matchups for league
public function getLosersBracketForLeague(string id) returns json|error {
    http:Client sleeper = check new(API_URL);
    json[] bracket = check sleeper->get("/league/" + id + "/losers_bracket");
    return bracket;
}

# Returns transactions for the league with the given league id.
#
# + id - league id
# + week - matchup week
# + return - transactions for league by week
public function getTransactionsForLeagueByWeek(string id, int week) returns json|error {
    http:Client sleeper = check new(API_URL);
    json[] transactions = check sleeper->get("/league/" + id + "/transactions/" + week.toString());
    return transactions;
}

# Returns the traded picks for the league given by id. 
#
# + id - league id
# + return - league from id
public function getTradedPicksForLeague(string id) returns json|error {
    http:Client sleeper = check new(API_URL);
    json[] picks = check sleeper->get("/league/" + id + "/traded_picks");
    return picks;
}

# Returns the current nfl state.
#
# + return - current nfl state
public function getNflState() returns json|error {
    http:Client sleeper = check new(API_URL);
    json state = check sleeper->get("/state/nfl");
    return state;
}
