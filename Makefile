build:
	docker build -t wpa/taupo .

start:
	docker run -p 5001:8888 -d wpa/taupo
