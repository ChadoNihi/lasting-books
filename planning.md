# (not only books: podcasts, movies, etc)

# Lasting books, remread, lasting reading experience, read-write, IO

The app gets the user to reflect on what they have read / watched / listened, facilitating (deeper) understanding, critical thinking, and long-term memory retention of the ideas.

## Key techniques
 - note-taking
 - summaries / reviews
 - author's position
 - 5 min think timers

## Definitions
 - *Readable entity* (RE): a book, article, story, or paper

### An RE migrates between these lists:
 - consider for reading
 - to read
 - in progress
 - finished
 - reviewed

## User stories
### As an unauthenticated user, I can:
 - register / log in
### As an authenticated user, I can:
 - log out
 - delete my account
 - add an RE to one of the lists
 - browse each list
 - add multiple notes to each RE
 - record expectations of unfinished REs
 - give predictions on how a story will unwind, and/or on author's conclusions
 - [[should we introduce numerical ratings at all?] rate a (reviewed?) finished RE on different aspects]

## Tech stuff
(server-rendered?) SPA
### Stack
 - inferno js (elm?)
 - redux (elm?)
 - phoenix (express?)
 - postgreSQL (?)

###### keep
Qs, pics, wiki first, important pages, prompts
