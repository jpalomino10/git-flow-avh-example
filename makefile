all: print

feature-start:
	@git checkout develop
	@git pull origin develop
	@git checkout -b feature/${n}

feature-publish:
	git push origin HEAD

feature-finish:
	@git checkout develop
	@git merge feature/${n}
	@git push origin --delete ${n}
	@git branch -d ${n}

hotfix:
	echo "hola"