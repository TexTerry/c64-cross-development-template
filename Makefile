example: example.a
	acme -o drive/example -f cbm example.a

basexample: basexample.bas
	scripts/buildbasicfile basexample.bas

clean:
	rm drive/example
	rm drive/basexample
