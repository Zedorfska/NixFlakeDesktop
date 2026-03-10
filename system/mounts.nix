{ ... }:

{
  fileSystems."/mnt/nvme" = {
    device = "/dev/disk/by-uuid/95ee0e26-d3ca-4f07-b5ba-0343bc802a17";
    fsType = "ext4";
  };
}
