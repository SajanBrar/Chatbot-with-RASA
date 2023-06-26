# Pinpencil-Chatbot
## Implementation of Chatbot using RASA framework.

If you have anaconda installed, open the anaconda powershell prompt, and create a new environment in a chosen directory:
```
conda create -n rasabot anaconda
```

To install rasa:
```
pip install rasa
```

The following will create all required files:
```
rasa init
```

After this you can use ```rasa train```, ```rasa shell```, ```rasa test``` conveniently.

```rasa shell``` will run the bot in powershell. To run in browser, give the following command in the shell, then open ```index.html``` in browser.
```
rasa run -m models --enable-api --cors "*" 
```

Docker pull command:
```
docker pull sajanbrar/rasabotrep
```
