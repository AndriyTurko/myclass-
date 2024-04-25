Hello
## PROJECT INSTALLIATION

1. Connect to server with ssh key:
```
ssh -i test_3.pem ec2-user@100.24.59.247
```
> (note: permissions to `key.pem` file should be 601 or lower)

2. Create project folder:
```
mkdir file_name
```
```
cd file_name
```

3. Install the _python3_ (if it is not installed)

4. Install the _GIT_ (if it is not installed):
```
sudo yum install git
```
> (depend on OS use yum or apt-get or brew)

5. Clone repository:
```
git clone https://github.com/AndriyTurko/myclass-.git
```

6. Install _pip3_ (if it not installed):
```
sudo yum install python3-pip
```

7. Install _virtualenv_ (if it not installed):
```
pip3 install virtualenv
```

8. Create _python virtual environment_:
```
python3 -m virtualenv p_venv
```

9. Activete _virtual environment_:
``` 
source p_venv/bin/activate
```

10. `cd myclass-/`

11. Install _mysql_:
```
sudo rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
wget http://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm
sudo yum localinstall -y mysql57-community-release-el7-8.noarch.rpm
sudo yum install -y mysql-community-server
```
```
sudo systemctl start mysqld 
sudo systemctl enable mysqld 
```

12. Get the password for the `root user`:
```
sudo grep 'temporary password' /var/log/mysqld.log
enter DB with password
mysql -u root -p
```

* You have to change the root user's password before you can do anything, so run the following command to do that:
```
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'R00tr00t!';
```

* Reenter `mysql` with new password:
```
create new DB for our project
create database DB_name;
```

* Create new user and grant all previlegies for DB:
```
GRANT ALL PRIVILEGES ON myclass.* To 'admin'@'localhost' IDENTIFIED BY 'Adm1nadm!n';
```

13. Install additional packages on _linux_:
```
sudo dnf install gcc mysql-devel python3-devel
```

14. Install all python packages from `requirements.txt`:
```
pip install -r requirements.txt
```

15. Write in `settings.py` password, user_name, etc 

16. For the end do this:
```
python manage.py migrate
```
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




