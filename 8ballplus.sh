#!/bin/bash

# Magic 8-Ball Bash Script, starting with a clear for a blank page 
clear
#grab the images to use for script

# ASCII art load
unzip -p 8ball.zip magic8.txt | cat 
# Array of possible answers

# Function to generate a random index
get_random_index() {
echo $(( RANDOM % 14 ))
}

# Main script

echo "Welcome to the Magic 8-Ball!"
echo
echo "Ask a question, and I'll give you an answer."
# Prompt for user input and sets $user 
read -p "What is your name? " user
:
:
# Array of Answers to pull from.
answers=("Ask Keagan Leroux" "Should be alright" "Why are you asking me?" "Outlook is fuzzy"
"Just Do it" "Don't do it $user, too risky" "What exactly are we doing here $user?" "I don't know, yes?"
"I'd risk it" "Who's to say?" "If you have to $user....I guess" "Listen $user, if you're coming to me, you have bigger issues"
 "What if we pretend you didn't ask me that?" "Akinator might know, I'm just an 8 Ball" )
# Set a Loop
while true
do
clear
# 8 ball image - sourced https://www.asciiart.eu/sports-and-outdoors/billiards
cat /home/keagan/Bin/billiard.txt
echo
read -p "Hey $user What is your question for the ball? " question

# Generate a random index and retrieve the corresponding answer
random_index=$(get_random_index)
answer=${answers[$random_index]}

if [ -z "$question" ] ; then
echo "Please do not enter blank questions"
# Displays Answer
else 
echo
echo " Hey $user, thanks for that, your question of '$question' is a thinker give me a second"
sleep 2
echo
echo " $answer "
echo
sleep 1
fi
# Insert second loop for Yes or No, This loop can also Exit from the program. 
	while true 
	do
read -p "Would you like to continue? (Y/N) " choice
	if [[ $choice = "N" ]] ; then
	echo "No Worries, We will see you around!" 
	exit
	elif [[ $choice = "Y" ]] ; then 
	echo
	break
	# This else condition will reject anything other then Y or N
	else [ -f $choice ] 
	echo "Use Y for yes or N for no please "	
	fi
	done	
done