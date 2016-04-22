#Win7 64下的Haskell环境配置

*	安装最新的GHC [HaskellPlatform-7.10.3-x86_64-setup.exe](http://www.haskell.org/platform/windows.html) 安装
*   在cmd中执行 
```bash
				cabal install cabal-install
				cabal update
				cabal install aeson
				cabal install haskell-src-exts
				cabal install ghc-mod
				cabal install cmdargs
				cabal install haddock
```				
*  git clone https://github.com/flashus/hdevtools.git
*  切换到下载的hdevtools 目录执行安装插件
```bash
				runhaskell Setup.hs configure --user
				runhaskell Setup.hs build
				runhaskell Setup.hs install				
```

* 参考 [http://howistart.org/posts/haskell/1](http://howistart.org/posts/haskell/1)