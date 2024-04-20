Hello
## PROJECT INSTALLIATION

1. connect to server with ssh key:
ssh -i test_3.pem ec2-user@100.24.59.247
(note: permissions to key.pem file should be 601 or lower)

2. create project folder:
mkdir file_name
cd file_name

3. install the python 3(if it is not installed)

4. install the GIT (if it is not installed)
sudo yum install git 
(depend on OS use yum or apt-get or brew)

5. clone repository
git clone https://github.com/AndriyTurko/myclass-.git

6. install pip3 (if it not installed)
sudo yum install python3-pip

7. install virtualenv (if it not installed)
pip3 install virtualenv

8. create python virtual environment
python3 -m virtualenv p_venv

9. activete virtual environment 
source p_venv/bin/activate

10. cd myclass-/

11. install all python packages from requirements.txt
pip install -r requirements.txt



## NEW PAGE CREATION

First step:
added new register in admin.py


Second step:
added new class in models.py for our new model

Third step:
create url for this model in urls.py

Fourth step:
also create class for our model in file views.py and if the file is detail, then there is also a function 'get_context_data'

Fifth step:
we go to the template folder and create a file with the name we need and already write the HTML code and everything else in it

Sixth step:
if everything is correct, we do makemigrations and migrate to save the code to the database

Seventh step:
run our code and check if everything works

Eight and last step:
when we have completed everything and everything works, we make a PR, i.e. a Pull Request in Git Hub so that other people canwork with our code further




