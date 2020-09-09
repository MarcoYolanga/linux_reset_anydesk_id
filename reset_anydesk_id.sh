
echo "Reset Anydesk v1.0"
read -p "Your Anydesk password: " pass
actual_id=$(anydesk --get-id)
if [ "$actual_id" == "" ]
then
	echo "Warning: No anydesk is running"
else
	echo "Your old anydesk id: $actual_id"
fi
rm /etc/anydesk/service.conf
echo "Restarting anydesk..."
service anydesk restart
echo -n "Waiting new id.."
new_id=$(anydesk --get-id)
while [ "$new_id" == "$actual_id" ] || [ "$new_id" == "" ] || [ "$new_id" == "SERVICE_NOT_RUNNING" ]
do
        echo -n "."
        service anydesk restart
	echo -n
        sleep .5
	new_id=$(anydesk --get-id)
done
echo
echo $pass | anydesk --set-password
echo Your new Anydesk id is $new_id
echo Restarting lightdm...
sleep 3
service lightdm restart
echo Anydesk is ready
