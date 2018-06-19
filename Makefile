MIME_DIR:="/usr/share/mime"
GTKSOURCEVIEW_DIR:="/usr/share/gtksourceview-3.0/language-specs/"

.PHONY: install uninstall

.ONESHELL:

install: 
	@(/bin/echo -e "\e[1mInstalling MIME definition in $(MIME_DIR)...\e[0m" && \
	cp sas.xml "$(MIME_DIR)/packages/sas.xml" -v && \
	/bin/echo -e "\e[1mUpdating MIME system database\e[0m" && \
	/usr/bin/update-mime-database "$(MIME_DIR)" && \
	/bin/echo -e "\e[1mInstalling GTK Languague definition in $(GTKSOURCEVIEW_DIR)\e[0m" && \
	cp sas.lang "$(GTKSOURCEVIEW_DIR)/" -v && \
	/bin/echo -e "\e[32mSuccessfully installed\e[0m") || /bin/echo -e "\e[31mInstallation has failed\e[0m"
	
uninstall:
	@(/bin/echo -e "\e[1mRemoving MIME definition in $(MIME_DIR)...\e[0m" && \
	rm  "$(MIME_DIR)/packages/sas.xml" -v && \
	/bin/echo -e "\e[1mUpdating MIME system database\e[0m" && \
	sudo update-mime-database "$(MIME_DIR)" 
	/bin/echo -e "\e[1mRemoving GTK Languague definition in $(GTKSOURCEVIEW_DIR)\e[0m" && \
	rm "$(GTKSOURCEVIEW_DIR)/sas.lang" -v && \
	/bin/echo -e "\e[32mSuccessfully uninstalled\e[0m") || /bin/echo -e "\e[31mUninstallation has failed\e[0m"