all: print

feature:
	@git checkout develop
	@git pull origin develop
	@git checkout -b feature/${n}

feature-publish:
	git push origin HEAD

feature-test:
	@git checkout staging
	@git pull origin staging
	@git merge HEAD
	@git checkout develop

feature-finish:
	@git checkout develop
	@git pull origin develop
	@git merge feature/${n}
	@git push origin --delete feature/${n}
	@git branch -d feature/${n}

release:
	@git checkout main
	@git merge develop
	@npm version v${v} 
	@git push --tags && git push
	@git checkout develop
