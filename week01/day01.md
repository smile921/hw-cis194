
login docker pandoc
docker start pandoc
docker attach pandoc

 apt-get update
 apt-get install python-software-properties
 apt-get install software-properties-common 
 add-apt-repository -y ppa:hvr/ghc
 sed -is/jessie/trusty/g /etc/apt/sources.list.d/hvr-ghc-jessie.list
#  其他的Debian版本，只需将jessie都换成你的版本名即可。
#
#  如果/etc/apt/sources.list.d/hvr-ghc-jessie.list不存在，那么/etc/apt/sources.list应该会有：
#  
#  deb http://ppa.launchpad.net/hvr/ghc/ubuntu jessie main
#
#  把上列jessie换成trusty即可。
 apt-get update
 apt-get install cabal-install-1.20 ghc-7.8.4 happy-1.19.4 alex-3.1.3

#  接着，把以下路径加入你的$PATH环境变数中(bash_profile, zshrc, bashrc, etc)：
#
#  ~/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.8.4/bin:/opt/happy/1.19.4/bin:/opt/alex/3.1.3/bin
#  注: 你不妨把.cabal-sandbox/bin加到你的路径中。如此一来，只要你使用沙箱(cabal sandbox)开发，并且 留在专案的工作路径中，你就可以在命令列中轻易取用你正在开发的二进位档。

    apt-get install texlive-full
   apt-get install texlive-fonts-recommended























































































































root@95b597249511:/source/data/docker/mydocker/learnhaskell# apt-get install texlive-full
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following extra packages will be installed:
  aglfn chktex cm-super cm-super-minimal context context-modules dvidvi dvipng feynmf fonts-gfs-baskerville
  fonts-gfs-bodoni-classic fonts-gfs-didot-classic fonts-gfs-gazis fonts-gfs-porson fonts-gfs-theokritos
  fonts-hosny-amiri fonts-ipaexfont-gothic fonts-ipaexfont-mincho fonts-ipafont-gothic fonts-ipafont-mincho
  fonts-lmodern fonts-texgyre fragmaster ghostscript gsfonts imagemagick-common info install-info javascript-common
  lacheck latex-cjk-all latex-cjk-chinese latex-cjk-chinese-arphic-bkai00mp latex-cjk-chinese-arphic-bsmi00lp
  latex-cjk-chinese-arphic-gbsn00lp latex-cjk-chinese-arphic-gkai00mp latex-cjk-common latex-cjk-japanese
  latex-cjk-japanese-wadalab latex-cjk-korean latex-cjk-thai latexdiff latexmk lcdf-typetools libaudio2
  libauthen-sasl-perl libbsd0 libdatrie1 libdrm-intel1 libdrm-nouveau2 libdrm-radeon1 libdrm2 libedit2 libelf1
  libencode-locale-perl libfftw3-double3 libfile-homedir-perl libfile-listing-perl libfile-which-perl libfont-afm-perl
  libfontenc1 libgd3 libgl1-mesa-dri libgl1-mesa-glx libglapi-mesa libhtml-form-perl libhtml-format-perl
  libhtml-parser-perl libhtml-tagset-perl libhtml-tree-perl libhttp-cookies-perl libhttp-daemon-perl libhttp-date-perl
  libhttp-message-perl libhttp-negotiate-perl libintl-perl libio-html-perl libio-socket-ssl-perl libjs-jquery libllvm3.5
  liblqr-1-0 libltdl7 liblwp-mediatypes-perl liblwp-protocol-https-perl libmagick++-6.q16-5 libmagickcore-6.q16-2
  libmagickwand-6.q16-2 libmailtools-perl libmng1 libnet-http-perl libnet-smtp-ssl-perl libnet-ssleay-perl libopenjp2-7
  libpciaccess0 libplot2c2 libpoppler-qt4-4 libpstoedit0c2a libqt4-xml libqtcore4 libqtgui4 libruby2.1
  libtext-unidecode-perl libtimedate-perl libtxc-dxtn-s2tc0 liburi-perl libutempter0 libvpx1 libwww-perl
  libwww-robotrules-perl libx11-xcb1 libxcb-dri2-0 libxcb-dri3-0 libxcb-glx0 libxcb-present0 libxcb-shape0 libxcb-sync1
  libxcomposite1 libxdamage1 libxfixes3 libxft2 libxinerama1 libxml-libxml-perl libxml-namespacesupport-perl
  libxml-parser-perl libxml-sax-base-perl libxml-sax-expat-perl libxml-sax-perl libxml2 libxmuu1 libxrandr2 libxrender1
  libxshmfence1 libxtst6 libxv1 libxxf86dga1 libxxf86vm1 libyaml-0-2 libyaml-tiny-perl lmodern m-tx mupdf musixtex
  pfb2t1c2pfb pmx prerex prosper ps2eps pstoedit psutils purifyeps qtcore4-l10n ruby ruby2.1 rubygems-integration
  sgml-base swath t1utils tex-gyre tex4ht tex4ht-common texinfo texlive-extra-utils texlive-font-utils
  texlive-fonts-extra-doc texlive-fonts-recommended-doc texlive-formats-extra texlive-games texlive-generic-extra
  texlive-generic-recommended texlive-humanities texlive-humanities-doc texlive-lang-african texlive-lang-arabic
  texlive-lang-chinese texlive-lang-cjk texlive-lang-cyrillic texlive-lang-czechslovak texlive-lang-english
  texlive-lang-european texlive-lang-french texlive-lang-german texlive-lang-greek texlive-lang-indic
  texlive-lang-italian texlive-lang-japanese texlive-lang-korean texlive-lang-other texlive-lang-polish
  texlive-lang-portuguese texlive-lang-spanish texlive-latex-base-doc texlive-latex-extra-doc
  texlive-latex-recommended-doc texlive-luatex texlive-metapost texlive-metapost-doc texlive-music texlive-omega
  texlive-pictures-doc texlive-plain-extra texlive-pstricks texlive-pstricks-doc texlive-publishers
  texlive-publishers-doc texlive-science texlive-science-doc unzip vprerex x11-utils xbitmaps xml-core xterm zip
Suggested packages:
  perl-tk fontforge context-nonfree context-doc-nonfree ghostscript-x texinfo-doc-nonfree apache2 lighttpd httpd auctex
  hbf-cns40-b5 hbf-jfs56 fonts-arphic-bkai00mp fonts-arphic-bsmi00lp fonts-arphic-gbsn00lp fonts-arphic-gkai00mp
  hbf-kanji48 subversion cvs rcs nas libdigest-hmac-perl libgssapi-perl libfftw3-bin libfftw3-dev libgd-tools
  libdata-dump-perl libintl-xs-perl libcrypt-ssleay-perl libmagickcore-6.q16-2-extra pciutils libthai0 qt4-qtconfig
  libauthen-ntlm-perl mupdf-tools xfig ivtools-bin tgif transfig ri ruby-dev bundler sgml-base-doc libthai-data
  imagemagick netpbm libxml2-utils openjdk-6-jre-headless java5-runtime-headless xindy jadetex passivetex xmltex
  latex-fonts-sipa-arundina mesa-utils debhelper xfonts-cyrillic
Recommended packages:
  fonts-freefont xpdf-reader pdf-viewer gv postscript-viewer musixlyr
The following NEW packages will be installed:
  aglfn chktex cm-super cm-super-minimal context context-modules dvidvi dvipng feynmf fonts-gfs-baskerville
  fonts-gfs-bodoni-classic fonts-gfs-didot-classic fonts-gfs-gazis fonts-gfs-porson fonts-gfs-theokritos
  fonts-hosny-amiri fonts-ipaexfont-gothic fonts-ipaexfont-mincho fonts-ipafont-gothic fonts-ipafont-mincho
  fonts-lmodern fonts-texgyre fragmaster ghostscript gsfonts imagemagick-common info install-info javascript-common
  lacheck latex-cjk-all latex-cjk-chinese latex-cjk-chinese-arphic-bkai00mp latex-cjk-chinese-arphic-bsmi00lp
  latex-cjk-chinese-arphic-gbsn00lp latex-cjk-chinese-arphic-gkai00mp latex-cjk-common latex-cjk-japanese
  latex-cjk-japanese-wadalab latex-cjk-korean latex-cjk-thai latexdiff latexmk lcdf-typetools libaudio2
  libauthen-sasl-perl libbsd0 libdatrie1 libdrm-intel1 libdrm-nouveau2 libdrm-radeon1 libdrm2 libedit2 libelf1
  libencode-locale-perl libfftw3-double3 libfile-homedir-perl libfile-listing-perl libfile-which-perl libfont-afm-perl
  libfontenc1 libgd3 libgl1-mesa-dri libgl1-mesa-glx libglapi-mesa libhtml-form-perl libhtml-format-perl
  libhtml-parser-perl libhtml-tagset-perl libhtml-tree-perl libhttp-cookies-perl libhttp-daemon-perl libhttp-date-perl
  libhttp-message-perl libhttp-negotiate-perl libintl-perl libio-html-perl libio-socket-ssl-perl libjs-jquery libllvm3.5
  liblqr-1-0 libltdl7 liblwp-mediatypes-perl liblwp-protocol-https-perl libmagick++-6.q16-5 libmagickcore-6.q16-2
  libmagickwand-6.q16-2 libmailtools-perl libmng1 libnet-http-perl libnet-smtp-ssl-perl libnet-ssleay-perl libopenjp2-7
  libpciaccess0 libplot2c2 libpoppler-qt4-4 libpstoedit0c2a libqt4-xml libqtcore4 libqtgui4 libruby2.1
  libtext-unidecode-perl libtimedate-perl libtxc-dxtn-s2tc0 liburi-perl libutempter0 libvpx1 libwww-perl
  libwww-robotrules-perl libx11-xcb1 libxcb-dri2-0 libxcb-dri3-0 libxcb-glx0 libxcb-present0 libxcb-shape0 libxcb-sync1
  libxcomposite1 libxdamage1 libxfixes3 libxft2 libxinerama1 libxml-libxml-perl libxml-namespacesupport-perl
  libxml-parser-perl libxml-sax-base-perl libxml-sax-expat-perl libxml-sax-perl libxml2 libxmuu1 libxrandr2 libxrender1
  libxshmfence1 libxtst6 libxv1 libxxf86dga1 libxxf86vm1 libyaml-0-2 libyaml-tiny-perl lmodern m-tx mupdf musixtex
  pfb2t1c2pfb pmx prerex prosper ps2eps pstoedit psutils purifyeps qtcore4-l10n ruby ruby2.1 rubygems-integration
  sgml-base swath t1utils tex-gyre tex4ht tex4ht-common texinfo texlive-extra-utils texlive-font-utils
  texlive-fonts-extra-doc texlive-fonts-recommended-doc texlive-formats-extra texlive-full texlive-games
  texlive-generic-extra texlive-generic-recommended texlive-humanities texlive-humanities-doc texlive-lang-african
  texlive-lang-arabic texlive-lang-chinese texlive-lang-cjk texlive-lang-cyrillic texlive-lang-czechslovak
  texlive-lang-english texlive-lang-european texlive-lang-french texlive-lang-german texlive-lang-greek
  texlive-lang-indic texlive-lang-italian texlive-lang-japanese texlive-lang-korean texlive-lang-other
  texlive-lang-polish texlive-lang-portuguese texlive-lang-spanish texlive-latex-base-doc texlive-latex-extra-doc
  texlive-latex-recommended-doc texlive-luatex texlive-metapost texlive-metapost-doc texlive-music texlive-omega
  texlive-pictures-doc texlive-plain-extra texlive-pstricks texlive-pstricks-doc texlive-publishers
  texlive-publishers-doc texlive-science texlive-science-doc unzip vprerex x11-utils xbitmaps xml-core xterm zip
0 upgraded, 214 newly installed, 0 to remove and 22 not upgraded.
Need to get 1432 MB of archives.
After this operation, 2514 MB of additional disk space will be used.
