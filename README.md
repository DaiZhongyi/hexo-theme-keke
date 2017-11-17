hexo-theme-keke
=================
I want to create a simple and readable theme.

### Features

- [X] Use `bootstrap` 4.0
- [X] Use `swig` for template engine
- [X] Use `gitment` for comments
- [X] Use `busuanzi` for site and post's counter
- [X] Support google analytics
- [x] Custom `summary` for index post's summary
- [x] Custom `toc` for post's navigation

### Todos

- [ ] Archive page
- [ ] Category page
- [ ] Tag page
- [ ] Doc
- [ ] SEO

### Install

1. Install hexo
    
    ```bash
    npm install -g hexo
    ```
    
2. Init blog
    
    ```bash
    hexo init blog
    cd blog && npm install
    ```

3. Init git repo

    ```bash
    git init .
    ```
    
4. Install `keke` theme

    ```bash
    git submodule add git@github.com:dzhongyi/hexo-theme-keke.git themes/keke
    ```

5. Edit `_config.yml`, **please change the personal infomation**

    ```yaml
    # Site
    title: Zhongyi I/O
    subtitle: "➩ Make something better for the world. ✌"
    author: "戴忠意"
    ## http://www.ruanyifeng.com/blog/2008/02/codes_for_language_names.html
    language: "zh-Hans"
    # the truncate length of index"s post
    truncate: 100
    
    # Google Analytics
    google_analytics_id: "UA-109699693-1"
    
    # gitment
    github_owner: "dzhongyi"
    github_repo: "zhongyi.io"
    github_client_id: "61c1e430371b91c5e33c"
    github_client_secret: "9d397f2d259c2ea9f9ee5617181ad7ce71e12b6f"
    
    # about
    linkedin: dzhongyi
 
    theme: keke
    ```

### Why `keke`

Keke is my pet, she is a cute dog.

### Thanks For

- [Bootstrap](https://getbootstrap.com/docs/4.0/getting-started/introduction/)
- [Swig](http://node-swig.github.io/swig-templates/docs/#usage)
- [Font Awesome](http://fontawesome.io/)
- [Gitment](https://github.com/imsun/gitment)
- [busuanzi](http://ibruce.info/2015/04/04/busuanzi/)