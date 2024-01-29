NAME=draft-ietf-sidrops-cms-signing-time

LAST_UPLOADED=04

all: $(NAME).xml
	xml2rfc $(NAME).xml --html --text
	rfcdiff $(NAME)-$(LAST_UPLOADED).txt $(NAME).txt

diff:
	rfcdiff $(NAME)-$(LAST_UPLOADED).txt $(NAME).txt

clean:
	rm -f *.html *.txt
