module Hookup
  def self.setup_lirpa_commit_template
    # Install a gem to allow for one-line gem install CLI command targeting a specific git repo.
    %x(gem install specific_install)

    # Install a slightly modified gosleap gem ("Hey Gurl" becomes "Lirpa Loof" for this occasion).
    %x(gem specific_install https://github.com/dukegreene/gosleap.git &)

    # Create an empty template file for a commit message hook
    %x(mkdir ~/.git_template) 
    %x(mkdir ~/.git_template/hooks)
    %x(touch ~/.git_template/hooks/commit-msg)

    # Add a line to the template setting which interpreter will execute the following commands.
    %x(echo '#!/bin/sh' >> ~/.git_template/hooks/commit-msg)

    # Add a line to the template that will robo-read the commit message out loud.
    %x(echo 'say `cat $1` &' >> ~/.git_template/hooks/commit-msg)

    # Add a line to the template that runs the gosleap gem.
    %x(echo 'gosleap &' >> ~/.git_template/hooks/commit-msg)

    # Make the template file executable.
    %x(chmod +x ~/.git_template/hooks/commit-msg)

    # Set up git so it will use our new commit-msg template in every newly init'ed project.
    %x(git config --global init.templatedir '~/.git_template')

    # Quit Terminal because restart is required for these changes to stick.
    %x(osascript -e 'tell application \"System Events\" to keystroke \"q\" using command down')
  end
end

Hookup.setup_lirpa_commit_template