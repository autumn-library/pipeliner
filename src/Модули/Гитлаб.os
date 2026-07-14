
// Возвращает CI_PIPELINE_SOURCE = merge_request_event
//
//  Возвращаемое значение:
//   Булево - 
//
Функция ЭтоМержРеквест() Экспорт
	Возврат ИсточникСобытияПайплайна() = "merge_request_event";
КонецФункции

// Значение CI_PIPELINE_SOURCE
//
//  Возвращаемое значение:
//   Строка - 
//
Функция ИсточникСобытияПайплайна() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PIPELINE_SOURCE");
КонецФункции

// ChatOps variables
//

// Значение CHAT_CHANNEL
//
//  Возвращаемое значение:
//   Строка - The Source chat channel that triggered the ChatOps command
//
Функция ЧатКанал() Экспорт
	Возврат ПолучитьПеременнуюСреды("CHAT_CHANNEL");
КонецФункции

// Значение CHAT_INPUT
//
//  Возвращаемое значение:
//   Строка - The additional arguments passed with the ChatOps command
//
Функция ЧатВвод() Экспорт
	Возврат ПолучитьПеременнуюСреды("CHAT_INPUT");
КонецФункции

// Значение CHAT_USER_ID
//
//  Возвращаемое значение:
//   Строка - The chat service's user ID of the user who triggered the ChatOps command
//
Функция ЧатИдПользователя() Экспорт
	Возврат ПолучитьПеременнуюСреды("CHAT_USER_ID");
КонецФункции

// Pre-pipeline variables
//

// Значение CI
//
//  Возвращаемое значение:
//   Булево - Available for all jobs executed in CI/CD. true when available
//
Функция СИ() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI");
КонецФункции

// Значение CI_API_V4_URL
//
//  Возвращаемое значение:
//   Строка - The GitLab API v4 root URL
//
Функция АПИV4УРЛ() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_API_V4_URL");
КонецФункции

// Значение CI_API_GRAPHQL_URL
//
//  Возвращаемое значение:
//   Строка - The GitLab API GraphQL root URL
//
Функция АПИGraphQLУРЛ() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_API_GRAPHQL_URL");
КонецФункции

// Значение CI_BUILD_NETWORK_NAME
//
//  Возвращаемое значение:
//   Строка - The name of the network that the job created
//
Функция СетьСборки() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_BUILD_NETWORK_NAME");
КонецФункции

// Значение CI_BUILDS_DIR
//
//  Возвращаемое значение:
//   Строка - The top-level directory where builds are executed
//
Функция ДиректорияСборок() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_BUILDS_DIR");
КонецФункции

// Значение CI_COMMIT_AUTHOR
//
//  Возвращаемое значение:
//   Строка - The author of the commit in Name <email> format
//
Функция АвторКоммита() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_AUTHOR");
КонецФункции

// Значение CI_COMMIT_BEFORE_SHA
//
//  Возвращаемое значение:
//   Строка - The previous latest commit present on a branch or tag
//
Функция ШАДоКоммита() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_BEFORE_SHA");
КонецФункции

// Значение CI_COMMIT_BRANCH
//
//  Возвращаемое значение:
//   Строка - The commit branch name
//
Функция ВеткаКоммита() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_BRANCH");
КонецФункции

// Значение CI_COMMIT_DEFAULT_BRANCH_BASE_SHA
//
//  Возвращаемое значение:
//   Строка - The merge base between CI_COMMIT_SHA and the default branch
//
Функция БазовыйШАДефолтнойВетки() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_DEFAULT_BRANCH_BASE_SHA");
КонецФункции

// Значение CI_COMMIT_DESCRIPTION
//
//  Возвращаемое значение:
//   Строка - The description of the commit
//
Функция ОписаниеКоммита() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_DESCRIPTION");
КонецФункции

// Значение CI_COMMIT_MESSAGE
//
//  Возвращаемое значение:
//   Строка - The full commit message
//
Функция СообщениеКоммита() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_MESSAGE");
КонецФункции

// Значение CI_COMMIT_MESSAGE_IS_TRUNCATED
//
//  Возвращаемое значение:
//   Булево - true if CI_COMMIT_MESSAGE is truncated
//
Функция СообщениеКоммитаОбрезано() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_MESSAGE_IS_TRUNCATED");
КонецФункции

// Значение CI_COMMIT_REF_NAME
//
//  Возвращаемое значение:
//   Строка - The branch or tag name for which project is built
//
Функция ИмяВетки() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_REF_NAME");
КонецФункции

// Значение CI_COMMIT_REF_PROTECTED
//
//  Возвращаемое значение:
//   Булево - true if the job is running for a protected reference
//
Функция ВеткаЗащищена() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_REF_PROTECTED");
КонецФункции

// Значение CI_COMMIT_REF_SLUG
//
//  Возвращаемое значение:
//   Строка - CI_COMMIT_REF_NAME in lowercase, shortened to 63 bytes
//
Функция СлагВетки() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_REF_SLUG");
КонецФункции

// Значение CI_COMMIT_SHA
//
//  Возвращаемое значение:
//   Строка - The commit revision the project is built for
//
Функция ШАКоммита() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_SHA");
КонецФункции

// Значение CI_COMMIT_SHORT_SHA
//
//  Возвращаемое значение:
//   Строка - The first eight characters of CI_COMMIT_SHA
//
Функция КороткийШАКоммита() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_SHORT_SHA");
КонецФункции

// Значение CI_COMMIT_TAG
//
//  Возвращаемое значение:
//   Строка - The commit tag name
//
Функция ТегКоммита() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_TAG");
КонецФункции

// Значение CI_COMMIT_TAG_MESSAGE
//
//  Возвращаемое значение:
//   Строка - The commit tag message
//
Функция СообщениеТега() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_TAG_MESSAGE");
КонецФункции

// Значение CI_COMMIT_TIMESTAMP
//
//  Возвращаемое значение:
//   Строка - The timestamp of the commit in the ISO 8601 format
//
Функция ВремяКоммита() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_TIMESTAMP");
КонецФункции

// Значение CI_COMMIT_TITLE
//
//  Возвращаемое значение:
//   Строка - The title of the commit
//
Функция ЗаголовокКоммита() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_TITLE");
КонецФункции

// Значение CI_COMMIT_USER_LOGIN
//
//  Возвращаемое значение:
//   Строка - The GitLab username of the commit author
//
Функция ЛогинАвтораКоммита() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_COMMIT_USER_LOGIN");
КонецФункции

// Значение CI_CONCURRENT_ID
//
//  Возвращаемое значение:
//   Строка - The unique ID of build execution in a single executor
//
Функция ИдПараллельнойСборки() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_CONCURRENT_ID");
КонецФункции

// Значение CI_CONCURRENT_PROJECT_ID
//
//  Возвращаемое значение:
//   Строка - The unique ID of build execution in a single executor and project
//
Функция ИдПараллельнойСборкиПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_CONCURRENT_PROJECT_ID");
КонецФункции

// Значение CI_CONFIG_PATH
//
//  Возвращаемое значение:
//   Строка - The path to the CI/CD configuration file
//
Функция ПутьКонфигаСИ() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_CONFIG_PATH");
КонецФункции

// Значение CI_CONFIG_REF_URI
//
//  Возвращаемое значение:
//   Строка - The fully qualified ref path to the top-level pipeline definition
//
Функция УРИКонфигаПайплайна() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_CONFIG_REF_URI");
КонецФункции

// Значение CI_DEBUG_TRACE
//
//  Возвращаемое значение:
//   Булево - true if debug logging (tracing) is enabled
//
Функция ОтладочнаяТрассировка() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_DEBUG_TRACE");
КонецФункции

// Значение CI_DEBUG_SERVICES
//
//  Возвращаемое значение:
//   Булево - true if service container logging is enabled
//
Функция ОтладкаСервисов() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_DEBUG_SERVICES");
КонецФункции

// Значение CI_DEFAULT_BRANCH
//
//  Возвращаемое значение:
//   Строка - The name of the project's default branch
//
Функция ДефолтнаяВетка() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_DEFAULT_BRANCH");
КонецФункции

// Значение CI_DEFAULT_BRANCH_SLUG
//
//  Возвращаемое значение:
//   Строка - CI_DEFAULT_BRANCH in lowercase, shortened to 63 bytes
//
Функция СлагДефолтнойВетки() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_DEFAULT_BRANCH_SLUG");
КонецФункции

// Значение CI_DEPENDENCY_PROXY_DIRECT_GROUP_IMAGE_PREFIX
//
//  Возвращаемое значение:
//   Строка - The direct group image prefix for pulling images through the Dependency Proxy
//
Функция ПрефиксОбразаГруппы() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_DEPENDENCY_PROXY_DIRECT_GROUP_IMAGE_PREFIX");
КонецФункции

// Значение CI_DEPENDENCY_PROXY_GROUP_IMAGE_PREFIX
//
//  Возвращаемое значение:
//   Строка - The top-level group image prefix for pulling images through the Dependency Proxy
//
Функция ПрефиксОбразаГруппыВерхнегоУровня() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_DEPENDENCY_PROXY_GROUP_IMAGE_PREFIX");
КонецФункции

// Значение CI_DEPENDENCY_PROXY_PASSWORD
//
//  Возвращаемое значение:
//   Строка - The password to pull images through the Dependency Proxy
//
Функция ПарольПроксиЗависимостей() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_DEPENDENCY_PROXY_PASSWORD");
КонецФункции

// Значение CI_DEPENDENCY_PROXY_SERVER
//
//  Возвращаемое значение:
//   Строка - The server for logging in to the Dependency Proxy
//
Функция СерверПроксиЗависимостей() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_DEPENDENCY_PROXY_SERVER");
КонецФункции

// Значение CI_DEPENDENCY_PROXY_USER
//
//  Возвращаемое значение:
//   Строка - The username to pull images through the Dependency Proxy
//
Функция ПользовательПроксиЗависимостей() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_DEPENDENCY_PROXY_USER");
КонецФункции

// Значение CI_DEPLOY_FREEZE
//
//  Возвращаемое значение:
//   Булево - Only available if the pipeline runs during a deploy freeze window
//
Функция ЗаморозкаРазвертывания() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_DEPLOY_FREEZE");
КонецФункции

// Значение CI_DEPLOY_PASSWORD
//
//  Возвращаемое значение:
//   Строка - The authentication password of the GitLab Deploy Token
//
Функция ПарольРазвертывания() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_DEPLOY_PASSWORD");
КонецФункции

// Значение CI_DEPLOY_USER
//
//  Возвращаемое значение:
//   Строка - The authentication username of the GitLab Deploy Token
//
Функция ПользовательРазвертывания() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_DEPLOY_USER");
КонецФункции

// Значение CI_DISPOSABLE_ENVIRONMENT
//
//  Возвращаемое значение:
//   Булево - true if the job is executed in a disposable environment
//
Функция ВременноеОкружение() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_DISPOSABLE_ENVIRONMENT");
КонецФункции

// Значение CI_ENVIRONMENT_ID
//
//  Возвращаемое значение:
//   Строка - The ID of the environment for this job
//
Функция ИдОкружения() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_ENVIRONMENT_ID");
КонецФункции

// Значение CI_ENVIRONMENT_NAME
//
//  Возвращаемое значение:
//   Строка - The name of the environment for this job
//
Функция ИмяОкружения() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_ENVIRONMENT_NAME");
КонецФункции

// Значение CI_ENVIRONMENT_SLUG
//
//  Возвращаемое значение:
//   Строка - The simplified version of the environment name
//
Функция СлагОкружения() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_ENVIRONMENT_SLUG");
КонецФункции

// Значение CI_ENVIRONMENT_URL
//
//  Возвращаемое значение:
//   Строка - The URL of the environment for this job
//
Функция УРЛОкружения() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_ENVIRONMENT_URL");
КонецФункции

// Значение CI_ENVIRONMENT_ACTION
//
//  Возвращаемое значение:
//   Строка - The action annotation specified for this job's environment
//
Функция ДействиеОкружения() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_ENVIRONMENT_ACTION");
КонецФункции

// Значение CI_ENVIRONMENT_TIER
//
//  Возвращаемое значение:
//   Строка - The deployment tier of the environment for this job
//
Функция УровеньОкружения() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_ENVIRONMENT_TIER");
КонецФункции

// Значение CI_GITLAB_FIPS_MODE
//
//  Возвращаемое значение:
//   Булево - true if FIPS mode is enabled in the GitLab instance
//
Функция РежимФИПС() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_GITLAB_FIPS_MODE");
КонецФункции

// Значение CI_HAS_OPEN_REQUIREMENTS
//
//  Возвращаемое значение:
//   Булево - true if the pipeline's project has an open requirement
//
Функция ЕстьОткрытыеТребования() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_HAS_OPEN_REQUIREMENTS");
КонецФункции

// Значение CI_JOB_GROUP_NAME
//
//  Возвращаемое значение:
//   Строка - The shared name of a group of jobs
//
Функция ИмяГруппыЗаданий() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_JOB_GROUP_NAME");
КонецФункции

// Значение CI_JOB_ID
//
//  Возвращаемое значение:
//   Строка - The internal ID of the job
//
Функция ИдЗадания() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_JOB_ID");
КонецФункции

// Значение CI_JOB_IMAGE
//
//  Возвращаемое значение:
//   Строка - The name of the Docker image running the job
//
Функция ОбразЗадания() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_JOB_IMAGE");
КонецФункции

// Значение CI_JOB_MANUAL
//
//  Возвращаемое значение:
//   Булево - true if the job was started manually
//
Функция ЗаданиеЗапущеноВручную() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_JOB_MANUAL");
КонецФункции

// Значение CI_JOB_NAME
//
//  Возвращаемое значение:
//   Строка - The name of the job
//
Функция ИмяЗадания() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_JOB_NAME");
КонецФункции

// Значение CI_JOB_NAME_SLUG
//
//  Возвращаемое значение:
//   Строка - CI_JOB_NAME in lowercase, shortened to 63 bytes
//
Функция СлагИмениЗадания() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_JOB_NAME_SLUG");
КонецФункции

// Значение CI_JOB_STAGE
//
//  Возвращаемое значение:
//   Строка - The name of the job's stage
//
Функция СтадияЗадания() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_JOB_STAGE");
КонецФункции

// Значение CI_JOB_STATUS
//
//  Возвращаемое значение:
//   Строка - The status of the job
//
Функция СтатусЗадания() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_JOB_STATUS");
КонецФункции

// Значение CI_JOB_TIMEOUT
//
//  Возвращаемое значение:
//   Строка - The job timeout, in seconds
//
Функция ТаймаутЗадания() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_JOB_TIMEOUT");
КонецФункции

// Значение CI_JOB_TOKEN
//
//  Возвращаемое значение:
//   Строка - A token to authenticate with certain API endpoints
//
Функция ТокенЗадания() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_JOB_TOKEN");
КонецФункции

// Значение CI_JOB_URL
//
//  Возвращаемое значение:
//   Строка - The job details URL
//
Функция УРЛЗадания() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_JOB_URL");
КонецФункции

// Значение CI_JOB_STARTED_AT
//
//  Возвращаемое значение:
//   Строка - The date and time when a job started, in ISO 8601 format
//
Функция ВремяНачалаЗадания() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_JOB_STARTED_AT");
КонецФункции

// Значение CI_JOB_STARTED_AT_SLUG
//
//  Возвращаемое значение:
//   Строка - CI_JOB_STARTED_AT in lowercase, shortened to 63 bytes
//
Функция СлагВремениНачалаЗадания() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_JOB_STARTED_AT_SLUG");
КонецФункции

// Значение CI_KUBERNETES_ACTIVE
//
//  Возвращаемое значение:
//   Булево - true if the pipeline has a Kubernetes cluster available
//
Функция КубернетесАктивен() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_KUBERNETES_ACTIVE");
КонецФункции

// Значение CI_NODE_INDEX
//
//  Возвращаемое значение:
//   Строка - The index of the job in the job set
//
Функция ИндексУзла() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_NODE_INDEX");
КонецФункции

// Значение CI_NODE_TOTAL
//
//  Возвращаемое значение:
//   Строка - The total number of instances of this job running in parallel
//
Функция ВсегоУзлов() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_NODE_TOTAL");
КонецФункции

// Значение CI_OPEN_MERGE_REQUESTS
//
//  Возвращаемое значение:
//   Строка - A comma-separated list of up to four merge requests
//
Функция ОткрытыеМержРеквесты() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_OPEN_MERGE_REQUESTS");
КонецФункции

// Значение CI_PAGES_DOMAIN
//
//  Возвращаемое значение:
//   Строка - The instance's domain that hosts GitLab Pages
//
Функция ДоменПейджес() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PAGES_DOMAIN");
КонецФункции

// Значение CI_PAGES_HOSTNAME
//
//  Возвращаемое значение:
//   Строка - The full hostname of the Pages deployment
//
Функция ХостПейджес() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PAGES_HOSTNAME");
КонецФункции

// Значение CI_PAGES_URL
//
//  Возвращаемое значение:
//   Строка - The URL for a GitLab Pages site
//
Функция УРЛПейджес() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PAGES_URL");
КонецФункции

// Значение CI_PIPELINE_ID
//
//  Возвращаемое значение:
//   Строка - The instance-level ID of the current pipeline
//
Функция ИдПайплайна() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PIPELINE_ID");
КонецФункции

// Значение CI_PIPELINE_IID
//
//  Возвращаемое значение:
//   Строка - The project-level IID (internal ID) of the current pipeline
//
Функция ВнутреннийИдПайплайна() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PIPELINE_IID");
КонецФункции

// Значение CI_PIPELINE_SOURCE
//
//  Возвращаемое значение:
//   Строка - How the pipeline was triggered
//
Функция ИсточникПайплайна() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PIPELINE_SOURCE");
КонецФункции

// Значение CI_PIPELINE_TRIGGERED
//
//  Возвращаемое значение:
//   Булево - true for pipelines triggered with a trigger token
//
Функция ПайплайнЗапущенТриггером() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PIPELINE_TRIGGERED");
КонецФункции

// Значение CI_PIPELINE_URL
//
//  Возвращаемое значение:
//   Строка - The URL for the pipeline details
//
Функция УРЛПайплайна() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PIPELINE_URL");
КонецФункции

// Значение CI_PIPELINE_CREATED_AT
//
//  Возвращаемое значение:
//   Строка - The date and time when the pipeline was created
//
Функция ВремяСозданияПайплайна() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PIPELINE_CREATED_AT");
КонецФункции

// Значение CI_PIPELINE_NAME
//
//  Возвращаемое значение:
//   Строка - The pipeline name defined in workflow:name
//
Функция ИмяПайплайна() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PIPELINE_NAME");
КонецФункции

// Значение CI_PIPELINE_SCHEDULE_DESCRIPTION
//
//  Возвращаемое значение:
//   Строка - The description of the pipeline schedule
//
Функция ОписаниеРасписанияПайплайна() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PIPELINE_SCHEDULE_DESCRIPTION");
КонецФункции

// Значение CI_PROJECT_DIR
//
//  Возвращаемое значение:
//   Строка - The full path the repository is cloned to
//
Функция ДиректорияПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_DIR");
КонецФункции

// Значение CI_PROJECT_ID
//
//  Возвращаемое значение:
//   Строка - The ID of the current project
//
Функция ИдПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_ID");
КонецФункции

// Значение CI_PROJECT_NAME
//
//  Возвращаемое значение:
//   Строка - The name of the directory for the project
//
Функция ИмяПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_NAME");
КонецФункции

// Значение CI_PROJECT_NAMESPACE
//
//  Возвращаемое значение:
//   Строка - The project namespace (username or group name) of the job
//
Функция ПространствоПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_NAMESPACE");
КонецФункции

// Значение CI_PROJECT_NAMESPACE_ID
//
//  Возвращаемое значение:
//   Строка - The project namespace ID of the job
//
Функция ИдПространстваПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_NAMESPACE_ID");
КонецФункции

// Значение CI_PROJECT_NAMESPACE_SLUG
//
//  Возвращаемое значение:
//   Строка - $CI_PROJECT_NAMESPACE in lowercase, shortened to 63 bytes
//
Функция СлагПространстваПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_NAMESPACE_SLUG");
КонецФункции

// Значение CI_PROJECT_PATH_SLUG
//
//  Возвращаемое значение:
//   Строка - $CI_PROJECT_PATH in lowercase, shortened to 63 bytes
//
Функция СлагПутиПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_PATH_SLUG");
КонецФункции

// Значение CI_PROJECT_PATH
//
//  Возвращаемое значение:
//   Строка - The project namespace with the project name included
//
Функция ПутьПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_PATH");
КонецФункции

// Значение CI_PROJECT_REPOSITORY_LANGUAGES
//
//  Возвращаемое значение:
//   Строка - A comma-separated, lowercase list of the languages used in the repository
//
Функция ЯзыкиРепозитория() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_REPOSITORY_LANGUAGES");
КонецФункции

// Значение CI_PROJECT_ROOT_NAMESPACE
//
//  Возвращаемое значение:
//   Строка - The root project namespace (username or group name) of the job
//
Функция КорневоеПространствоПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_ROOT_NAMESPACE");
КонецФункции

// Значение CI_PROJECT_ROOT_NAMESPACE_SLUG
//
//  Возвращаемое значение:
//   Строка - $CI_PROJECT_ROOT_NAMESPACE in lowercase, shortened to 63 bytes
//
Функция СлагКорневогоПространстваПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_ROOT_NAMESPACE_SLUG");
КонецФункции

// Значение CI_PROJECT_TITLE
//
//  Возвращаемое значение:
//   Строка - The human-readable project name as displayed in the GitLab web interface
//
Функция ЗаголовокПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_TITLE");
КонецФункции

// Значение CI_PROJECT_DESCRIPTION
//
//  Возвращаемое значение:
//   Строка - The project description as displayed in the GitLab web interface
//
Функция ОписаниеПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_DESCRIPTION");
КонецФункции

// Значение CI_PROJECT_TOPICS
//
//  Возвращаемое значение:
//   Строка - A comma-separated, lowercase list of topics assigned to the project
//
Функция ТемыПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_TOPICS");
КонецФункции

// Значение CI_PROJECT_URL
//
//  Возвращаемое значение:
//   Строка - The HTTP(S) address of the project
//
Функция УРЛПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_URL");
КонецФункции

// Значение CI_PROJECT_VISIBILITY
//
//  Возвращаемое значение:
//   Строка - The project visibility
//
Функция ВидимостьПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_VISIBILITY");
КонецФункции

// Значение CI_PROJECT_CLASSIFICATION_LABEL
//
//  Возвращаемое значение:
//   Строка - The project external authorization classification label
//
Функция МеткаКлассификацииПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_PROJECT_CLASSIFICATION_LABEL");
КонецФункции

// Значение CI_REGISTRY
//
//  Возвращаемое значение:
//   Строка - Address of the container registry server
//
Функция Реестр() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_REGISTRY");
КонецФункции

// Значение CI_REGISTRY_IMAGE
//
//  Возвращаемое значение:
//   Строка - Base address for the container registry to push, pull, or tag project's images
//
Функция ОбразРеестра() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_REGISTRY_IMAGE");
КонецФункции

// Значение CI_REGISTRY_PASSWORD
//
//  Возвращаемое значение:
//   Строка - The password to push containers to the GitLab project's container registry
//
Функция ПарольРеестра() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_REGISTRY_PASSWORD");
КонецФункции

// Значение CI_REGISTRY_USER
//
//  Возвращаемое значение:
//   Строка - The username to push containers to the project's GitLab container registry
//
Функция ПользовательРеестра() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_REGISTRY_USER");
КонецФункции

// Значение CI_RELEASE_DESCRIPTION
//
//  Возвращаемое значение:
//   Строка - The description of the release
//
Функция ОписаниеРелиза() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_RELEASE_DESCRIPTION");
КонецФункции

// Значение CI_REPOSITORY_URL
//
//  Возвращаемое значение:
//   Строка - The full path to Git clone (HTTP) the repository with a CI/CD job token
//
Функция УРЛРепозитория() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_REPOSITORY_URL");
КонецФункции

// Значение CI_RUNNER_DESCRIPTION
//
//  Возвращаемое значение:
//   Строка - The description of the runner
//
Функция ОписаниеРаннера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_RUNNER_DESCRIPTION");
КонецФункции

// Значение CI_RUNNER_EXECUTABLE_ARCH
//
//  Возвращаемое значение:
//   Строка - The OS/architecture of the GitLab Runner executable
//
Функция АрхитектураРаннера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_RUNNER_EXECUTABLE_ARCH");
КонецФункции

// Значение CI_RUNNER_ID
//
//  Возвращаемое значение:
//   Строка - The unique ID of the runner being used
//
Функция ИдРаннера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_RUNNER_ID");
КонецФункции

// Значение CI_RUNNER_REVISION
//
//  Возвращаемое значение:
//   Строка - The revision of the runner running the job
//
Функция РевизияРаннера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_RUNNER_REVISION");
КонецФункции

// Значение CI_RUNNER_SHORT_TOKEN
//
//  Возвращаемое значение:
//   Строка - The runner's unique ID, used to authenticate new job requests
//
Функция КороткийТокенРаннера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_RUNNER_SHORT_TOKEN");
КонецФункции

// Значение CI_RUNNER_TAGS
//
//  Возвращаемое значение:
//   Строка - A JSON array of runner tags
//
Функция ТегиРаннера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_RUNNER_TAGS");
КонецФункции

// Значение CI_RUNNER_VERSION
//
//  Возвращаемое значение:
//   Строка - The version of the GitLab Runner running the job
//
Функция ВерсияРаннера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_RUNNER_VERSION");
КонецФункции

// Значение CI_SERVER_FQDN
//
//  Возвращаемое значение:
//   Строка - The fully qualified domain name (FQDN) of the instance
//
Функция ПолноеИмяДоменаСервера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER_FQDN");
КонецФункции

// Значение CI_SERVER_HOST
//
//  Возвращаемое значение:
//   Строка - The host of the GitLab instance URL
//
Функция ХостСервера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER_HOST");
КонецФункции

// Значение CI_SERVER_NAME
//
//  Возвращаемое значение:
//   Строка - The name of CI/CD server that coordinates jobs
//
Функция ИмяСервера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER_NAME");
КонецФункции

// Значение CI_SERVER_PORT
//
//  Возвращаемое значение:
//   Строка - The port of the GitLab instance URL
//
Функция ПортСервера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER_PORT");
КонецФункции

// Значение CI_SERVER_PROTOCOL
//
//  Возвращаемое значение:
//   Строка - The protocol of the GitLab instance URL
//
Функция ПротоколСервера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER_PROTOCOL");
КонецФункции

// Значение CI_SERVER_SHELL_SSH_HOST
//
//  Возвращаемое значение:
//   Строка - The SSH host of the GitLab instance
//
Функция СШХостСервера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER_SHELL_SSH_HOST");
КонецФункции

// Значение CI_SERVER_SHELL_SSH_PORT
//
//  Возвращаемое значение:
//   Строка - The SSH port of the GitLab instance
//
Функция СШПортСервера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER_SHELL_SSH_PORT");
КонецФункции

// Значение CI_SERVER_REVISION
//
//  Возвращаемое значение:
//   Строка - GitLab revision that schedules jobs
//
Функция РевизияСервера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER_REVISION");
КонецФункции

// Значение CI_SERVER_TLS_CA_FILE
//
//  Возвращаемое значение:
//   Строка - File containing the TLS CA certificate
//
Функция ФайлCACервера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER_TLS_CA_FILE");
КонецФункции

// Значение CI_SERVER_TLS_CERT_FILE
//
//  Возвращаемое значение:
//   Строка - File containing the TLS certificate
//
Функция ФайлСертификатаСервера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER_TLS_CERT_FILE");
КонецФункции

// Значение CI_SERVER_TLS_KEY_FILE
//
//  Возвращаемое значение:
//   Строка - File containing the TLS key
//
Функция ФайлКлючаСервера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER_TLS_KEY_FILE");
КонецФункции

// Значение CI_SERVER_URL
//
//  Возвращаемое значение:
//   Строка - The base URL of the GitLab instance
//
Функция УРЛСервера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER_URL");
КонецФункции

// Значение CI_SERVER_VERSION_MAJOR
//
//  Возвращаемое значение:
//   Строка - The major version of the GitLab instance
//
Функция МажорнаяВерсияСервера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER_VERSION_MAJOR");
КонецФункции

// Значение CI_SERVER_VERSION_MINOR
//
//  Возвращаемое значение:
//   Строка - The minor version of the GitLab instance
//
Функция МинорнаяВерсияСервера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER_VERSION_MINOR");
КонецФункции

// Значение CI_SERVER_VERSION_PATCH
//
//  Возвращаемое значение:
//   Строка - The patch version of the GitLab instance
//
Функция ПатчВерсияСервера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER_VERSION_PATCH");
КонецФункции

// Значение CI_SERVER_VERSION
//
//  Возвращаемое значение:
//   Строка - The full version of the GitLab instance
//
Функция ВерсияСервера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER_VERSION");
КонецФункции

// Значение CI_SERVER
//
//  Возвращаемое значение:
//   Булево - Available for all jobs executed in CI/CD
//
Функция СИСервер() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SERVER");
КонецФункции

// Значение CI_SHARED_ENVIRONMENT
//
//  Возвращаемое значение:
//   Булево - true if the job is executed in a shared environment
//
Функция РазделяемоеОкружение() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_SHARED_ENVIRONMENT");
КонецФункции

// Значение CI_TEMPLATE_REGISTRY_HOST
//
//  Возвращаемое значение:
//   Строка - The host of the registry used by CI/CD templates
//
Функция ХостРеестраШаблонов() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_TEMPLATE_REGISTRY_HOST");
КонецФункции

// Значение CI_TRIGGER_SHORT_TOKEN
//
//  Возвращаемое значение:
//   Строка - First 4 characters of the trigger token of the current job
//
Функция КороткийТокенТриггера() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_TRIGGER_SHORT_TOKEN");
КонецФункции

// Значение CI_UPSTREAM_JOB_ID
//
//  Возвращаемое значение:
//   Строка - ID of the upstream trigger job that triggered the current pipeline
//
Функция ИдВышестоящегоЗадания() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_UPSTREAM_JOB_ID");
КонецФункции

// Значение CI_UPSTREAM_PIPELINE_ID
//
//  Возвращаемое значение:
//   Строка - ID of the upstream pipeline that triggered the current pipeline
//
Функция ИдВышестоящегоПайплайна() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_UPSTREAM_PIPELINE_ID");
КонецФункции

// Значение CI_UPSTREAM_PROJECT_ID
//
//  Возвращаемое значение:
//   Строка - ID of the upstream project that triggered the current pipeline
//
Функция ИдВышестоящегоПроекта() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_UPSTREAM_PROJECT_ID");
КонецФункции

// Значение CI_TRACEPARENT
//
//  Возвращаемое значение:
//   Строка - A W3C Trace Context traceparent header value for the job
//
Функция Трейспарент() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_TRACEPARENT");
КонецФункции

// Значение CI_TRACESTATE
//
//  Возвращаемое значение:
//   Строка - A W3C Trace Context tracestate header value containing GitLab-specific trace metadata
//
Функция СостояниеТрассировки() Экспорт
	Возврат ПолучитьПеременнуюСреды("CI_TRACESTATE");
КонецФункции

// Значение GITLAB_CI
//
//  Возвращаемое значение:
//   Булево - Available for all jobs executed in CI/CD
//
Функция ГитЛабСИ() Экспорт
	Возврат ПолучитьПеременнуюСреды("GITLAB_CI");
КонецФункции

// Значение GITLAB_FEATURES
//
//  Возвращаемое значение:
//   Строка - The comma-separated list of licensed features available
//
Функция ФункцииГитЛаб() Экспорт
	Возврат ПолучитьПеременнуюСреды("GITLAB_FEATURES");
КонецФункции

// Значение GITLAB_USER_EMAIL
//
//  Возвращаемое значение:
//   Строка - The email of the user who started the pipeline
//
Функция ПочтаПользователя() Экспорт
	Возврат ПолучитьПеременнуюСреды("GITLAB_USER_EMAIL");
КонецФункции

// Значение GITLAB_USER_ID
//
//  Возвращаемое значение:
//   Строка - The numeric ID of the user who started the pipeline
//
Функция ИдПользователя() Экспорт
	Возврат ПолучитьПеременнуюСреды("GITLAB_USER_ID");
КонецФункции

// Значение GITLAB_USER_LOGIN
//
//  Возвращаемое значение:
//   Строка - The unique username of the user who started the pipeline
//
Функция ЛогинПользователя() Экспорт
	Возврат ПолучитьПеременнуюСреды("GITLAB_USER_LOGIN");
КонецФункции

// Значение GITLAB_USER_NAME
//
//  Возвращаемое значение:
//   Строка - The display name of the user who started the pipeline
//
Функция ИмяПользователя() Экспорт
	Возврат ПолучитьПеременнуюСреды("GITLAB_USER_NAME");
КонецФункции

// Значение KUBECONFIG
//
//  Возвращаемое значение:
//   Строка - The path to the kubeconfig file with contexts
//
Функция КонфигКластера() Экспорт
	Возврат ПолучитьПеременнуюСреды("KUBECONFIG");
КонецФункции

// Значение TRIGGER_PAYLOAD
//
//  Возвращаемое значение:
//   Строка - The webhook payload
//
Функция ПолезнаяНагрузкаТриггера() Экспорт
	Возврат ПолучитьПеременнуюСреды("TRIGGER_PAYLOAD");
КонецФункции