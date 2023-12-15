all: print

feature:
	@git checkout develop
	@git pull origin develop
	@git checkout -b feature/${n}

feature-publish:
	git push origin HEAD

feature-finish:
	@git checkout develop
	@git merge feature/${n}
	@git push origin --delete feature/${n}
	@git branch -d feature/${n}

release:
	@git checkout main
	@git merge develop
	@npm version v${v} 
	@git push --tags && git push
