# This is a rough, hastily-researched solution for a domain-specific, time-sensitive use case. 
# The code throws several warnings and has not been peer- or mentor-reviewed.
# It is March 31, and I have less than 18 hours to pull off this gentle prank.
# I am optimizing for silliness and setup speed.
# Forgive me, Gods of Good Code, for I know not what I am doing. 

module Hookup
  def self.setup_lirpa_commit_template

    # Install a slightly modified gosleap gem ("Hey Gurl" becomes "Lirpa Loof" for this occasion).
    %x(gem install graceleap &)

    # Create an empty template file for a commit message hook
    %x(mkdir ~/.git_template) 
    %x(mkdir ~/.git_template/hooks)
    %x(touch ~/.git_template/hooks/commit-msg)

    # Add a line to the template setting which interpreter will execute the following commands.
    %x(echo '#!/bin/sh' >> ~/.git_template/hooks/commit-msg)

    # Add a line to the template that will robo-read the commit message out loud.
    %x(echo 'say `cat $1` &' >> ~/.git_template/hooks/commit-msg)

    # Add a line to the template that runs the gosleap gem.
    %x(echo 'graceleap &' >> ~/.git_template/hooks/commit-msg)

    # Make the template file executable.
    %x(chmod +x ~/.git_template/hooks/commit-msg)

    # Set up git so it will use our new commit-msg template in every newly init'ed project.
    %x(git config --global init.templatedir '~/.git_template')

  end
end

Hookup.setup_lirpa_commit_template