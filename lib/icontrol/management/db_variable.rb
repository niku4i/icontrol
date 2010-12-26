module IControl::Management
  ##
  # The DBVariable interface exposes methods that enable you to work directly with our internal database that contains configuration variables using name/value pairs.
  class DBVariable < IControl::Base

    set_id_name "variables"

    class VariableNameValue < IControl::Base::Struct; end    ##
    # Creates this variable in the database.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes the variable referenced from the database.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_variable
      super
    end

    ##
    # Retrieves the values of all variable defined in the database. This list can potentially be huge.
    # @return [VariableNameValue]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Verifies the existence of this variable in the database.
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_variable_available
      super
    end

    ##
    # Modifies this variable in the database.
    def modify
      super
    end

    ##
    # Queries the values of this variable.
    # @return [VariableNameValue]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def query
      super
    end

    ##
    # Resets this variable to their default values.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset
      super
    end

    ##
    # A struct that describes the name and value of a database variable.
    # @attr [String] name The key name.
    # @attr [String] value The key value.
    class VariableNameValue < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :value, String
    end


    ## A sequence of VariableNameValue structures.
    class VariableNameValueSequence < IControl::Base::Sequence ; end
  end
end
