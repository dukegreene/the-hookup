# The Hookup
*Automated git commit-msg hook templating for the sake of silliness.*

When I was a DBC student, the cohorts ahead of me got into a little git hook war. Every day, I'd come in, commit some code, and something surprising and delightful would happen. 

It was a fun thing that I didn't understand at the time. This year, for April Fool's Day, I made myself understand it. And I automated the stuff I learned, so now I can get all the computers at work set up tomorrow without wasting too much time.

This code relies on the graceleap gem, a modified version of Kori Roys' phenomenally ridiculous gosleap gem. A leaping Ryan becomes a Grace hopper, and HEY GURL becomes LIRPA LOOF. 

Also - shout out to Max, Celeen, and Louis Panadero for their inspiration and encouragement.

## How To Get Hooked Up

Run this in your command line.

```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/dukegreene/the-hookup/master/hookup.rb)"
```

I've commented each line of the method in `hookup.rb` with more context, but basically, running the `ruby -e "$(curl...` command will install a gems on your system, create a `commit-msg` git hook template file in a new folder, populate that file with instructions (to read each commit message out loud and run graceleap), and make the file executable.