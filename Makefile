.PHONY: run clean

run:
	python3 hello.py

docker-run:
	docker build -t repo-a .
	docker run --rm repo-a

clean:
	-docker rmi repo-a 2>/dev/null || true
