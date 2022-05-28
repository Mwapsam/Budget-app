# Recipe app

> Kobili is a mobile web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what..


> ### Video Link
> [Watch video](https://www.loom.com/share/9c4d1ccafdd04a43a8f126e144408689)

> ## Live Link
> [Visit website](https://kobili.herokuapp.com)

### Preview

![screenshot](app/assets/images/127.0.0.1_3000_categories.png)


# How to build the Budget app
The end result should follow the data model below (this is an Entity Relationship Diagram that you are already familiar with):

> ![](app/assets/images/erd_diagram.png)

## Built With

- Ruby on Rails
- Bootstrap
- JQuery
- Ruby
- Bubocop
- Gems
  - Rspec
  - Capybara
  - FactoryBot
  - Selenium-webdriver
  - Bcrypt
  - Letter-opener
  - Faker
  - cancancan
  - Devise


## Getting Started

**To get a local copy up and running follow these simple example steps.**

### Prerequisites
- Ruby should be installed on your machine
- Install Ruby on Rails and PostgresQL

### Setup
```
git clone https://github.com/Mwapsam/Budget-app.git
cd Budget-app
```
### Install
```
bundle install
```

### Play with the code
```
rails c
```

### Populate the db with dummy data
```
rake db:migrate
rake db:seed
```

### Run linters
```
rubocop -A
```

### Start the application
```
rails s
```

### Tests
```
rspec spec (run all tests)
rspec spec/name_of_folder/name_of_file.rb (run specific tests)
```
### Author

## 👤 Mwape Samuel

- GitHub: [@mwapsam](https://github.com/Mwapsam)
- Twitter: [@mwapesamuel4](https://twitter.com/mwapesamuel4)
- LinkedIn: [mwapsam](https://www.linkedin.com/in/mwapsam/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments
-  An acknowledgment to Gregorie Vella on Behance, the author of the original design.
- Many thanks to Microverse

## 📝 License

This project is [MIT](./MIT.md) licensed.
