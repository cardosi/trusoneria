# Trusoneria

This is the coding assessment project for Trusona, built by Cam Cardosi.

## Let's Get This Pizza Thing Running:
* Clone the repo and navigate to the root
* `docker-compose build`
* `docker-compose run web bin/rails db:create db:migrate db:seed`
* `docker-compose up`

## Run the Tests:
* `docker-compose run web bundle exec rspec`

## Take it for a spin:
* See the Pizzas:
  * `curl http://0.0.0.0:3000/pizzas`
* See the Toppings:
  * `curl http://0.0.0.0:3000/toppings`
* Create a Pizza:
  * `curl -H "Content-Type: application/json" -H "Accept: application/json" http://0.0.0.0:3000/pizzas --data '{"pizza": {"name": "belleboche", "description": "Pepperoni, Sausage, Mushroom"}}'`
* Create a Topping:
  * `curl -H "Content-Type: application/json" -H "Accept: application/json" http://0.0.0.0:3000/toppings --data '{"topping": {"name": "Green Pepper"}}'`
* Add a Topping to a Pizza:
  * `curl -H "Content-Type: application/json" -H "Accept: application/json" http://0.0.0.0:3000/pizzas/1/toppings --data '{"pizza_topping": {"topping_id": 1}}'`
* See the Toppings on a Pizza:
  * `curl http://0.0.0.0:3000/pizzas/1/toppings`
