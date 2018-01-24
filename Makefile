BREW_PATH := $(shell brew --prefix)/bin

all: urls.txt
	sed -E s*https?://**g $< | xargs make

$(BREW_PATH)/pup:
	brew install pup

salaries.texastribune.org:
	wget --mirror --level=1 https://salaries.texastribune.org/agencies/

raw.texastribune.org.s3.amazonaws.com/%:
	@mkdir -p $(@D)
	curl http://$@ >$@

urls.txt: salaries.texastribune.org $(BREW_PATH)/pup
	find $< -name 'index.html' -print0 |\
    xargs -0 -n 1 $(BREW_PATH)/pup 'a:contains("Download this data") attr{href}' -f |\
    sed s:s3.amazonaws.com/raw.texastribune.org:raw.texastribune.org.s3.amazonaws.com:g |\
    sort -g |\
    uniq >$@

clean:
	# Removing urls.txt and everything under salaries.texastribune.org/
	rm -fv urls.txt
	rm -rfv salaries.texastribune.org
