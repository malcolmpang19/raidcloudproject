from flask import Flask
import redis

app = Flask(__name__)

# Connect to Redis
redis_client = redis.Redis(host="redis", port=6379, decode_responses=True)

@app.route('/')
def visit_counter():
    # Increment the counter
    visits = redis_client.incr('visits')
    return f"<h1>You are the {visits}th visitor!</h1>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)