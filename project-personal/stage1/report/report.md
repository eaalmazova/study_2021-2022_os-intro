---
# Front matter
title: "Отчёт по этапу №1 индивидуального проекта"
subtitle: "Дисциплина: Операционные системы"
author: "Елизавета Андреевна Алмазова"

## Generic options
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Цель данного индивидуального проекта - поэтапное создание и заполнение сайта, представляющего меня как научного работника. 

# Задание

Размещение на Github pages заготовки для персонального сайта:
- Установить необходимое программное обеспечение;
- Скачать шаблон темы сайта;
- Разместить его на хостинге git;
- Установить параметр для URLs сайта;
- Разместить заготовку сайта на Github pages.

# Теоретическое введение

Статический генератор сайта — программа, которая из различных исходных файлов (картинок, шаблонов в разных форматах, текстовых файлов и т.п) генерирует статический HTML-сайт. Один из ярких представителей — Hugo. Hugo — один из самых популярных генераторов статических сайтов с открытым исходным кодом, написан на языке Go. Благодаря своей удивительной скорости и гибкости, Hugo делает создание веб-сайтов увлекательным. Он подойдет как для создания лендингов, «многостраничников» — так и для создания более сложных продуктов: блог, новостной портал и даже интернет-магазин. Установить фреймворк можно практически на любую современную платформу в несколько команд.

Фреймворк имеет очень хорошую документацию. Она доступна только на английском языке. Информация очень хорошо структурирована, что позволяет освоить данную технологию, за несколько дней. Для лучшего восприятия, практически в каждой главе есть обучающее видео от разработчиков. Все это позволяет очень быстро приступить к созданию собственных сайтов.

Основной контент или содержимое сайта хранится в формате .md в папке content. В роли контента могут выступать статьи, новости, продукты интернет магазина и прочее. Каталог «data» используется для хранения файлов конфигурации, которые Hugo может использовать при создании веб-сайта. Можно записать эти файлы в формате YAML, JSON или TOML.

Hugo имеет около 200 готовых тем, которые можно легко установить и использовать. Это значительно ускоряет процесс разработки. Темы включают в себя не только отличные дизайнерские, но и хорошие программные решения. Wowchemy предлагает удобный шаблон для создания сайта научного работника и не только, узнать больше можно на их официальном сайте.

# Реализация этапа проекта

1. Я скачала исполняемый файл Hugo версии extended 0.98.0 для Linux 64 bit (рис.1) и разархивировала скачанный архив. В домашнем каталоге я создала каталог bin и перенесла исполняемый файл туда.

![Рисунок 1 - Скачивание релиза Hugo](image/1.png){ #fig:001 width=70% }

2. На основе шаблона Wowchemy Academic я создала репозиторий blog в своем github (рис.2) и с помощью команды git clone --recursive скопировала содержимое папки на компьютер.

![Рисунок 2 - Создание репозитория blog](image/2.png){ #fig:002 width=70% }

3. Я перешла в blog (cd blog/) и с помощью ls -l убедилась в наличии файлов, запустила Hugo. С помощью команды rm -r public я удалила папку public (рис.3).

![Рисунок 3 - Удаление папки public](image/3.png){ #fig:003 width=70% }

4. Я выполнила команду ~/bin/hugo server и перешла по полученной ссылке на созданный сайт. С помощью удаления content/home/demo.md я удалила зеленый виджет с сайта (рис.4).

![Рисунок 4 - Сайт после удаления виджета](image/4.png){ #fig:004 width=70% }

5. Я перешла в GitHub, создала репозиторий eaalmazova.github.io и клонировала его с помощью команды git clone --recursive рядом с папкой ~/work/blog. Командой ls -l я убедилась в успешности процесса. Перейдя в созданную папку, я переключилась на новую ветку main (git checkout -b main) и создала пустой файл README.md для активации репозитория (touch README.md). Затем с помощью последовательности команд git add ., git commit -am 'Added README.md' и git push origin main я добавила этот файл в GitHub (рис.5).

![Рисунок 5 - Клонирование eaalmazova.github.io, создание и коммит файла README.md](image/5.png){ #fig:005 width=70% }

6. С помощью команды cd я перешла в blog и используя команду git submodule add -b main https://eaalmazova/eaalmazova.github.io.git public попыталась создать папку public. После ошибки я зашла в .gitignore и с помощью mc сделала строчку с public комментарием. Повторная команда создания стала успешной. 

7. Я автоматически сгенерировала файлы в public (~/bin/hugo) и провела синхронизацию с GitHub (git add ., git commit -am 'Added README.md' и git push origin main). Теперь на сайте появились нужные файлы и сайт доступен по ссылке https://eaalmazova.github.io (рис.6,7).

![Рисунок 6 - Результат работы с eaalmazova.github.io](image/6.png){ #fig:006 width=70% }

![Рисунок 7 - Сайт по ссылке https://eaalmazova.github.io](image/7.png){ #fig:007 width=70% }


# Выводы

В ходе реализации первого этапа проекта я разместила на GitHub pages заготовки для будущего сайта, в т.ч. установила необходимое программное обеспечение, скачала шаблон темы сайта, разместила его на хостинге git, установила параметр для URLs сайта, разместила заготовку сайта на Github pages.
