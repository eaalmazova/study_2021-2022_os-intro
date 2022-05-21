---
# Front matter
title: "Отчёт по этапу №4 индивидуального проекта"
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

Добавить к сайту ссылки на научные и библиометрические ресурсы:

- Зарегистрироваться на соответствующих ресурсах и разместить на них ссылки на сайте:
	- eLibrary : https://elibrary.ru/;
	- Google Scholar : https://scholar.google.com/;
	- ORCID : https://orcid.org/;
	- Mendeley : https://www.mendeley.com/;
	- ResearchGate : https://www.researchgate.net/;
	- Academia.edu : https://www.academia.edu/;
	- arXiv : https://arxiv.org/;
	- github : https://github.com/.
- Сделать пост по прошедшей неделе.
- Добавить пост на тему по выбору:
	- Оформление отчёта.
	- Создание презентаций.
	- Работа с библиографией.

# Теоретическое введение

Статический генератор сайта — программа, которая из различных исходных файлов (картинок, шаблонов в разных форматах, текстовых файлов и т.п) генерирует статический HTML-сайт. Один из ярких представителей — Hugo. Hugo — один из самых популярных генераторов статических сайтов с открытым исходным кодом, написан на языке Go. Благодаря своей удивительной скорости и гибкости, Hugo делает создание веб-сайтов увлекательным. Он подойдет как для создания лендингов, «многостраничников» — так и для создания более сложных продуктов: блог, новостной портал и даже интернет-магазин. Установить фреймворк можно практически на любую современную платформу в несколько команд.

Фреймворк имеет очень хорошую документацию. Она доступна только на английском языке. Информация очень хорошо структурирована, что позволяет освоить данную технологию, за несколько дней. Для лучшего восприятия, практически в каждой главе есть обучающее видео от разработчиков. Все это позволяет очень быстро приступить к созданию собственных сайтов.

Основной контент или содержимое сайта хранится в формате .md в папке content. В роли контента могут выступать статьи, новости, продукты интернет магазина и прочее. Каталог «data» используется для хранения файлов конфигурации, которые Hugo может использовать при создании веб-сайта. Можно записать эти файлы в формате YAML, JSON или TOML.

Hugo имеет около 200 готовых тем, которые можно легко установить и использовать. Это значительно ускоряет процесс разработки. Темы включают в себя не только отличные дизайнерские, но и хорошие программные решения. Wowchemy предлагает удобный шаблон для создания сайта научного работника и не только, узнать больше можно на их официальном сайте.

# Реализация этапа проекта

1. Я зарегистрировалась на соответствующих ресурсах и разместила на них ссылки на сайте (рис.1):
	- eLibrary : https://elibrary.ru/;
	- Google Scholar : https://scholar.google.com/;
	- ORCID : https://orcid.org/;
	- Mendeley : https://www.mendeley.com/;
	- ResearchGate : https://www.researchgate.net/;
	- Academia.edu : https://www.academia.edu/;
	- arXiv : https://arxiv.org/;
	- github : https://github.com/.

![Рисунок 1 - Результат добавления ссылок.](image/2.png){ #fig:001 width=70% }

2. Я сделала пост по прошедшей неделе 16-20 мая, 2022 г, создав соответствующую папку в каталоге content/post и изменив в нем файл index.md.
3. Я сделала пост по теме оформления отчета, создав соответствующую папку в каталоге content/post и изменив в нем файл index.md (рис.2).

![Рисунок 2 - Редактирование поста.](image/1.png){ #fig:002 width=70% }

# Выводы

В ходе реализации четвертого этапа проекта я добавила к сайту ссылки на научные и библиометрические ресурсы, сделала пост по прошедшей неделе и добавила пост на тему оформления отчета.
