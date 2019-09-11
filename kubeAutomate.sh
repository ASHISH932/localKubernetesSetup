	echo "Setting up the dev enviornment.."
  if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  if test ! $(which minikube); then
    echo "Installing minikube..."
		brew cask install minikube
		echo "Minikube Installation Complete"
	fi

  if test ! $(which kubectl); then
		echo "Installing kubectl..."
		brew install kubectl
		echo "kubectl Installation Complete"
	fi

	if test ! $(which helm); then
		echo "Installing helm ..."
		brew install kubernetes-helm
		echo "Helm installation completed"
	fi

	if test ! $(which draft); then
		echo "Installing draft..."
		brew install azure/draft/draft
		echo "draft installed"
		echo "Initiallising draft"
		draft init
		echo "Draft initialised"
	fi

	echo "Your enviornment is Kubernetes friendly :)"