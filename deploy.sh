git pull
git add -i
echo "All file untracked will be ignored !!" #Just useless line
git commit -a #Here you're commit all changes done to your project, don't forget that's not adding untracted files
while true; do #initializing the yn question for pushing or not
    read -p "Do you want to push it now ?" yn #Easy read -p line
    case $yn in #Expected answers in case yn
        [Yy]* ) git push appdesk master && exit;;
        [Nn]* ) echo "All done think to push it bro! " && exit;;
        * ) echo "Expected Yes(Yy) or No(Nn)";; #if everything else that the expected Yn question
    esac #End case 
done #End while
