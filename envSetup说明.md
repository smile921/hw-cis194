#Win7 64�µ�Haskell��������

*	��װ���µ�GHC [HaskellPlatform-7.10.3-x86_64-setup.exe](http://www.haskell.org/platform/windows.html) ��װ
*   ��cmd��ִ�� 
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
*  �л������ص�hdevtools Ŀ¼ִ�а�װ���
```bash
				runhaskell Setup.hs configure --user
				runhaskell Setup.hs build
				runhaskell Setup.hs install				
```

* �ο� [http://howistart.org/posts/haskell/1](http://howistart.org/posts/haskell/1)