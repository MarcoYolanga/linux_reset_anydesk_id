When you clone your linux machine in an image you also clone Anydesk's configuration and id, and when you activate a clone of your machine it takes your id and make all the other ones unreachable.

Run this to reset your anydesk id and password
```
wget -O /tmp/reset_anydesk_id.sh https://raw.githubusercontent.com/MarcoYolanga/linux_reset_anydesk_id/master/reset_anydesk_id.sh && sudo chmod +x /tmp/reset_anydesk_id.sh && sudo /tmp/reset_anydesk_id.sh
```
