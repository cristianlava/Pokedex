## Pokedex API

A Ruby on Rails backend api.
The api contains seeded data of all the original 151 Pokemon.

### Getting Started

Make sure you know how to install postgress. As this backend relies on it.
```ruby
rails db:create
rails db:migrate
rails db:seed
```
[![Image from Gyazo](https://i.gyazo.com/3f59c22a8a27b4aee8f75c3382692d93.png)](https://gyazo.com/3f59c22a8a27b4aee8f75c3382692d93)

## Backend Built With
- [Bcrypt-ruby](https://github.com/codahale/bcrypt-ruby) - Used for storing users passwords.
- [PokeApi](https://pokeapi.co/) - API used to gather pokemon data.
- [JWT](https://github.com/jwt/ruby-jwt) - JSON web token for added security.
- [Rest-Client](https://github.com/rest-client/rest-client) - This is what we use to make a call to the apis endpoint, and converting it into JSON.

After that just go back to the frontend:
[Pokedex Client](https://github.com/crisleiva/Pokedex-Client)
