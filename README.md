# Decision Maker

The Decision-Maker app was created using HTML, CSS/SASS, jQuery, Javascript, AJAX, Bootstrap, and Ruby on Rails. This app allows users to create a list and items within a list. In addition, users can edit, delete, and add an item and list. The main purpose of this app is to help users make decisions by randomly displaying an item that was not checked off in a list.

## Frontend Repo And Deployed Site Links:

Link to Frontend Repo: https://github.com/pnguyen44/decision-maker

Link to Frontend Deployed Site: https://pnguyen44.github.io/decision-maker/

## ERD

https://i.imgur.com/dP76peN.png

## API end-points

| Verb   | URI Pattern            | Controller#Action |
| ------ | ---------------------- | ----------------- |
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| DELETE | `/sign-out/:id`        | `users#signout`   |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| GET    | `/lists`               | `lists#index`     |
| POST   | `/lists`               | `lists#create`    |
| GET    | `/lists/:id`           | `lists#show`      |
| PATCH  | `/lists/:id`           | `lists#update`    |
| DELETE | `/lists/:id`           | `lists#destroy`   |
| GET    | `/items`               | `items#index`     |
| POST   | `/items`               | `items#create`    |
| GET    | `/items/:id`           | `items#show`      |
| PATCH  | `/items/:id`           | `items#update`    |
| DELETE | `/items/:id`           | `items#destroy`   |

