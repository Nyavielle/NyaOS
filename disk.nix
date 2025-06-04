{
  disko.devices = {
    disk = {
      root = {
        type = "disk";
        device = "/dev/nvme0n1";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              size = "1G";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = [ "nofail" "umask=0077" ];
              };
            };
            zfs = {
              size = "100%";
              content = {
                type = "zfs";
                pool = "zroot";
              };
            };
          };
        };
      };
    };

    zpool = {
      zroot = {
        type = "zpool";
        options.ashift = "12";
        rootFsOptions = {
          mountpoint = "none";
          canmount = "off";
          compression = "zstd";
          acltype = "posixacl";
          xattr = "sa";
          relatime = "on";
          dnodesize = "auto";
          normalization = "formD";
          "com.sun:auto-snapshot" = "true";
        };

        datasets = {
          "root" = {
            type = "zfs_fs";
            mountpoint = "/";
            options = {
              canmount = "noauto";
              encryption = "aes-256-gcm";
              keyformat = "passphrase";
              keylocation = "prompt";
            };
          };

          "root/nix" = {
            type = "zfs_fs";
            mountpoint = "/nix";
          };

          "root/home" = {
            type = "zfs_fs";
            mountpoint = "/home";
            options."com.sun:auto-snapshot" = "true";
          };

          "root/root" = {
            type = "zfs_fs";
            mountpoint = "/root";
            options."com.sun:auto-snapshot" = "false";
          };
        };
      };
    };
  };
}
{
  disko.devices = {
    disk = {
      root = {
        type = "disk";
        device = "/dev/nvme0n1";
        content = {
          type = "gpt";
          partitions = {
            ESP = {
              size = "1G";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = [ "nofail" "umask=0077" ];
              };
            };
            zfs = {
              size = "100%";
              content = {
                type = "zfs";
                pool = "zroot";
              };
            };
          };
        };
      };
    };

    zpool = {
      zroot = {
        type = "zpool";
        options.ashift = "12";
        rootFsOptions = {
          mountpoint = "none";
          canmount = "off";
          compression = "zstd";
          acltype = "posixacl";
          xattr = "sa";
          relatime = "on";
          dnodesize = "auto";
          normalization = "formD";
          "com.sun:auto-snapshot" = "true";
        };

        datasets = {
          "root" = {
            type = "zfs_fs";
            mountpoint = "/";
            options = {
              canmount = "noauto";
              encryption = "aes-256-gcm";
              keyformat = "passphrase";
              keylocation = "prompt";
            };
          };

          "root/nix" = {
            type = "zfs_fs";
            mountpoint = "/nix";
          };

          "root/home" = {
            type = "zfs_fs";
            mountpoint = "/home";
            options."com.sun:auto-snapshot" = "true";
          };

          "root/root" = {
            type = "zfs_fs";
            mountpoint = "/root";
            options."com.sun:auto-snapshot" = "false";
          };
        };
      };
    };
  };
}
