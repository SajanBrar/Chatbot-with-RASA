# Extend the official Rasa SDK image
FROM rasa/rasa-sdk:3.6.0

# RUN python -m pip install rasa 

# Use subdirectory as working directory
WORKDIR /app

# Copy any additional custom requirements, if necessary (uncomment next line)
# COPY actions/requirements-actions.txt ./

# Change back to root user to install dependencies
# USER root

# Install extra requirements for actions code, if necessary (uncomment next line)
# RUN pip install -r requirements-actions.txt

# Copy actions folder to working directory
COPY . .
# RUN rasa train nlu

# By best practices, don't run the code with root user
USER 1001

ENTRYPOINT ["rasa"]
CMD ["run", "--enable-api", "--port", "8080"]