# Install Initial Software
sudo apt install nodejs npm zsh git nginx mariadb-server ufw
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Edit Config Files
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc
sed -i 's/plugins=(git)/plugins=(\n\tgit\n\tzsh-syntax-highlighting\n\tzsh-autosuggestions\n)/g' ~/.zshrc

# Install ZSH Plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# This line is per project
# npm install mysql

# TODO: Write in a Scriptable Fashion
sudo mysql -u root
# ALTER USER 'root'@'localhost' IDENTIFIED BY 'replacemeduringexecution';

# TODO: Determine Where To Place This
# CREATE USER 'replacemeonexecution'@'localhost' IDENTIFIED BY 'replacemeonexecution';
# GRANT ALL PRIVILEGES ON *.* TO 'replacemeonexecution'@'localhost' WITH GRANT OPTION;

sed -i '1i#MySQL Server Info\nexport DB_USERNAME=art\nexport DB_PASSWORD=replacemeduringexecution\nexport DB_HOST=localhost\nexport DB_NAME=art\n' ~/.zshrc
export DB_USERNAME=art
export DB_PASSWORD=replacemeduringexecution
export DB_HOST=localhost
export DB_NAME=art
