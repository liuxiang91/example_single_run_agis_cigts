# Project Home Page#

https://bitbucket.org/account/user/KFTNTUM/projects/KFTNT

### GIT ###

* Please learn git (https://try.github.io/levels/1/challenges/1). it only takes 15 min!
* Register a bitbucket account using your umich email


### How do I get set up? ###

* create your own repository at bitbucket.org

```
#!bash

git clone https://yourusername@bitbucket.org/url-to-your-repo
cd your-repo-name
git submodule add https://yourusername@bitbucket.org/KFTNTUM/kfregression.git
git submodule add https://yourusername@bitbucket.org/KFTNTUM/kftntcore.git
git submodule add https://yourusername@bitbucket.org/KFTNTUM/kfdatatools.git
git submodule add https://yourusername@bitbucket.org/KFTNTUM/kfpareto.git
git submodule update --recursive --remote
```


* copy Data folder (available at https://drive.google.com/drive/folders/0B5mYtr5eehbCWlBfMFZqMnJTT1U?usp=sharing)  to your-repo-name. Feel free to add other data files to Data folder
* now you can write and run your own code