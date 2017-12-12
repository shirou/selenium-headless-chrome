IMAGE=selenium-headless-chrome

build:
	docker build -t $(IMAGE) .

run:
	docker run --rm \
		-v `pwd`:/tmp \
		$(IMAGE)

shell:
	docker run -it --rm -v `pwd`:/tmp/ $(IMAGE) sh
