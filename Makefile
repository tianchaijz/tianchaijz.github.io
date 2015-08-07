J=jekyll

all: new

clean:
	rm -rf _site/

new:
	sh new_post.sh

serve:
	$J serve --port=9000 --drafts --watch
