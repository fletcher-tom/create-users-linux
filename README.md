# Create-Users-Linux
Task: 
Automate the process of creating users in Linux as per the given requirements. 

Requirements 1:
- A user can be passed in as a command line argument
- A user is created with the name of the command line argument
- A password can be passed in as a command line argument
- The password is set for the user
- A message of successful account creation is displayed

Requirements 1.5:
- Capture the command line arguments as variables and use those variables to to reference the values in the script.

Requirements 2:
- The scripts needs to be extended to do the following:
    1. Generate a random password if no password is passed in as an argument
    2. The username and password for the newly created user are written to a file
    3. The file is sent as an email attachment to the user, with a success message
    4. The file with the user’s credentials is deleted from the system
    5. Company Rules file is in the user's home directory

Requirements 3:
- Add a function which can remove a user from the system (remove profile & home directory)
- The script needs to be able to determine whether it should add or remove a user. 
