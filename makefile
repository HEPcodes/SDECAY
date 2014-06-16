OBJS = suspect2.o twoloophiggs.o bsg.o sdecay.o

FC=gfortran

.f.o: 
	$(FC) -c -finit-local-zero $*.f

sdecay: $(OBJS)
	$(FC) $(OBJS) -o run

.PHONY: clean
clean:
	@rm -f $(OBJS) run
