from  deepset/haystack:base-v2.0.0

run export HAYSTACK_TELEMETRY_ENABLED=False

COPY ./main.py /usr/src/myapp/main.py

COPY ./requirements.txt /usr/src/myapp/requirements.txt




RUN ["pip", "install", "-r", "/usr/src/myapp/requirements.txt"]

ENTRYPOINT ["python", "/usr/src/myapp/main.py"]