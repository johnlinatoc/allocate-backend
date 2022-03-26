# Allocate (Backend)
Personal budgeting app that allows users to create a monthly budget and dynamically displays all the necessary information in their dashboard and on their MyBudget page.

Click here for project's frontend: [Allocate (Frontend)](https://github.com/johnlinatoc/allocate-frontend)

Click here for a video demo: [Allocate Video Demo](https://www.youtube.com/watch?v=2tAANzijr40)

## Motivation
This budgeting app was designed to help others make their own monthly budgets as easy as possible in the most clearest way I could design. After struggling with my own financial illiteracy and discovering a book, [Financial Peace](https://books.google.com/books/about/Financial_Peace_Revisited.html?id=3BhiXcAYgj4C&printsec=frontcover&source=kp_read_button#v=onepage&q&f=false), that helped me understand how to make wiser decisions, I wanted to make a tool that could hopefully help others too. My goal was to allow users to have as little friction as possible when entering expenses and also to have all the necessary info as easy to read as possible.

## Screenshots

Login Page: ![login page](./public/image1.png)

Main Dashboard: ![Main Dashboard](./public/image2.png)

MyBudget Page: ![MyBudget Page](./public/image3.png)

Example of Creating New Budget: ![New Budget](./public/image4.png)

## Tech/framework used
<b>Built with</b>
- [Ruby on Rails 2.6.1](https://rubyonrails.org/)
- [React](https://reactjs.org/)
- [Bootstrap React for forms](https://react-bootstrap.github.io/components/forms/)
- [Victory Charts for data visualization](https://formidable.com/open-source/victory/)

## Features
ra
Users can add expenses and the dashboard's user interface dynamically changes upon user entries with different relevant indicators.

Users also have a MyBudget section that showcases their spending habits to help them make wiser decisions.

## Installation
To run this project, install it locally using bundler:

```
$ bundle install

$ rails db:create
$ rails db:migrate
$ rails db:seed

$ rails server
```

If you're using rvm and having trouble installing ruby v2.6.1 you can run ```rvm install "ruby-2.6.1" --with-out-ext=fiddle```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## The MIT License (MIT)

Copyright (c) 2019 John Linatoc

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
