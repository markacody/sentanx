setup:
	python3 -m venv ~/.sentanx

install:
	pip install -r requirements.txt

test: 
	python -m pytest -vv --cov=sentanxlib tests/*.py

lint:
	pylint --disable=R,C sentanxlib 

all: install lint test 