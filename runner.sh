export FLASK_APP=main.py

case $1 in
	run)
		export FLASK_DEBUG=1
		export FLASK_CONFIG=developement

		flask run
		;;

	shell)
		export FLASK_CONFIG=testing
		flask shell
		;;

	prod)
		export FLASK_CONFIG=production
		flask run
		;;

	clear)
		find . -name "__pycache__" -type d -exec rm -rf "{}" +
		;;

esac
