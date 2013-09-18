# confy, the conferences directory

This app is made with the intention to learn basic uses of [Sinatra](http://www.sinatrarb.com/) and [Padrino](http://www.padrinorb.com/).

We are incrementally adding use cases. Stay in touch by following us in [Twitter](http://www.twitter.com/wecodeio)

## Project setup

You need to install create two postgres databases named `confy` and `confy_test`, as you can see in the file `config/database.rb`:

    when :development then Sequel.connect('postgres://confy:confy@localhost/confy', :loggers => [logger])
    when :test        then Sequel.connect('postgres://confy:confy@localhost/confy_test', :loggers => [logger])

> **Heads up...** don't forget to `bundle install` all the things!

Then you will need to run the migrations with `sequel`:

    # sequel -m db/migrate postgres://confy:confy@localhost/confy
    # sequel -m db/migrate postgres://confy:confy@localhost/confy_test

Finally, execute the `rake db:seed` command and start the padrino server:

    # rake db:seed
    # padrino s

Now you can open a browser and surf to `http://localhost:3000` and start seeing all the magic.