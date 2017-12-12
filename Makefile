IMAGE=selenium-headless-chrome

build:
	docker build -t $(IMAGE) .

run:
	docker run --rm \
		-v `pwd`:/tmp \
		$(IMAGE)

shell:
	docker run -it --rm -v `pwd`:/tmp/ $(IMAGE) sh

register:
	aws ecs register-task-definition --cli-input-json ecs_task_definition.json
