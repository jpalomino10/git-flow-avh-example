all: print

feature:
	@git checkout develop
	@git pull origin develop
	@git checkout -b feature/${n}

feature-publish:
	git push origin HEAD

hotfix:
	echo "hola"