pwd=$(shell pwd)

default: test


test: 
	@echo * Running tests.
	rm -rf results
	mkdir results
	{ cd /etc ; $(pwd)/scripts/gordo ; } > results/gordo.result
	{ cd data/mp3-forest ; $(pwd)/scripts/mp3dups ; } > results/mp3dups.result
	./scripts/recap < data/names.txt > results/recap.result
	./scripts/oxbane > results/oxbane.result
	./scripts/rot13 < data/magic-words.rot13 > results/rot13.result
	cp -v -r data/spaced-out results/space-invader.result	
	{ cd results/space-invader.result ; $(pwd)/scripts/space-invader ; }
	./scripts/intersect data/primes.set data/odds.set > results/intersect.result
	./scripts/crackgen data/words > results/crackgen.result
	./scripts/passcrack data/crackable.db results/crackgen.result > results/passcrack.result
	if ./scripts/validate data/accounts.db matt love; then echo 0 > results/validate.result; fi
	if ./scripts/validate data/accounts.db matt foobar; then echo 1 > results/validate.result; fi


compare:
	diff -r results expected-results

clean:
	rm -rf results
