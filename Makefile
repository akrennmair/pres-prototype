TPAGE=tpage
RM=rm -f

PRES=$(patsubst pres/%.tt2,%.html,$(wildcard pres/*.tt2))

all: $(PRES)

%.html: pres/%.tt2
	$(TPAGE) $< > $@

clean:
	$(RM) $(PRES)
