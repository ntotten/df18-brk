# Import auto pilot
source ./autopilot.sh

# Cleanup
rm -rf ./dreamhouse-lwc

# Demo script
dprintf "git clone https://github.com/ntotten/dreamhouse-lwc"
dprintf "cd ./dreamhouse-lwc" 
dprintf "npm install"
dprintf "code ."
dprintf "sfdx force:org:create -f config/project-scratch-def.json -s -a dreamhousedev"
dprintf "sfdx force:source:push"
dprintf "sfdx force:source:pull"
dprintf "git add ."
dprintf "git commit -m 'new component'"
cd ..