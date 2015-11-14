# Eat It! - Your Custom Meal Plan

<<<<<<< HEAD
* https://github.com/kelvinma/grocery_list_frontend/tree/development "Client-side GitHub Repo"
* https://github.com/kelvinma/grocery_list_api/tree/development "Server-side GitHub Repo"

* http://kelvinma.github.io/grocery_list_frontend/ "Live Application"
=======
* (https://github.com/kelvinma/grocery_list_frontend/tree/development "Client-side GitHub Repo")
* (https://github.com/kelvinma/grocery_list_api/tree/development "Server-side GitHub Repo")

* (http://kelvinma.github.io/grocery_list_frontend/ "Live Application")
>>>>>>> ae59fa5836f6cd7ee4b4482ecaefad599b993b8c

## Introduction

In the United States, 31 percent of the available food supply goes to waste, uneaten. With so much excess in uneaten food waste in the American household, Eat It! is my attempt at helping users better manage their weekly food expenditures and consumption.

## Planning

### User Stories

My initial planning process began by formulating user stories for how someone would interact with my front end. In this first iteration of Eat It, there would only be one primary user role.

User functions would work as follows:

1. Weekly Menu Creation

  * User creates a weekly menu
    * Satisfying condition: User is able to create an empty menu, named by date

  * User adds recipes to weekly menu via common database
    * User is able to see recipe selection in database, adds to weekly menu
    * User can edit the menu by adding or deleting additional recipes

2. Recipe Review and Creation

  * Users are able to review recipes
    * Recipe details are displayed for user to make decision for addition to weekly menu

  * Users can create new recipes
    * Create new recipes with corresponding ingredients list
    * Users can add additional ingredients to corresponding data table
    * Users can edit recipes as needed

3. Grocery List generation

  * Users can create a shopping list for their weekly menu
    * Users can select ingredients from their individual recipes to be added to a grocery list

## Programming Tools

### Client-side

The client side of this single-page application is built in HTML5/CSS3 using a Bootstrap template. Interactivity is handled via JavaScript, using a jQuery library. JSON from the server is parsed in to HTML using Handlebars templates.

Wireframing for this project was done via Bootstrap templating. By starting with the template, I was able to customize my presentation via the content rather than trying to do the buildout myself. Given the time constraints, and my relative lack of comfort with HTML/CSS architecture, I found this to be the most effective and efficient approach for front-end design. It proved to be successful.

### Server-side

The server-side application is built using Ruby on Rails with a PostgreSQL database. Initial data mapping was handled via a (http://www.cacoo.com "Cacoo.com") ERD design tool.

![alt text](https://github.com/kelvinma/grocery_list_api/blob/development/database.png?)

ActiveRecord Querying and JSON rendering was handled through extensive use of Active Model Serialization, which allows for custom outputs of combined data tables via join table querying. Use of serialization was particularly helpful given the scope of my project, and is essentially the glue that holds all of my tables together.

## Unsolved Problems and Issues

My initial plans for the project, whether through my being overly ambitious or my own ignorance of its actual scope, proved to be beyond the capacity of my abilities to complete all of my intended features in the allotted time.

The size and scale of my database -- 3 primary data tables connected via 3 join tabes -- presented a number of challenges as I spent a significant amount of time learing serialization in order to achieve the proper functionality.

My recipe creation feature remains incomplete, and it became obvious quite quickly that this feature alone would merit a project on its own, let alone combined with a larger project with two other centerpiece features. In fact, the only feature of the three that I was able to complete was the menu creation, with grocery list also being left incomplete.

The most significant problem that I encountered was a bleeding edge problem as a result of my referencing the Active Model Serialization gem via the Rails API github account. An unforseen change from the Rails API caused an app-breaking bug that cost me an entire morning during project week before discovering the true problem. On the plus side, I was able to spend an inordinate amount of time learning serialization, which proved to be invaluable as I was quite comfortable incorporate it in to the rest of my project at a scale that I wouldn't have imagined at the beginning of the process.

## Overall Thoughts

By the time I reached presentation, I felt confident in my ability to use Rails to process whatever data I needed it to do. Learning the ins and outs of serializers, which as a lesson not covered in class, allowed me to reach a level of comfort with my project that really made everything click for me.

Also of importance, my ability to debug has vastly improved since the beginning of the course. Being able to quickly and efficiently diagnose problems proved to be the difference maker this time around.
