config_path = ~/.zshrc

# Copy ~/.zshrc to current folder
cp: | $(config_path)
ifneq ($(wildcard ~/.zshrc),)
	cp ~/.zshrc .zshrc
else
	@echo "~/.zshrc not exist"
endif
	
# Apply .zshrc to ~/
apply_config:
ifneq ($(wildcard .zshrc),)
	cp .zshrc ~/.zshrc
else
	@echo ".zshrc not exist"
endif

		