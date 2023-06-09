# Описание
Запускаем скрипт, способный создавать резервную копию объекта, отсортированных по датам и времени.
Логика скрипта реализована в `backup/backup_script.sh`

# Запуск скрипта
- Скачайте архив
- Переместите папку `backup` в домашнюю директорию
- В командной строке перейдите в директорию `backup` и введите команду для запуска скрипта:

  ```
  bash backup_script.sh arg1 arg2 agr3
  ```
  - `arg1` - полный путь до файла/директории, чью резервную копию хотите создать
  - `arg2` - ваше название копируемого объекта
  - `arg3` - имя пользователя
 
 # Cron
 - Устновить [cron](https://www.digitalocean.com/community/tutorials/how-to-use-cron-to-automate-tasks-ubuntu-1804), если не установлен
 - Вызвать команду `crontab -e` и задать необходимые аргументы
 
   ```
   * * * * * bash backup_script.sh arg1 arg2 agr3
   ```
   - `*` - временные рамки
   - `arg1` - полный путь до файла/директории, чью резервную копию хотите создать
   - `arg2` - ваше название копируемого объекта
   - `arg3` - имя пользователя
   
   Теперь cron автоматически будет создавать каждую минуту резервную копию файла/директории
   
   # Результаты
   ![](result.png)
 
  
 
