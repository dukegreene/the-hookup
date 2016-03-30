%x(gem install gosleap)
%x(mkdir ~/.git_template) 
%x(mkdir ~/.git_template/hooks)
%x(touch ~/.git_template/hooks/commit-msg)
%x(subl ~/.git_template/hooks/commit-msg)

%x(echo '#!/bin/sh' >> ~/.git_template/hooks/commit-msg)
%x(echo 'say `cat $1` &' >> ~/.git_template/hooks/commit-msg)
%x(echo 'gosleap &' >> ~/.git_template/hooks/commit-msg)

%x(chmod +x ~/.git_template/hooks/commit-msg)

%x(git config --global init.templatedir '~/.git_template')