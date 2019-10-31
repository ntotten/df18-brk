# Import auto pilot
source ./autopilot.sh

# Cleanup
rm -rf ./ebikes-lwc

# Demo script
dprintf "git clone https://github.com/trailheadapps/ebikes-lwc"
dprintf "cd ./ebikes-lwc" 
dprintf "code ."
dprintf "sfdx force:org:create -f config/project-scratch-def.json -s -a mydhdev"
dprintf "sfdx force:source:push"
dprintf "sfdx force:source:pull"
dprintf "git add ."
dprintf "git commit -m 'new component'"
cd ..