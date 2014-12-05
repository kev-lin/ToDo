#ToDo

Title: ToDo


Team Members: Kevin Lin, Victor Lu 


Demo Link: https://todo-list-rails.herokuapp.com/


#Idea: 
An application where users can create tasks and manage their own todo lists.


#Models and Description:
Project (Trainer)
   - Has many tasks
   - Has a title


Task (Pokemon)
   - Belongs to projects
   - Has a name


Priorities
   - Belongs to Tasks
   - Determines how important a specific task is


#Features:
- Users can log in
- Users can create their own projects
- Within each project, a user can create tasks
   - Users can remove tasks after completion
- Uses the Paranoia gem to keep track of deleted tasks
   - Displays previously deleted tasks to keep track of progress
- Future Plans
   - Ability to restore deleted tasks back to the project (like Google Tasks)
   - Changes to deleted tasks to limit number shown
   - Sorting based on priority

#Division of Labor:
Kevin: implemented views, worked on project and task models, worked on routing


Victor: incorporated paranoia gem, worked on priority model, worked on aesthetics
