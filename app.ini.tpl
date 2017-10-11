APP_NAME = Gitea: Git with a cup of tea
RUN_USER = git
RUN_MODE = prod

[repository]
ROOT = /data/git/repositories

[repository.upload]
TEMP_PATH = /data/gitea/uploads

[server]
APP_DATA_PATH    = /data/gitea
SSH_DOMAIN       = ##GITEA_DOMAIN##
DOMAIN           = ##GITEA_DOMAIN##
HTTP_PORT        = ##GITEA_HTTP_PORT##
ROOT_URL         = http://##GITEA_HOST##:##GITEA_HTTP_PORT##/
DISABLE_SSH      = false
SSH_PORT         = ##GITEA_SSH_PORT##
LFS_START_SERVER = false
OFFLINE_MODE     = false

[database]
DB_TYPE  = postgres
PATH     = /data/gitea/gitea.db
HOST     = ##GITEA_COMPOSE_SERVICE_NAME_DB##:5432
NAME     = ##GITEA_PG_DBNAME##
USER     = ##GITEA_PG_USER##
PASSWD   = ##GITEA_PG_PASSWD##
SSL_MODE = disable

[session]
PROVIDER_CONFIG = /data/gitea/sessions
PROVIDER        = file

[picture]
AVATAR_UPLOAD_PATH      = /data/gitea/avatars
DISABLE_GRAVATAR        = false
ENABLE_FEDERATED_AVATAR = false

[attachment]
PATH = /data/gitea/attachments

[log]
ROOT_PATH = /data/gitea/log
MODE      = file
LEVEL     = Info

[security]
INTERNAL_TOKEN = eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYmYiOjE1MDc4MDI0OTl9.C6WzJmxfy4RGZw9PQglHsG7ol7d4JwPXw9eFUaIQQn0
INSTALL_LOCK   = true
SECRET_KEY     = 328LdQ2Noe

[mailer]
ENABLED = false

[service]
REGISTER_EMAIL_CONFIRM            = false
ENABLE_NOTIFY_MAIL                = false
DISABLE_REGISTRATION              = false
ENABLE_CAPTCHA                    = false
REQUIRE_SIGNIN_VIEW               = false
DEFAULT_KEEP_EMAIL_PRIVATE        = false
DEFAULT_ALLOW_CREATE_ORGANIZATION = true
DEFAULT_ENABLE_TIMETRACKING       = true
NO_REPLY_ADDRESS                  = noreply.example.org

[openid]
ENABLE_OPENID_SIGNIN = true
ENABLE_OPENID_SIGNUP = true

