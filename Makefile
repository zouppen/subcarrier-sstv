all: fm-subcarrier-sstv-rx fm-subcarrier-sstv-tx

fm-subcarrier-sstv-tx: fm-subcarrier-sstv-tx.grc
	grcc fm-subcarrier-sstv-tx.grc -d .
	mv top_block.py fm-subcarrier-sstv-tx

fm-subcarrier-sstv-rx: fm-subcarrier-sstv-rx.grc
	grcc fm-subcarrier-sstv-rx.grc -d .
	mv top_block.py fm-subcarrier-sstv-rx

clean:
	rm fm-subcarrier-sstv-rx fm-subcarrier-sstv-tx

