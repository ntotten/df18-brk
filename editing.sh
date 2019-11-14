# Import auto pilot
source ./autopilot.sh

# Cleanup
echo Demo Setup: In Progress...
rm -rf ./dreamhouse-lwc
git clone -q https://github.com/ntotten/dreamhouse-lwc > /dev/null
cd ./dreamhouse-lwc
sfdx force:org:create -f config/project-scratch-def.json -s -a dreamhousedev > /dev/null
npm install > /dev/null
sfdx force:source:push > /dev/null
sfdx force:user:permset:assign -n dreamhouse > /dev/null
sfdx force:data:tree:import --plan data/sample-data.json > /dev/null
echo Demo Setup: Complete
cd ..

# Demo script
dprintf "cd ./dreamhouse-lwc" 
dprintf "code ."
