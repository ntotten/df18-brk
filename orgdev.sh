# Import auto pilot
source ./autopilot.sh

# Cleanup
rm -rf ./dreamhouseproj

# Demo script
dprintf "sfdx force:project:create --projectname dreamhouseproj --manifest"
dprintf "cd dreamhouseproj"
dprintf "sfdx force:config:set defaultusername=Sandbox"
dprintf "code ."