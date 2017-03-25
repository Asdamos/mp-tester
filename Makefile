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

.PHONY: test performance validity
