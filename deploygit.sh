echo "All file untracked will be ignored !!"
git commit -a
while true; do
    read -p "Do you want to push it now ?" yn
    case $yn in
        [Yy]* ) git push origin master && exit;;
        [Nn]* ) echo "All done think to push it bro! " && exit;;
        * ) echo "Answers Yes or No";;
    esac
done
