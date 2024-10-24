FROM python:3.11-slim

#set working directory
WORKDIR /app

#copy dependecies
COPY requirements.txt .

#install dependencies
RUN pip install -r requirements.txt

#copy app files
COPY main.py .
COPY books.json .

#expose port 
EXPOSE 8000

#run app
CMD ["uvicorn", "main:app","--host","0.0.0.0", "--port","8000"]

