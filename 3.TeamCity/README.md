# Teamcity


запущен docker с teacity
![alt text](./images/docker run.jpeg)

сайт доступен
![alt text](./images/team http.jpeg)

На Github склонирован репозиторий с кодом teamcity-react-demo 

Создан агент 
![alt text](./images/agent.jpeg)
![alt text](./images/agent_team.jpeg)

Создан проект для сборки приложения
![alt text](./images/settings_bild.jpeg)
![alt text](./images/bild_step.jpeg)
![alt text](./images/bild.jpeg)

![alt text](./images/bild_artifacts.jpeg)
![alt text](./images/bild_parameters.jpeg)
![alt text](./images/bild_test.jpeg)

Настроен автоматический запуск деплоя при добавлении нового commit’а
![alt text](./images/build_triggers.jpeg)

Создана задача в Teamcity для деплоя артифакта
![alt text](./images/deploy_settings.jpeg)

![alt text](./images/deploy_bildsteps.jpeg)
![alt text](./images/deploy_s1.jpeg)
![alt text](./images/deploy_s2.jpeg)
![alt text](./images/deploy_s3.jpeg)

![alt text](./images/deploy.jpeg)


Добавлена задача создания бэкапа
![alt text](./images/backup_settings.jpeg)

![alt text](./images/backup_step.jpeg)

![alt text](./images/backup.jpeg)

Настроен пайплайн, в который включены  - сборка, бэкап и деплой
![alt text](./images/pipeline_settings.jpeg)

![alt text](./images/pipeline_dependencies.jpeg)
![alt text](./images/pipeline.jpeg)

Создан новый проект “Production”, добавлена задача для сборки приложения, выполнены те же настройки, что и в Staging, используется ветка “master”
![alt text](./images/production.jpeg)
![alt text](./images/deploy_depend_prod.jpeg)
