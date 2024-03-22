# This is just an example, you should generate yours with nixos-generate-config and put it in here.
{
  fileSystems."/boot" = {
    device = "/dev/disk/by-label/Boot";
    fsType = "vfat";
  };

  fileSystems."/" = {
    device = "/dev/disk/by-label/main";
    fsType = "ext4";
  };
  
  swapDevices = [{
    device = "/dev/sda3";
  }];

  # Set your system kind (needed for flakes)
  nixpkgs.hostPlatform = "aarch64-linux";
}
