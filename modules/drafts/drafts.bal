import ballerina/http;

const API_URL = "https://api.sleeper.app/v1/";

# Returns all drafts for the given user by id. 
#
# + id - user id
# + season - year
# + return - all drafts for user
public function getAllDraftsForUser(string id, string season) returns json|error {
    http:Client sleeper = check new(API_URL);
    json[] drafts = check sleeper->get("/user/" + id + "/drafts/nfl/" + season);
    return drafts;
}

# Returns all drafts for a given league id.
#
# + id - league id
# + return - all drafts for league
public function getAllDraftsForLeague(string id) returns json|error {
    http:Client sleeper = check new(API_URL);
    json[] drafts = check sleeper->get("/league/" + id + "/drafts");
    return drafts;
}

# Returns the draft with the given draft id.
#
# + id - draft id
# + return - draft from id
public function getDraftById(string id) returns json|error {
    http:Client sleeper = check new(API_URL);
    json draft = check sleeper->get("/draft/" + id);
    return draft;
}

# Returns the draft picks for a given draft by id. 
#
# + id - draft id
# + return - draft picks by id
public function getDraftPicks(string id) returns json|error {
    http:Client sleeper = check new(API_URL);
    json[] picks = check sleeper->get("/draft/" + id + "/picks");
    return picks;
}

# Returns the traded draft picks for a given draft by id. 
#
# + id - draft id
# + return - traded draft picks from id
public function getTradedDraftPicks(string id) returns json|error {
    http:Client sleeper = check new(API_URL);
    json[] picks = check sleeper->get("/draft/" + id + "/traded_picks");
    return picks;
}
