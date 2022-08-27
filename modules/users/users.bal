import ballerina/http;

const API_URL = "https://api.sleeper.app/v1/";

# Returns the user with the given username.
#
# + username - username
# + return - user from username
public function getUserByUsername(string username) returns json|error {
    http:Client sleeper = check new(API_URL);
    json user = check sleeper->get("/user/" + username);
    return user;
}

# Returns the user with the given user id.
#
# + id - user id
# + return - user from user id
public function getUserById(string id) returns json|error {
    http:Client sleeper = check new(API_URL);
    json user = check sleeper->get("/user/" + id);
    return user;
}