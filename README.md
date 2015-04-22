# TakeOff

TakeOff is a Rails engine that provides features for making landing pages.

## Features

- Free routing
- Release control
- Flexible form
- Automatic reply by mail
- Admin page

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'take_off'
```

Then execute:

    $ bundle

Then run the TakeOff generator:

    $ rails g take_off:install

Then migrate:

    $ rake db:migrate

## Usage

### Free routing

Simply create a file in `app/views/pages/sample.html.erb`:

```erb
<h1>Hello, TakeOff</h1>
```

Start a server `rails s` and visit [/sample](http://localhost:3000/sample).

### Release control

Use validation for release date:

```erb
<% validate_release_date! '2015/2/1 0:00:00' %>
```

If you want to show other content:

```erb
<% if release_date? '2015/2/1 0:00:00' %>
  <h1>Now On Sale</h1>
<% else %>
  <h1>On Sale February 1</h1>
<% end %>
```

### Flexible form

Use form helper when needs user answers.

```erb
<%= form_for_answer landing_id: 1 do %>
  <div>
    <label for="content_name"%>Name</label>
    <input id="content_name" type="text" name="content[name]">
  </div>

  <button type="submit">Submit</button>
<% end %>
```

### Admin page

Visit [/admin](http://localhost:3000/admin).

### Automatic reply by mail

TODO
