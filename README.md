# Leaderboard API

A simple REST API for managing game leaderboards.

## Features

* Create and manage games
* Add scores to games
* Retrieve leaderboard data
* Automatic scaling and SSL encryption
* Free tier available

## API Endpoints

### Games

#### Create Game
`POST /games`

Creates a new game instance.

##### Request Body
```json
{
  "name": "Game Name"
}
```

##### Response
```json
{
  "id": "1",
  "name": "Game Name"
}
```

### Scores

#### Add Score
`POST /scores`

Adds a new score to a game.

##### Request Body
```json
{
  "gameId": "1",
  "user": "Player Name",
  "score": 42
}
```

##### Response
```json
{
  "id": 1,
  "gameId": "1",
  "user": "Player Name",
  "score": 42
}
```

#### Get Leaderboard
`GET /scores`

Retrieves all scores for all games.

##### Response
```json
[
  {
    "id": 1,
    "gameId": "1",
    "user": "Ngala Mac",
    "score": 42
  },
  {
    "id": 2,
    "user": "Ngala Mac",
    "score": 35
  }
]
```

## Getting Started

1. Clone the repository:
```bash
git clone https://github.com/ngalamac/leaderboardz-api.git
```

2. Install dependencies:
```bash
npm install
```

3. Start local development server:
```bash
npm start
```

## Testing

Run tests:
```bash
npm test
```

## Deployment

The API is hosted on Render at:
```
https://github.com/ngalamac/leaderboardz-api.git/
```

## Contributing

Contributions are welcome! Please submit pull requests with:

1. Clear commit messages
2. Updated documentation
3. Passing tests
