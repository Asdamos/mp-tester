_TESTS = $(wildcard tests/*)
TESTS = $(notdir $(_TESTS))
PG = swipl -q -O #-G100g -T20g -L2g

test: $(TESTS)

performance: $(filter p-%, $(TESTS))
validity: $(filter v-%, $(TESTS))
	
%.test:
	@echo
	@echo "Test suite: $@"
	@echo "------------------------------------------------------------"
	@$(PG) -s test.pl -t test_all tests/$@

share:
	@make -s test | curl -F 'f:1=<-' ix.io

share-perf:
	@make -s performance | curl -F 'f:1=<-' ix.io

share-valid:
	@make -s validity | curl -F 'f:1=<-' ix.io

.PHONY: test performance validity share share-perf share-valid
