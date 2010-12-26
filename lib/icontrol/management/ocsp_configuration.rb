module IControl::Management
  ##
  # The OCSPConfiguration interface enables you to manage OCSP PAM configuration.
  class OCSPConfiguration < IControl::Base

    set_id_name "config_names"

    ##
    # Adds/associates responders to this OCSP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :responders The responders to add to the OCSP configurations.
    def add_responder(opts)
      check_params(opts,[:responders])
      super
    end

    ##
    # Creates this OCSP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :responders The list of responders to be assigned to each of the configurations.
    def create(opts)
      check_params(opts,[:responders])
      super
    end

    ##
    # Deletes all OCSP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_configurations
      super
    end

    ##
    # Deletes this OCSP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_configuration
      super
    end

    ##
    # Gets a list of all OCSP configurations.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the lists of responders this OCSP configurations are associated with.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def responder
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Removes all responders from this OCSP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_responders
      super
    end

    ##
    # Removes responders from this OCSP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :responders The responders to remove from the OCSP configurations.
    def remove_responder(opts)
      check_params(opts,[:responders])
      super
    end


  end
end
