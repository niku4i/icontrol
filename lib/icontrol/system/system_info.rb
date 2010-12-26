module IControl::System
  ##
  # The SystemInfo interface enables you to query identifying attributes of the system.
  class SystemInfo < IControl::Base

    set_id_name "lock_name"

    ##
    # Attempts to acquire loc with specified name for specified number of seconds. These locs can be used to synchronize work of multiple clients working with this device. This call returns immediately.
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :duration_sec Time for how long the system should keep the lock. The lock will be automatically released when duration time is over.
    # @option opts [String] :comment Additional user oriented information about this lock.
    def acquire_lock(opts)
      check_params(opts,[:duration_sec,:comment])
      super
    end

    ##
    # Gets the CPU usage extended information for this system by host ID for all hosts.
    # @return [CPUUsageExtendedInformation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_cpu_usage_extended_information
      super
    end

    ##
    # Gets the system's base MAC address
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument]
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def base_mac_address
      super
    end

    ##
    # Gets the temperatures recorded by the blade sensors
    # @return [BladeTemperature]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument]
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def blade_temperature
      super
    end

    ##
    # Gets connection information (see ConnectionInformation for more info).
    # @return [ConnectionInformation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def connection_information
      super
    end

    ##
    # Gets the CPU metrics for the CPU(s) on the platform.
    # @return [PlatformCPUs]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def cpu_metrics
      super
    end

    ##
    # Gets the CPU usage extended information for this system by host ID.
    # @return [CPUUsageExtendedInformation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :host_ids A list of host ids for which to get CPU usage extended information.
    def cpu_usage_extended_information(opts)
      check_params(opts,[:host_ids])
      super
    end

    ##
    # This method has been deprecated; use get_cpu_usage_extended_information and related methods instead. Gets the CPU usage information for this system.
    # @return [CPUUsageInformation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def cpu_usage_information
      super
    end

    ##
    # Gets the disk usage information for this system.
    # @return [DiskUsageInformation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def disk_usage_information
      super
    end

    ##
    # Gets the Fan metrics for the Fan(s) on the platform.
    # @return [PlatformFans]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def fan_metrics
      super
    end

    ##
    # Gets the global CPU usage extended information for this system. This gets one set of combined ("rolled up") statistics for all hosts. It is not to be confused with get_all_cpu_usage_extended_information, which gets all individual cpu usage statistics, one for each host.
    # @return [GlobalCPUUsageExtendedInformation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def global_cpu_usage_extended_information
      super
    end

    ##
    # Gets a globally unique identifier for the system.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def globally_unique_identifier
      super
    end

    ##
    # Gets the unique identifier for the configsync or sync group of which this device is a member.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def group_id
      super
    end

    ##
    # Gets the information for the hardware in the system. This includes information about CPUs, compression and encryption acceleration hardware, etc.
    # @return [HardwareInformation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument]
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def hardware_information
      super
    end

    ##
    # Lists all names of currently acquired locs.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def lock_list
      super
    end

    ##
    # Gets loc statuses of specified locs
    # @return [LockStatus]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :lock_names sequence of lock names.
    def lock_status(opts)
      check_params(opts,[:lock_names])
      super
    end

    ##
    # Gets the F5 marketing name for this platform
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument]
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def marketing_name
      super
    end

    ##
    # This method has been deprecated; use get_host_statistics and related methods instead. Gets the memory information for this system.
    # @return [MemoryUsageInformation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def memory_usage_information
      super
    end

    ##
    # Gets the Power Supply metrics for the Power Supplies on the platform.
    # @return [PlatformPowerSupplies]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def power_supply_metrics
      super
    end

    ##
    # Gets a list of attributes of installed product.
    # @return [ProductInformation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def product_information
      super
    end

    ##
    # Gets the PVA version
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument]
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def pva_version
      super
    end

    ##
    # Gets the unique identifier for the system.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def system_id
      super
    end

    ##
    # Gets the system-identifying attributes of the operating system.
    # @return [SystemInformation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def system_information
      super
    end

    ##
    # Gets the current chassis temperatures.
    # @return [PlatformTemperatures]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def temperature_metrics
      super
    end

    ##
    # Gets the system time in UTC.
    # @return [TimeStamp]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def time
      super
    end

    ##
    # Gets the local time zone information.
    # @return [TimeZone]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def time_zone
      super
    end

    ##
    # Gets the number of seconds the device has been running.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def uptime
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Attempts to release loc with specified name. These locs can be used to synchronize work of multiple clients working with this device. This call returns immediately. Nothing will happen if specified loc doesn't exist.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def release_lock
      super
    end

    ##
    # Sets the unique identifier for the configsync or sync group of which this device is a member.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :group_id The group identifier.
    def set_group_id(opts)
      check_params(opts,[:group_id])
      super
    end


  end
end
