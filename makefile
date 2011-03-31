PYTHON=python
APPENGINE_SDK=google_appengine
APPDIR=feedservice


runserver:
	${PYTHON} ${APPENGINE_SDK}/dev_appserver.py --clear_datastore ${APPDIR}

deploy:
	${PYTHON} ${APPENGINE_SDK}/appcfg.py update ${APPDIR}

.PHONY: runserver deploy
