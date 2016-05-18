#Messages

**Messages** is an application that allows you to post messages via a JSON API
and to display the current messages from an HTML endpoint.

**Messages** allows you to:

- Post messages up to 141 characters long. (Twitter, but one better ;-)
- Tag messages by embedding #hashtags directly in the message body.
- Display messages via an HTML endpoint (/messages), ordered from newest to oldest.  Also displayed is a list of hashtags found in messages, with the most frequently used first.

### How to use
POST /api/messages
```bash
curl -H "Content-Type: application/json" -X POST \
-d '{"body": "This is a message from #earth"}' \
http://localhost:3000/api/messages
```
will produce the response
```bash
{"message":{"id":14,"body":"This is a message from #earth"}}
```

## Dependencies

You will need:

* Ruby (version 1.9.3 or newer)
* Rails (version 4.2.6)
* A working installation of Postgresql (tested with version 9.5.2.0) (http://www.postgresql.org/)


## How to run the app

From the project root:
```bash
bundle install
rake db:create
rake db:migrate
rails s
```

Generate a few messages via the JSON API using your REST test tool of choice.  For example,
using curl:
```bash
curl -H "Content-Type: application/json" -X POST -d '{"body": "I like #wine"}' http://localhost:3000/api/messages && \
curl -H "Content-Type: application/json" -X POST -d '{"body": "#wine is fine!"}' http://localhost:3000/api/messages && \
curl -H "Content-Type: application/json" -X POST -d '{"body": "I like #beer"}' http://localhost:3000/api/messages
```

Navigate in your browser to [http://localhost:3000/messages](http://localhost:3000/messages) and observe.  Resist the urge to have a drink.

## Testing

A test suite using RSpec is included.  There are model, controller, and request specs for the **Message** resource.  Note that there are seperate request specs to test the API and HTML endpoints for the **Message** resource.

To run the tests:
```bash
rake db:create RAILS_ENV=test
rspec
```
