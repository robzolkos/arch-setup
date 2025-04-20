if [[ ! -d stages ]]; then
	echo "No stages/ directory found - nothing to run."
	exit 0
fi

for stage in stages/*.sh; do
	echo "-> Running $(basename "$stage")..."
	bash "$stage"
done
