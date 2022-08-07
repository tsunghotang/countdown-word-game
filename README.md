# Countdown Word Game
A word game resembling the Channel 4 Countdown game show.

The app is served by my [word-game-api](https://github.com/tsunghotang/word-game-api).

This project was built in Rails to gain a better understanding and practical experience with StimulusJS, AJAX in Rails, JBuilder and Service Objects.

---
![](/screenshots/Screenshot1.png)
![](/screenshots/Screenshot2.png)

App home: https://countdown-word-game.herokuapp.com/

---

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### DB Setup
```
rails db:create
rails db:migrate
```

### Run a server
```
rails s
```

## Built With
- [Rails 6](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [Figma](https://www.figma.com) — Prototyping

## Todo
### Bugs
  - ~~Submitting a word with a period at the end causes the API to return 404 and causes the partials to return undefined.~~
