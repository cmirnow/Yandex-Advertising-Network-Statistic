## Доход Рекламной Сети Яндекса за любой период - в командной строке Ruby

[![Yandex Advertising Network Statistic](https://github.com/cmirnow/Yandex-Advertising-Network-Statistic/blob/master/img/rsya.jpg)](https://masterpro.ws/api-yandex-metrica-advertising-network-statistic "Yandex Advertising Network Statistic")

Неоднократно приходилось слышать жалобы на чрезвычайно медленный веб-интерфейс Яндекс.Метрика; все то же самое и о Рекламной Сети Яндекса, причем без разницы, интегрированы отчеты РСЯ в Метрику, или же нет. Моя рекомендация: господа-сеошники и/или монетизаторы, осваивайте консоль, веб-аналитика от российской компании Яндекс реально будет у вас летать... Все, что потребуется, это установить (если еще не установлен) Ruby, после чего:

```bash
gem install dotenv typhoeus json terminal-table tty-prompt date
git clone https://github.com/cmirnow/Yandex-Advertising-Network-Statistic.git
cd Yandex-Advertising-Network-Statistic
ruby bin/start.rb
```

:bangbang: | В скобках: может не работать в среде Windows, подробнее см. [этот материал](https://masterpro.ws/api-yandex-metrica-advertising-network-statistic) и комментарии к нему. Linux наше все.
:---: | :---  
 

Загрузите скрипт, укажите идентификатор счетчика и токен авторизации в файле .env, и... запускайте магию. Скрипт строит в консоли таблицу, отображающую отчет из группы Стандартные отчеты -> Монетизация -> РСЯ, страницы с рекламными событиями:

* URL странички
* Количество визитов
* Доход постранично
* Общий доход

Получение отчета за текущий месяц требует всего-навсего два раза нажать Enter, подтвердив таким образом даты по-дефолту.
