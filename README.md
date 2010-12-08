Heroku Sendgrid Stats Plugin
============================
This plugin adds a 'sendgrid' command to Heroku's CLI client, making it possible
(and easy) to view your email usage during the current month.

Installation
------------
Luckily, Heroku's client makes it very easy to install plugins:

`heroku plugins:install git://github.com/hone/heroku-sendgrid-stats.git`

Usage
-----

    $ heroku sendgrid
    +----------------------------------------------------------------+
    |    date    | requests | bounces | clicks | opens | spamreports |
    +----------------------------------------------------------------+
    | 2010-12-01 |    12342 |      12 |  10223 |  9992 |           5 |
    | 2010-12-02 |    32342 |      10 |  14323 | 10995 |           7 |
    | 2010-12-03 |    52342 |      11 |  19223 | 12992 |           2 |
    | Totals     |    97026 |      33 |  43769 | 33979 |          14 |
    +----------------------------------------------------------------+

