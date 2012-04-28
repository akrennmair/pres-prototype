TPAGE=tpage
RM=rm -f

PRES=$(patsubst pres/%.tt2,%.html,$(wildcard pres/*.tt2))
DEPS=$(wildcard slides/*.tt2) $(wildcard tmpl/*.tt2)

all: $(PRES)

%.html: pres/%.tt2 $(DEPS)
	$(TPAGE) $< > $@

clean:
	$(RM) $(PRES)
