Tutorial Create Custom .GZ Files For Digital Ocean / Linode

![Alt text](https://canhme.com/wp-content/uploads/2018/09/DigitalOcean-Custom-Images.jpg "Screenshot")

REQUIREMENT ON THIS LAB:
 - Your Custom Windows ISO Link (On Google Drive or Direct Link)
 - Google Drive Storage At Least 10GB Free Space 
 - Or Use https://transfer.sh/ For Upload .GZ

STEP:
 
 - First, download your Windows ISO by using command `./download.sh`{{execute}}
 
 - Create RAW disk for VM by using command `qemu-img create -f raw windows.img 15G`{{copy}}
 
 - Need VirtIO driver for Windows, download it `wget -O virtio-win.iso https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso`{{execute}}

 - Start noVNC so you can access VM on web browser `./noVNC.sh`{{execute}}
 
 - Once done, start QEMU-KVM and click Open Desktop to finish Windows Installation.
 `qemu-system-x86_64 -net nic -net user,hostfwd=tcp::3389-:3389 -show-cursor -m 3072M -localtime -enable-kvm -cpu host,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time,+nx -M pc -smp cores=2 -vga std -machine type=pc,accel=kvm -usb -device usb-tablet -k en-us -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -boot c -vnc :1`{{execute}}
 
 *You need to Load and Install 3 VirtIO Driver Viostor, Vioscsi, NetKVM (remember uncheck Hide driver...) *
 
 - When windows installation complete, set password windows login, enable RDP, install necessary software like chrome,winrar,...,then shutdown VM
 
 - Create .GZ Files For RAW disk using command `dd if=windows.img bs=1M status=progress | gzip -c > WindowsCustom.gz`{{execute}}
 
 - Finally !!! Upload it using `./upload.sh`{{execute}}
