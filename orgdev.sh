# Import auto pilot
source ./autopilot.sh

# Cleanup
rm -rf ./ebikes-lwc

# Demo script
dprintf "sfdx force:project:create --projectname ebikes-lwc --manifest"
dprintf "cd ebikes-lwc"
dprintf "sfdx force:config:set defaultusername=Sandbox1"
dprintf "code ."