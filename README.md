# rf-docker
Docker implmentation of Robot Framework with web utilities

To use this, you need to have docker installed. This image is based on [robotframework/rfdocker](https://hub.docker.com/r/robotframework/rfdocker) and enhances on it to install other utilities including selenium.
This image is focused for automated headless web testing.
Steps (assuming you are in rf-docker folder):
1. Build the image
> `docker build . -t rf-sel:latest`
>
>> If you want to use a different name for your docker image, please make sure to use the same name in runner.sh script.
2. Update the runner.sh file with your image name
3. Run the runner.sh file
> `bash runner.sh`

This should execute the tests in the robot/tests folder. You can either modify the tests and the runner.sh file to adjust to your testing needs. 

Happy Testing!
