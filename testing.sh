# Import auto pilot
source ./autopilot.sh

# Cleanup
echo Demo Setup: In Progress...
rm -rf ./dreamhouse-lwc
git clone -q https://github.com/ntotten/dreamhouse-lwc > /dev/null
cd ./dreamhouse-lwc
npm install
sfdx force:org:create -f config/project-scratch-def.json -s -a dreamhousedev > /dev/null
echo Demo Setup: In Progress...
sfdx force:source:push > /dev/null
echo Demo Setup: Complete
cd ..

# Demo script
dprintf "cd ./dreamhouse-lwc" 
dprintf "code ."