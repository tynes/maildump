
LIGHTNING=https://lists.linuxfoundation.org/pipermail/lightning-dev/
BITCOIN=https://lists.linuxfoundation.org/pipermail/bitcoin-dev/

lightning:
	./fetch.sh $(LIGHTNING)
	./unzip.sh

bitcoin:
	./fetch.sh $(BITCOIN)
	./unzip.sh

clean:
	rm archives/*
	rm raw/*
