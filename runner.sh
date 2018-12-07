export FLASK_APP=main.py

case $1 in
	run)
		export FLASK_CONFIG=developement
		flask run
		;;

	shell)
		export FLASK_CONFIG=testing
		flask shell
		;;

	clear)
		find . -name "__pycache__" -type d -exec rm -rf "{}" +
		;;

esac
