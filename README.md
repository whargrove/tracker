# Tracker

Tracker is a simple activity tracking application.

## Summary

Activity is tracked via Statements.

### Statement

- A Statement binds the Actor with an Activity.

### Actor

- The model that represents the subject of the statement, e.g. "Ron".

### Activity

- The model that represents the object of the statement, e.g. "went jogging".

## Testing

`bundle exec rspec ./spec`

## Usage

Create a new Actor

````ruby
ron = Actor.new(name: 'Ron')
ron.save!
````

Create a new Activity

````ruby
jogging = Activity.new(name: 'Jogging', description: 'A new fad')
jogging.save!
````

Create a Statement with the actor and activity objects

````ruby
statement = Statement.new(actor: ron, activity: jogging)
statement.save!
````

Now you can see who did the activity through the Statement

````ruby
statement.actor.name
=> "Ron"
statement.activity.name
=> "Jogging"
statement.to_s
=> "Ron went jogging."
````
