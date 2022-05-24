FROM python
EXPOSE 8000
RUN mkdir /root/app
WORKDIR /root/app
RUN pip install fastapi
RUN pip install "uvicorn[all]"
COPY main.py ./
CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0"]