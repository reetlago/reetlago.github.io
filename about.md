---
layout: page
title: About
permalink: /about/
---

This site features select works of Reet Lago, a once-in-a-blue-moon writer of stories, poems, lyrics or anything meaningful.

* TOC
{:toc}

# License

All works are licensed under the [Creative Commons Attribution 4.0 International License (CC BY)](https://creativecommons.org/licenses/by/4.0/){:target="_blank"}, which means you may share, alter and build upon Reet Lago's work, even for commercial purposes, as long as you give credit to Reet Lago for the original creation. (This sentence was remixed from the original license description available at <https://creativecommons.org/licenses/>{:target="_blank"}.)

# Source Code

You can find the source code for this site at
{% include icon-github.html username="reetlago" repo="reetlago.github.io" %}

All HTML, CSS and JavaScript source code (both the code for this site and all original [Jekyll](http://jekyllrb.com/){:target="_blank"} code) is licensed under the [MIT license](http://opensource.org/licenses/MIT){:target="_blank"}.

# Thanks

* CoffeeScript: <http://coffeescript.org/>{:target="_blank"}
* Drop shadow: <https://css-tricks.com/almanac/properties/b/box-shadow/>{:target="_blank"}
* Ellipsis: <https://css-tricks.com/almanac/properties/t/text-overflow/>{:target="_blank"}
* Gradient: <http://www.colorzilla.com/gradient-editor/>{:target="_blank"}
* Kramdown: <http://kramdown.gettalong.org/syntax.html>{:target="_blank"}
* Liquid: <https://github.com/Shopify/liquid/wiki/Liquid-for-Designers>{:target="_blank"}
* RSS icon: <https://www.svgimages.com/rss-07552.html>{:target="_blank"}
* Sass: <http://sass-lang.com/guide>{:target="_blank"}
* Table of contents: <http://www.seanbuscay.com/blog/jekyll-toc-markdown/>{:target="_blank"}
* Text stroke: <https://css-tricks.com/adding-stroke-to-web-text/>{:target="_blank"}
* Vertical text: <https://davidwalsh.name/css-vertical-text>{:target="_blank"}

# Setup

Some tips should you desire your own Jekyll blog:

1. Pick an uncommon username (check that it's available at GitHub and Twitter for example)
1. Create email account
1. Set up GitHub account
   1. create GitHub account
   1. verify email
   1. set up GitHub env on your computer, e.g. <https://gorails.com/setup/ubuntu/14.04#git>{:target="_blank"}
1. Set up Twitter account
   1. create Twitter account
   1. verify email
1. Install Ruby, e.g. <https://gorails.com/setup/ubuntu/14.04#ruby>{:target="_blank"}
1. Install Jekyll, see <http://jekyllrb.com/docs/installation/>{:target="_blank"}
   1. gem install bundler
   1. bundle install
1. For Font-Awesome, the BootstrapCDN solution works, but hinders testing changes without Internet
   Using font-awesome-sass doesn't work as the fonts dir is "font-awesome/..." and you cannot change that to "../fonts".
   Interestingly, the minified css file does have the right directory, so:
   1. download Font-Awesome and extract the archive
   1. mv the fonts dir to the Jekyll site root directory
   1. add this above the css/main.css link tag in _includes/head.html:
      &lt;link rel="stylesheet" href="&#123;{ "/css/font-awesome.min.css" | prepend: site.baseurl }}">
   1. add markup like this to your pages: 
      &lt;span class="fa fa-camera-retro"></span>
1. For CoffeeScript, follow these instructions: <https://jekyllrb.com/docs/assets/>{:target="_blank"}
   In addition, do: 
   1. mkdir js
   1. add .coffee files in js dir
