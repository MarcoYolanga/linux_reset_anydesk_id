When you clone your linux machine in an image you also clone Anydesk's configuration and id, so if you boot a clone of your machine it starts using your Anydesk id making all the other cloned installations unreachable.

Run this on your clones to reset your anydesk id and password
```
wget -O /tmp/reset_anydesk_id.sh https://raw.githubusercontent.com/MarcoYolanga/linux_reset_anydesk_id/master/reset_anydesk_id.sh && sudo chmod +x /tmp/reset_anydesk_id.sh && sudo /tmp/reset_anydesk_id.sh
```

Also restarts lightdm service to allow remote connection without reboot in Raspbian

Warning: Anydesk options are completely resetted and then remote access password is configured. You lose other customizations if you run this
