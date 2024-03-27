# Используем официальный образ Drupal с Apache
FROM drupal:9-apache

# Копируем файлы Drupal в контейнер
COPY ./ /var/www/html/

# Настройка правильного владельца для файлов Drupal
RUN chown -R www-data:www-data /var/www/html/sites

# Настраиваем Apache
RUN a2enmod rewrite

# Экспонируем порт 80
EXPOSE 80
