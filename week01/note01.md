# CS194 课程学习笔记

* [CS194课程](http://www.seas.upenn.edu/~cis194/spring13/lectures.html)
* [CIS194 new ](http://www.seas.upenn.edu/~cis194/lectures.html)
* [作业提交地址]( http://cis194.herokuapp.com/)
* [作业要求指引](http://www.seas.upenn.edu/~cis194/spring13/docs/style.pdf)

*  注册账号
*  

## 环境设置

* cabal install cabal-install
* cabal update
* cabal install aeson
* cabal install haskell-src-exts
* cabal install ghc-mod
* cabal install cmdargs
* canal install haddock

Download the source code of hdevtools for Windows from https://github.com/mvoidex/hdevtools
Unpack it to some folder
Go to that folder and run:

runhaskell Setup.hs configure --user
runhaskell Setup.hs build
runhaskell Setup.hs install
Watch for the path (in the console output) where the hdevtools have been installed. You will need this path when setting up the SublimeHaskell plugin in Sublime. The path should look something like this: C:\Users\Aleksey Bykov\AppData\Roaming\cabal\bin where Aleksey Bykov is the name of the current user.

Setting up the SublimeHaskell plugin in Sublime:

Start Sublime
Go Preferences >> Package settings >> SumblimeHaskell >> Settings - User
Make sure you configuration looks like:

{
    "add_to_PATH":
    [
        "C:/Users/Aleksey Bykov/AppData/Roaming/cabal/bin/"
    ],
    "enable_hdevtools": true
}

## Data.Char 包

concat :: [[a]] -> [a]     合并list中的元素，可用来追加字符串

concat ["12","2","234"]
"122234"


