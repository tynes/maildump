
LIGHTNING=https://lists.linuxfoundation.org/pipermail/lightning-dev/
BITCOIN=https://lists.linuxfoundation.org/pipermail/bitcoin-dev/
UNBOUND=https://nlnetlabs.nl/pipermail/unbound-users/

lightning:
	./fetch.sh $(LIGHTNING)
	./unzip.sh

bitcoin:
	./fetch.sh $(BITCOIN)
	./unzip.sh

unbound-users:
	./fetch.sh $(UNBOUND)
	./unzip.sh

clean:
	rm archives/*
	rm raw/*
