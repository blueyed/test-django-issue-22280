test: venv/bin/django-admin
	cd proot \
		&& DJANGO_SETTINGS_MODULE=project.settings ../venv/bin/python -Wall manage.py test

venv/bin/django-admin: venv/bin/pip
	venv/bin/pip install https://www.djangoproject.com/download/1.7c1/tarball/

venv/bin/pip:
	virtualenv venv
