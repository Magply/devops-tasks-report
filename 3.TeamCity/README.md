# Teamcity

Запущен docker с teamcity

![alt text](./images/docker_run.png)

сайт доступен
![alt text](./images/team_http.png)

На Github склонирован репозиторий с кодом teamcity-react-demo 

Создан агент 
![alt text](./images/agent.png)
![alt text](./images/agent_team.png)

Создан проект для сборки приложения
![alt text](./images/settings_bild.png)
![alt text](./images/bild_step.png)
![alt text](./images/bild.png)

![alt text](./images/bild_artifacts.png)
![alt text](./images/bild_parameters.png)
![alt text](./images/bild_test.png)

Настроен автоматический запуск деплоя при добавлении нового commit’а
![alt text](./images/build_triggers.png)

Создана задача в Teamcity для деплоя артифакта
![alt text](./images/deploy_settings.png)

![alt text](./images/deploy_bildsteps.png)
![alt text](./images/deploy_s1.png)
![alt text](./images/deploy_s2.png)
![alt text](./images/deploy_s3.png)

![alt text](./images/deploy.png)


Добавлена задача создания бэкапа
![alt text](./images/backup_settings.png)

![alt text](./images/backup_step.png)

![alt text](./images/backup.png)

Настроен пайплайн, в который включены  - сборка, бэкап и деплой
![alt text](./images/pipeline_settings.png)

![alt text](./images/pipeline_dependencies.png)
![alt text](./images/pipeline.png)

Создан новый проект “Production”, добавлена задача для сборки приложения, выполнены те же настройки, что и в Staging, используется ветка “master”
![alt text](./images/production.png)
![alt text](./images/deploy_depend_prod.png)
