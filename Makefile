all: fm_subcarrier_sstv_rx.py fm-subcarrier-sstv-tx fm_subcarrier_raw_tx.py

fm-subcarrier-sstv-tx: fm-subcarrier-sstv-tx.grc
	grcc fm-subcarrier-sstv-tx.grc -d .
	mv top_block.py fm-subcarrier-sstv-tx

fm_subcarrier_raw_tx.py: fm-subcarrier-raw-tx.grc
	grcc fm-subcarrier-raw-tx.grc -d .

fm_subcarrier_sstv_rx.py: fm-subcarrier-sstv-rx.grc
	grcc fm-subcarrier-sstv-rx.grc -d .

clean:
	rm -f fm_subcarrier_raw_tx.py fm_subcarrier_sstv_rx.py fm-subcarrier-sstv-tx

