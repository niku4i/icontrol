# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{icontrol}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jose Fernandez (magec)"]
  s.date = %q{2011-01-05}
  s.description = %q{This gem allows you to Connect to a F5 appliance by means of its web services}
  s.email = %q{jfernandezperez@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "lib/icontrol.rb",
    "lib/icontrol/arx.rb",
    "lib/icontrol/arx/api.rb",
    "lib/icontrol/arx/chassis.rb",
    "lib/icontrol/arx/export.rb",
    "lib/icontrol/arx/file_change_notification.rb",
    "lib/icontrol/arx/file_server.rb",
    "lib/icontrol/arx/namespace.rb",
    "lib/icontrol/arx/network.rb",
    "lib/icontrol/arx/policy.rb",
    "lib/icontrol/arx/share.rb",
    "lib/icontrol/arx/virtual_service.rb",
    "lib/icontrol/arx/volume.rb",
    "lib/icontrol/asm.rb",
    "lib/icontrol/asm/object_params.rb",
    "lib/icontrol/asm/policy.rb",
    "lib/icontrol/asm/system_configuration.rb",
    "lib/icontrol/asm/web_application.rb",
    "lib/icontrol/asm/web_application_group.rb",
    "lib/icontrol/base.rb",
    "lib/icontrol/base/attributable.rb",
    "lib/icontrol/base/enumeration.rb",
    "lib/icontrol/base/exception.rb",
    "lib/icontrol/base/mappings.rb",
    "lib/icontrol/base/predeclarations.rb",
    "lib/icontrol/base/sequence.rb",
    "lib/icontrol/base/struct.rb",
    "lib/icontrol/common.rb",
    "lib/icontrol/global_lb.rb",
    "lib/icontrol/global_lb/application.rb",
    "lib/icontrol/global_lb/data_center.rb",
    "lib/icontrol/global_lb/dnssec_key.rb",
    "lib/icontrol/global_lb/dnssec_zone.rb",
    "lib/icontrol/global_lb/globals.rb",
    "lib/icontrol/global_lb/link.rb",
    "lib/icontrol/global_lb/monitor.rb",
    "lib/icontrol/global_lb/pool.rb",
    "lib/icontrol/global_lb/pool_member.rb",
    "lib/icontrol/global_lb/region.rb",
    "lib/icontrol/global_lb/rule.rb",
    "lib/icontrol/global_lb/server.rb",
    "lib/icontrol/global_lb/topology.rb",
    "lib/icontrol/global_lb/virtual_server.rb",
    "lib/icontrol/global_lb/wide_ip.rb",
    "lib/icontrol/local_lb.rb",
    "lib/icontrol/local_lb/klass.rb",
    "lib/icontrol/local_lb/monitor.rb",
    "lib/icontrol/local_lb/nat.rb",
    "lib/icontrol/local_lb/node_address.rb",
    "lib/icontrol/local_lb/pool.rb",
    "lib/icontrol/local_lb/pool_member.rb",
    "lib/icontrol/local_lb/profile_auth.rb",
    "lib/icontrol/local_lb/profile_client_ssl.rb",
    "lib/icontrol/local_lb/profile_diameter.rb",
    "lib/icontrol/local_lb/profile_dns.rb",
    "lib/icontrol/local_lb/profile_fast_http.rb",
    "lib/icontrol/local_lb/profile_fast_l4.rb",
    "lib/icontrol/local_lb/profile_ftp.rb",
    "lib/icontrol/local_lb/profile_http.rb",
    "lib/icontrol/local_lb/profile_http_class.rb",
    "lib/icontrol/local_lb/profile_iiop.rb",
    "lib/icontrol/local_lb/profile_one_connect.rb",
    "lib/icontrol/local_lb/profile_persistence.rb",
    "lib/icontrol/local_lb/profile_radius.rb",
    "lib/icontrol/local_lb/profile_rtsp.rb",
    "lib/icontrol/local_lb/profile_sctp.rb",
    "lib/icontrol/local_lb/profile_server_ssl.rb",
    "lib/icontrol/local_lb/profile_sip.rb",
    "lib/icontrol/local_lb/profile_stream.rb",
    "lib/icontrol/local_lb/profile_tcp.rb",
    "lib/icontrol/local_lb/profile_udp.rb",
    "lib/icontrol/local_lb/profile_user_statistic.rb",
    "lib/icontrol/local_lb/profile_xml.rb",
    "lib/icontrol/local_lb/ram_cache_information.rb",
    "lib/icontrol/local_lb/rate_class.rb",
    "lib/icontrol/local_lb/rule.rb",
    "lib/icontrol/local_lb/snat.rb",
    "lib/icontrol/local_lb/snat_pool.rb",
    "lib/icontrol/local_lb/snat_pool_member.rb",
    "lib/icontrol/local_lb/snat_translation_address.rb",
    "lib/icontrol/local_lb/virtual_address.rb",
    "lib/icontrol/local_lb/virtual_server.rb",
    "lib/icontrol/lt_config.rb",
    "lib/icontrol/lt_config/field.rb",
    "lib/icontrol/lt_config/klass.rb",
    "lib/icontrol/management.rb",
    "lib/icontrol/management/ccldap_configuration.rb",
    "lib/icontrol/management/change_control.rb",
    "lib/icontrol/management/crldp_configuration.rb",
    "lib/icontrol/management/crldp_server.rb",
    "lib/icontrol/management/db_variable.rb",
    "lib/icontrol/management/event_notification.rb",
    "lib/icontrol/management/event_subscription.rb",
    "lib/icontrol/management/key_certificate.rb",
    "lib/icontrol/management/ldap_configuration.rb",
    "lib/icontrol/management/license_administration.rb",
    "lib/icontrol/management/named.rb",
    "lib/icontrol/management/ocsp_configuration.rb",
    "lib/icontrol/management/ocsp_responder.rb",
    "lib/icontrol/management/partition.rb",
    "lib/icontrol/management/provision.rb",
    "lib/icontrol/management/radius_configuration.rb",
    "lib/icontrol/management/radius_server.rb",
    "lib/icontrol/management/resource_record.rb",
    "lib/icontrol/management/snmp_configuration.rb",
    "lib/icontrol/management/tacacs_configuration.rb",
    "lib/icontrol/management/tmos_module.rb",
    "lib/icontrol/management/user_management.rb",
    "lib/icontrol/management/view.rb",
    "lib/icontrol/management/zone.rb",
    "lib/icontrol/management/zone_runner.rb",
    "lib/icontrol/networking.rb",
    "lib/icontrol/networking/admin_ip.rb",
    "lib/icontrol/networking/arp.rb",
    "lib/icontrol/networking/i_session_advertised_route.rb",
    "lib/icontrol/networking/i_session_local_interface.rb",
    "lib/icontrol/networking/i_session_peer_discovery.rb",
    "lib/icontrol/networking/i_session_remote_interface.rb",
    "lib/icontrol/networking/interfaces.rb",
    "lib/icontrol/networking/packet_filter.rb",
    "lib/icontrol/networking/packet_filter_globals.rb",
    "lib/icontrol/networking/port_mirror.rb",
    "lib/icontrol/networking/profile_gre.rb",
    "lib/icontrol/networking/profile_ipip.rb",
    "lib/icontrol/networking/profile_wccpgre.rb",
    "lib/icontrol/networking/route_domain.rb",
    "lib/icontrol/networking/route_table.rb",
    "lib/icontrol/networking/self_ip.rb",
    "lib/icontrol/networking/self_ip_port_lockdown.rb",
    "lib/icontrol/networking/stp_globals.rb",
    "lib/icontrol/networking/stp_instance.rb",
    "lib/icontrol/networking/trunk.rb",
    "lib/icontrol/networking/tunnel.rb",
    "lib/icontrol/networking/vlan.rb",
    "lib/icontrol/networking/vlan_group.rb",
    "lib/icontrol/system.rb",
    "lib/icontrol/system/cluster.rb",
    "lib/icontrol/system/config_sync.rb",
    "lib/icontrol/system/connections.rb",
    "lib/icontrol/system/disk.rb",
    "lib/icontrol/system/failover.rb",
    "lib/icontrol/system/geo_ip.rb",
    "lib/icontrol/system/inet.rb",
    "lib/icontrol/system/internal.rb",
    "lib/icontrol/system/services.rb",
    "lib/icontrol/system/software_management.rb",
    "lib/icontrol/system/statistics.rb",
    "lib/icontrol/system/system_info.rb",
    "lib/icontrol/web_accelerator.rb",
    "lib/icontrol/web_accelerator/applications.rb",
    "lib/icontrol/web_accelerator/policies.rb",
    "lib/icontrol/web_accelerator/proxy_message.rb"
  ]
  s.homepage = %q{http://github.com/magec/icontrol}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A ruby client to the BigIP F5}
  s.test_files = [
    "spec/icontrol/arx/api_spec.rb",
    "spec/icontrol/arx/chassis_spec.rb",
    "spec/icontrol/arx/export_spec.rb",
    "spec/icontrol/arx/file_change_notification_spec.rb",
    "spec/icontrol/arx/file_server_spec.rb",
    "spec/icontrol/arx/namespace_spec.rb",
    "spec/icontrol/arx/network_spec.rb",
    "spec/icontrol/arx/policy_spec.rb",
    "spec/icontrol/arx/share_spec.rb",
    "spec/icontrol/arx/virtual_service_spec.rb",
    "spec/icontrol/arx/volume_spec.rb",
    "spec/icontrol/asm/object_params_spec.rb",
    "spec/icontrol/asm/policy_spec.rb",
    "spec/icontrol/asm/system_configuration_spec.rb",
    "spec/icontrol/asm/web_application_group_spec.rb",
    "spec/icontrol/asm/web_application_spec.rb",
    "spec/icontrol/global_lb/application_spec.rb",
    "spec/icontrol/global_lb/data_center_spec.rb",
    "spec/icontrol/global_lb/dnssec_key_spec.rb",
    "spec/icontrol/global_lb/dnssec_zone_spec.rb",
    "spec/icontrol/global_lb/globals_spec.rb",
    "spec/icontrol/global_lb/link_spec.rb",
    "spec/icontrol/global_lb/monitor_spec.rb",
    "spec/icontrol/global_lb/pool_member_spec.rb",
    "spec/icontrol/global_lb/pool_spec.rb",
    "spec/icontrol/global_lb/region_spec.rb",
    "spec/icontrol/global_lb/rule_spec.rb",
    "spec/icontrol/global_lb/server_spec.rb",
    "spec/icontrol/global_lb/topology_spec.rb",
    "spec/icontrol/global_lb/virtual_server_spec.rb",
    "spec/icontrol/global_lb/wide_ip_spec.rb",
    "spec/icontrol/local_lb/klass_spec.rb",
    "spec/icontrol/local_lb/monitor_spec.rb",
    "spec/icontrol/local_lb/nat_spec.rb",
    "spec/icontrol/local_lb/node_address_spec.rb",
    "spec/icontrol/local_lb/pool_member_spec.rb",
    "spec/icontrol/local_lb/pool_spec.rb",
    "spec/icontrol/local_lb/profile_auth_spec.rb",
    "spec/icontrol/local_lb/profile_client_ssl_spec.rb",
    "spec/icontrol/local_lb/profile_diameter_spec.rb",
    "spec/icontrol/local_lb/profile_dns_spec.rb",
    "spec/icontrol/local_lb/profile_fast_http_spec.rb",
    "spec/icontrol/local_lb/profile_fast_l4_spec.rb",
    "spec/icontrol/local_lb/profile_ftp_spec.rb",
    "spec/icontrol/local_lb/profile_http_class_spec.rb",
    "spec/icontrol/local_lb/profile_http_spec.rb",
    "spec/icontrol/local_lb/profile_iiop_spec.rb",
    "spec/icontrol/local_lb/profile_one_connect_spec.rb",
    "spec/icontrol/local_lb/profile_persistence_spec.rb",
    "spec/icontrol/local_lb/profile_radius_spec.rb",
    "spec/icontrol/local_lb/profile_rtsp_spec.rb",
    "spec/icontrol/local_lb/profile_sctp_spec.rb",
    "spec/icontrol/local_lb/profile_server_ssl_spec.rb",
    "spec/icontrol/local_lb/profile_sip_spec.rb",
    "spec/icontrol/local_lb/profile_stream_spec.rb",
    "spec/icontrol/local_lb/profile_tcp_spec.rb",
    "spec/icontrol/local_lb/profile_udp_spec.rb",
    "spec/icontrol/local_lb/profile_user_statistic_spec.rb",
    "spec/icontrol/local_lb/profile_xml_spec.rb",
    "spec/icontrol/local_lb/ram_cache_information_spec.rb",
    "spec/icontrol/local_lb/rate_class_spec.rb",
    "spec/icontrol/local_lb/rule_spec.rb",
    "spec/icontrol/local_lb/snat_pool_member_spec.rb",
    "spec/icontrol/local_lb/snat_pool_spec.rb",
    "spec/icontrol/local_lb/snat_spec.rb",
    "spec/icontrol/local_lb/snat_translation_address_spec.rb",
    "spec/icontrol/local_lb/virtual_address_spec.rb",
    "spec/icontrol/local_lb/virtual_server_spec.rb",
    "spec/icontrol/lt_config/field_spec.rb",
    "spec/icontrol/lt_config/klass_spec.rb",
    "spec/icontrol/management/ccldap_configuration_spec.rb",
    "spec/icontrol/management/change_control_spec.rb",
    "spec/icontrol/management/crldp_configuration_spec.rb",
    "spec/icontrol/management/crldp_server_spec.rb",
    "spec/icontrol/management/db_variable_spec.rb",
    "spec/icontrol/management/event_notification_spec.rb",
    "spec/icontrol/management/event_subscription_spec.rb",
    "spec/icontrol/management/key_certificate_spec.rb",
    "spec/icontrol/management/ldap_configuration_spec.rb",
    "spec/icontrol/management/license_administration_spec.rb",
    "spec/icontrol/management/named_spec.rb",
    "spec/icontrol/management/ocsp_configuration_spec.rb",
    "spec/icontrol/management/ocsp_responder_spec.rb",
    "spec/icontrol/management/partition_spec.rb",
    "spec/icontrol/management/provision_spec.rb",
    "spec/icontrol/management/radius_configuration_spec.rb",
    "spec/icontrol/management/radius_server_spec.rb",
    "spec/icontrol/management/resource_record_spec.rb",
    "spec/icontrol/management/snmp_configuration_spec.rb",
    "spec/icontrol/management/tacacs_configuration_spec.rb",
    "spec/icontrol/management/tmos_module_spec.rb",
    "spec/icontrol/management/user_management_spec.rb",
    "spec/icontrol/management/view_spec.rb",
    "spec/icontrol/management/zone_runner_spec.rb",
    "spec/icontrol/management/zone_spec.rb",
    "spec/icontrol/networking/admin_ip_spec.rb",
    "spec/icontrol/networking/arp_spec.rb",
    "spec/icontrol/networking/i_session_advertised_route_spec.rb",
    "spec/icontrol/networking/i_session_local_interface_spec.rb",
    "spec/icontrol/networking/i_session_peer_discovery_spec.rb",
    "spec/icontrol/networking/i_session_remote_interface_spec.rb",
    "spec/icontrol/networking/interfaces_spec.rb",
    "spec/icontrol/networking/packet_filter_globals_spec.rb",
    "spec/icontrol/networking/packet_filter_spec.rb",
    "spec/icontrol/networking/port_mirror_spec.rb",
    "spec/icontrol/networking/profile_gre_spec.rb",
    "spec/icontrol/networking/profile_ipip_spec.rb",
    "spec/icontrol/networking/profile_wccpgre_spec.rb",
    "spec/icontrol/networking/route_domain_spec.rb",
    "spec/icontrol/networking/route_table_spec.rb",
    "spec/icontrol/networking/self_ip_port_lockdown_spec.rb",
    "spec/icontrol/networking/self_ip_spec.rb",
    "spec/icontrol/networking/stp_globals_spec.rb",
    "spec/icontrol/networking/stp_instance_spec.rb",
    "spec/icontrol/networking/trunk_spec.rb",
    "spec/icontrol/networking/tunnel_spec.rb",
    "spec/icontrol/networking/vlan_group_spec.rb",
    "spec/icontrol/networking/vlan_spec.rb",
    "spec/icontrol/system/cluster_spec.rb",
    "spec/icontrol/system/config_sync_spec.rb",
    "spec/icontrol/system/connections_spec.rb",
    "spec/icontrol/system/disk_spec.rb",
    "spec/icontrol/system/failover_spec.rb",
    "spec/icontrol/system/geo_ip_spec.rb",
    "spec/icontrol/system/inet_spec.rb",
    "spec/icontrol/system/internal_spec.rb",
    "spec/icontrol/system/services_spec.rb",
    "spec/icontrol/system/software_management_spec.rb",
    "spec/icontrol/system/statistics_spec.rb",
    "spec/icontrol/system/system_info_spec.rb",
    "spec/icontrol/web_accelerator/applications_spec.rb",
    "spec/icontrol/web_accelerator/policies_spec.rb",
    "spec/icontrol/web_accelerator/proxy_message_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<savon>, ["~> 0.8.1"])
      s.add_runtime_dependency(%q<httpi>, ["~> 0.7.6"])
      s.add_development_dependency(%q<vcr>, ["~> 1.4.0"])
      s.add_development_dependency(%q<webmock>, ["~> 1.6"])
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<mechanize>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_development_dependency(%q<yard-examples-from-rspec>, ["~> 0.0.1"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_runtime_dependency(%q<savon>, ["~> 0.8.1"])
      s.add_runtime_dependency(%q<httpi>, ["~> 0.7.6"])
      s.add_development_dependency(%q<vcr>, ["~> 1.4.0"])
      s.add_development_dependency(%q<webmock>, ["~> 1.6"])
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<mechanize>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<savon>, ["~> 0.8.1"])
      s.add_dependency(%q<httpi>, ["~> 0.7.6"])
      s.add_dependency(%q<vcr>, ["~> 1.4.0"])
      s.add_dependency(%q<webmock>, ["~> 1.6"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<mechanize>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_dependency(%q<yard-examples-from-rspec>, ["~> 0.0.1"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<savon>, ["~> 0.8.1"])
      s.add_dependency(%q<httpi>, ["~> 0.7.6"])
      s.add_dependency(%q<vcr>, ["~> 1.4.0"])
      s.add_dependency(%q<webmock>, ["~> 1.6"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<mechanize>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<savon>, ["~> 0.8.1"])
    s.add_dependency(%q<httpi>, ["~> 0.7.6"])
    s.add_dependency(%q<vcr>, ["~> 1.4.0"])
    s.add_dependency(%q<webmock>, ["~> 1.6"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<mechanize>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.3.0"])
    s.add_dependency(%q<yard>, ["~> 0.6.0"])
    s.add_dependency(%q<yard-examples-from-rspec>, ["~> 0.0.1"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<savon>, ["~> 0.8.1"])
    s.add_dependency(%q<httpi>, ["~> 0.7.6"])
    s.add_dependency(%q<vcr>, ["~> 1.4.0"])
    s.add_dependency(%q<webmock>, ["~> 1.6"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<mechanize>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.3.0"])
    s.add_dependency(%q<yard>, ["~> 0.6.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end
