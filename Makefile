.PHONY: sync
sync:
	git add .
	git commit -m 'Sync'
	git push

.PHONY: serve
serve:
	mdbook serve -p 4000 --dest-dir docs

# https://rust-lang.github.io/mdBook/index.html