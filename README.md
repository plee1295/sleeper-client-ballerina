# Sleeper API Client - Ballerina

## Description

This package was created to allow ballerina developers an easy way to interact with the Sleeper fantasy football API.

## Usage

To import the entire package:

```ballerina
import parker/sleeper as sleeper;
```

To import a specific module:

```ballerina
import parker/sleeper.drafts as drafts;
```

Available modules include drafts, leagues, players, and users.

### Drafts Module

Available methods include:

- getAllDraftsForUser
- getAllDraftsForLeague
- getDraftById
- getDraftPicks
- getTradedDraftPicks

### Leagues Module

Available methods include:

- getAllLeaguesForUser
- getLeagueById
- getRostersForLeague
- getUsersInLeague
- getMatchupsForLeague
- getWinnersBracketForLeague
- getLosersBracketForLeague
- getLosersBracketForLeague
- getTradedPicksForLeague
- getNflState

### Players Module

Available methods include:

- getAllPlayers
- getTrendingPlayers

### Users Module

Available methods include:

- getUserByUsername
- getUserById
