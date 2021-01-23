from locust import HttpUser, constant, task, tag

counter = 9

def addingCounter():
    global counter
    counter = counter + 1

class WebsiteUser(HttpUser):
    wait_time = constant(1)


    @task
    @tag('get')
    def index(self):
        self.client.get("/criminal/all")


    @task
    @tag('post')
    def post(self):
        self.client.post("/criminal", json={
            "nama": "Gerald",
            "umur": "35",
            "tindak": "terorisme",
            "status":"buron"
        })


    @task
    @tag('put')
    def put(self):
        self.client.put("/criminal/"+str(counter), json={
            "status":"ditangkap"
        })
        addingCounter()



    @task
    @tag('delete')
    def delete(self):
        self.client.delete("/criminal/"+str(counter))
        addingCounter()
