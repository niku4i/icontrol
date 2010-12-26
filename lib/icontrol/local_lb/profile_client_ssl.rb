module IControl::LocalLB
  ##
  # The ProfileClientSSL interface enables you to manipulate a local load balancer's client SSL profile.
  class ProfileClientSSL < IControl::Base

    set_id_name "profile_names"

    class ProfileClientSSLStatisticEntry < IControl::Base::Struct; end
    class ProfileClientSSLStatistics < IControl::Base::Struct; end    ##
    # Creates this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :keys The key filenames to be used by BIG-IP acting as an SSL server.
    # @option opts [IControl::LocalLB::ProfileString] :certs The certificate filenames to be used by BIG-IP acting as an SSL server.
    def create(opts)
      check_params(opts,[:keys,:certs])
      super
    end

    ##
    # Deletes all client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_profiles
      super
    end

    ##
    # Deletes this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_profile
      super
    end

    ##
    # Gets the connection timeouts (in seconds) after sending an alert for this client SSL profile.
    # @return [ProfileULong]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def alert_timeout
      super
    end

    ##
    # Gets the statistics for all the client SSL profile.
    # @return [ProfileClientSSLStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the states to indicate whether to allow non-SSL connections to pass through as cleartext.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def allow_nonssl_state
      super
    end

    ##
    # Gets the client certificate chain maximum traversal depth for this client SSL profile.
    # @return [ProfileULong]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def authenticate_depth
      super
    end

    ##
    # Gets the states to request the client certificate once for this client SSL profile.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def authenticate_once_state
      super
    end

    ##
    # Gets the CA filenames for this client SSL profile.
    # @return [ProfileString]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def ca_file
      super
    end

    ##
    # Gets the SSL session cache sizes for this client SSL profile.
    # @return [ProfileULong]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def cache_size
      super
    end

    ##
    # Gets the SSL session cache timeouts for this client SSL profile.
    # @return [ProfileULong]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def cache_timeout
      super
    end

    ##
    # Gets the certificate filenames to be used by BIG-IP acting as an SSL server.
    # @return [ProfileString]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def certificate_file
      super
    end

    ##
    # Gets the certificate chain filenames for this client SSL profile.
    # @return [ProfileString]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def chain_file
      super
    end

    ##
    # Gets the cipher lists for this client SSL profile.
    # @return [ProfileStringArray]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def cipher_list
      super
    end

    ##
    # Gets the client certificate CA filenames for this client SSL profile.
    # @return [ProfileString]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def client_certificate_ca_file
      super
    end

    ##
    # Gets the CRL filenames for this client SSL profile.
    # @return [ProfileString]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def crl_file
      super
    end

    ##
    # Gets the names of the default profile from which this profile will derive default values for its attributes.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def default_profile
      super
    end

    ##
    # Gets the connection timeouts (in seconds) during handshake phase for this client SSL profile.
    # @return [ProfileULong]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def handshake_timeout
      super
    end

    ##
    # Gets the key filenames to be used by BIG-IP acting as an SSL server.
    # @return [ProfileString]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def key_file
      super
    end

    ##
    # Gets a list of all client SSL profile.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the states to emulate modSSL for this client SSL profile.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def modssl_emulation_state
      super
    end

    ##
    # Gets the key passphrases (if any) for this client SSL profile.
    # @return [ProfileString]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def passphrase
      super
    end

    ##
    # Gets the peer certification modes for this client SSL profile.
    # @return [ProfileClientSSLCertificateMode]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def peer_certification_mode
      super
    end

    ##
    # Gets the modes for this client SSL profile.
    # @return [ProfileProfileMode]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def profile_mode
      super
    end

    ##
    # Gets the SSL renegotiation maximum record delay for this client SSL profile.
    # @return [ProfileULong]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def renegotiation_maximum_record_delay
      super
    end

    ##
    # Gets the SSL renegotiation periods for this client SSL profile.
    # @return [ProfileULong]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def renegotiation_period
      super
    end

    ##
    # Gets the states controlling whether mid-stream renegotiation is allowed for this client SSL profile.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def renegotiation_state
      super
    end

    ##
    # Gets the SSL renegotiation throughputs for this client SSL profile.
    # @return [ProfileULong]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def renegotiation_throughput
      super
    end

    ##
    # Gets the SSL options for this client SSL profile.
    # @return [ProfileSSLOption]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def ssl_option
      super
    end

    ##
    # Gets the statistics for this client SSL profile.
    # @return [ProfileClientSSLStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the states to enforce strict SSL session resumption per RFC2246 for this client SSL profile.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def strict_resume_state
      super
    end

    ##
    # Gets the states to do an unclean shutdown for this client SSL profile.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def unclean_shutdown_state
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Determines whether this profile are base/pre-configured profile, or user-defined profile.
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_base_profile
      super
    end

    ##
    # Resets the statistics for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the connection timeouts (in seconds) after sending an alert for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :timeouts The connection timeouts (in seconds) after sending an alert for the specified client SSL profiles.
    def set_alert_timeout(opts)
      check_params(opts,[:timeouts])
      super
    end

    ##
    # Sets the states to indicate whether to allow non-SSL connections to pass through as cleartext.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to indicate whether to allow non-SSL connections to pass through as cleartext.
    def set_allow_nonssl_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the client certificate chain maximum traversal depth for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :depths The client certificate chain maximum traversal depth for the specified client SSL profiles.
    def set_authenticate_depth(opts)
      check_params(opts,[:depths])
      super
    end

    ##
    # Sets the states to request the client certificate once for this client SSL profile. If the state is false/disabled, client certificate is requested for each SSL session renegotiation.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to request the client certificate once for the specified client SSL profiles.
    def set_authenticate_once_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the CA filenames for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :cas The CA filenames for the specified client SSL profiles.
    def set_ca_file(opts)
      check_params(opts,[:cas])
      super
    end

    ##
    # Sets the SSL session cache sizes for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :cache_sizes The SSL session cache sizes for the specified client SSL profiles.
    def set_cache_size(opts)
      check_params(opts,[:cache_sizes])
      super
    end

    ##
    # Sets the SSL session cache timeouts for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :timeouts The SSL session cache timeouts for the specified client SSL profiles.
    def set_cache_timeout(opts)
      check_params(opts,[:timeouts])
      super
    end

    ##
    # Sets the certificate filenames to be used by BIG-IP acting as an SSL server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :certs The certificate filenames to be used by BIG-IP acting as an SSL server.
    def set_certificate_file(opts)
      check_params(opts,[:certs])
      super
    end

    ##
    # Sets the certificate chain filenames for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :chains The certificate chain filenames for the specified client SSL profiles.
    def set_chain_file(opts)
      check_params(opts,[:chains])
      super
    end

    ##
    # Sets the cipher lists for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileStringArray] :ciphers The cipher lists for the specified client SSL profiles.
    def set_cipher_list(opts)
      check_params(opts,[:ciphers])
      super
    end

    ##
    # Sets the client certificate CA filenames for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :client_cert_cas The client certificate CA filenames for the specified client SSL profiles.
    def set_client_certificate_ca_file(opts)
      check_params(opts,[:client_cert_cas])
      super
    end

    ##
    # Sets the CRL filenames for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :crls The CRL filenames to be used by BIG-IP acting as an SSL server.
    def set_crl_file(opts)
      check_params(opts,[:crls])
      super
    end

    ##
    # Sets the names of the default profile from which this profile will derive default values for its attributes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :defaults The default profiles from which the specified profiles will get default values.
    def set_default_profile(opts)
      check_params(opts,[:defaults])
      super
    end

    ##
    # Sets the connection timeouts (in seconds) during handshake phase for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :timeouts The connection timeouts (in seconds) during handshake phase for the specified client SSL profiles.
    def set_handshake_timeout(opts)
      check_params(opts,[:timeouts])
      super
    end

    ##
    # Sets the key filenames to be used by BIG-IP acting as an SSL server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :keys The key filenames to be used by BIG-IP acting as an SSL server.
    def set_key_file(opts)
      check_params(opts,[:keys])
      super
    end

    ##
    # Sets the states to emulate modSSL for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to emulate modSSL for the specified client SSL profiles.
    def set_modssl_emulation_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the key passphrases (if any) for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :passphrases The key passphrases (if any) for the specified client SSL profiles.
    def set_passphrase(opts)
      check_params(opts,[:passphrases])
      super
    end

    ##
    # Sets the peer certification modes for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileClientSSLCertificateMode] :modes The peer certification modes for the specified client SSL profiles.
    def set_peer_certificate_mode(opts)
      check_params(opts,[:modes])
      super
    end

    ##
    # Sets the modes for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileProfileMode] :modes The modes of the specified client SSL profiles.
    def set_profile_mode(opts)
      check_params(opts,[:modes])
      super
    end

    ##
    # Sets the SSL renegotiation maximum record delay for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :delays The SSL renegotiation maximum record delay for the specified client SSL profiles.
    def set_renegotiation_maximum_record_delay(opts)
      check_params(opts,[:delays])
      super
    end

    ##
    # Sets the SSL renegotiation periods for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :periods The SSL renegotiation periods for the specified client SSL profiles.
    def set_renegotiation_period(opts)
      check_params(opts,[:periods])
      super
    end

    ##
    # Sets the states controlling whether mid-stream renegotiation is allowed for this client SSL profile. If renegotiations are enabled, the behavior is unchanged from previous releases, and mid-stream SSL renegotiations are allowed. If renegotiations are disabled, and we are acting as an SSL server, we will abort the connection. For ClientSSL, renegotiations are disabled by default.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to set.
    def set_renegotiation_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the SSL renegotiation throughputs for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :throughputs The SSL renegotiation throughputs for the specified client SSL profiles.
    def set_renegotiation_throughput(opts)
      check_params(opts,[:throughputs])
      super
    end

    ##
    # Sets the SSL options for this client SSL profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileSSLOption] :options The list of SSL options for the specified client SSL profiles.
    def set_ssl_option(opts)
      check_params(opts,[:options])
      super
    end

    ##
    # Sets the states to enforce strict SSL session resumption per RFC2246 for this client SSL profile. If the state is true/enabled, don't send a close notify alert when closing connection.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to enforce strict SSL session resumption per RFC2246 for the specified client SSL profiles.
    def set_strict_resume_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the states to do an unclean shutdown for this client SSL profile. If the state is true/enabled, don't send a close notify alert when closing connection.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to do an unclean shutdown for the specified client SSL profiles.
    def set_unclean_shutdown_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # A struct that describes statistics for a particular client SSL profile.
    # @attr [String] profile_name The profile name.
    # @attr [IControl::Common::Statistic] statistics The statistics for the profile.
    class ProfileClientSSLStatisticEntry < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :statistics, IControl::Common::Statistic
    end

    ##
    # A struct that describes profile statistics and timestamp.
    # @attr [IControl::LocalLB::ProfileClientSSL::ProfileClientSSLStatisticEntry] statistics The statistics for a sequence of profiles.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class ProfileClientSSLStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::ProfileClientSSL::ProfileClientSSLStatisticEntry
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of ProfileClientSSL statistics.
    class ProfileClientSSLStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
