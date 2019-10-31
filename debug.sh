# Import auto pilot
source ./autopilot.sh

# Cleanup
echo Demo Setup: In Progress...
rm -rf ./ebikes-lwc
git clone -q https://github.com/trailheadapps/ebikes-lwc > /dev/null
cd ./ebikes-lwc
sfdx force:org:create -f config/project-scratch-def.json -s -a mydhdev > /dev/null
echo Demo Setup: In Progress...
sfdx force:source:push > /dev/null
echo Demo Setup: Complete
cd ..

# Demo script
dprintf "cd ./ebikes-lwc" 
dprintf "code ."
