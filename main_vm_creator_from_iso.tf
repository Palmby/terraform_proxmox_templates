#Creates a VM based off of an ISO

resource "proxmox_vm_qemu" "proxmox_test"{
  additional_wait           = 15
  balloon                   = 0
  bios                      = "seabios"
  boot                      = "cdn"
  clone_wait                = 15
  cores                     = 2
  cpu                       = "host"
  define_connection_info    = true
  force_create              = false
  full_clone                = true
  guest_agent_ready_timeout = 60
  hotplug                   = "network,disk,usb"
  kvm                       = true
  memory                    = 1048
  name                      = "TestMachinecreated"                  
  numa                      = false
  onboot                    = false #set to false
  preprovision              = true
  qemu_os                   = "l26"                              
  sockets                   = 1
  target_node               = "NODE_NAME" #Add your proxmox node here
  vcpus                     = 0
  iso                       = "local:iso/ISO_NAME_HERE" #this is to pull from the iso store
  

  
  
}

#Some Options are missing. Consult https://registry.terraform.io/providers/Telmate/proxmox/latest/docs/resources/vm_qemu for more options
##KNOWN BUG.. VM will be created but the State File will not be created properly.