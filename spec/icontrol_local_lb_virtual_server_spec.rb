require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe IControl::LocalLB::VirtualServer do 

  before do 
    @virtual_server = IControl::LocalLB::VirtualServer.find("test_virtual_server")
    @virtual_server_nil = IControl::LocalLB::VirtualServer.find("test_virtual_server_nil")
  end

  describe "find method" do

    it "should have a find class method called find" do
      IControl::LocalLB::VirtualServer.methods.should include(:find)
    end

    it "should have retreive an object when find is call with id or nil it the object does not exists" do
      IControl::LocalLB::VirtualServer.find("test_virtual_server").class.should be(IControl::LocalLB::VirtualServer)
      IControl::LocalLB::VirtualServer.find("unknown_virtual_server").class.should_not be(IControl::LocalLB::VirtualServer)
      IControl::LocalLB::VirtualServer.find("unknown_virtual_server").should be(nil)
    end
  end


  describe "defaul_pool method" do

    it "should exist" do
      default_pool = @virtual_server.default_pool
      default_pool.should_not be(nil)
      default_pool.class.should be(IControl::LocalLB::Pool)
    end
    
  end

  describe "default_pool= method" do
    it "should have method called default_pool=" do 
      pending
    end
  end

  describe "destroy method" do 
    it "should delete the virtual server" do
      pending
    end
  end

  describe "profiles method" do
    
    it "should have method called profiles" do 
      profiles = @virtual_server.profiles
      profiles.should_not be(nil)
      profiles.class.should be(Array)
      profiles.first.class.should be(IControl::LocalLB::VirtualServer::VirtualServerProfileAttribute)
    end
    
  end

  describe "httpclass_profiles method" do

    it "should exist" do 
      @virtual_server.class.should be(IControl::LocalLB::VirtualServer)
     
      httpclass_profiles = @virtual_server.httpclass_profiles
      httpclass_profiles.should_not be(nil)
      httpclass_profiles.class.should be(IControl::LocalLB::VirtualServer::HttpClassProfileEnumerator)
      httpclass_profiles.first.class.should be(IControl::LocalLB::ProfileHttpClass)
      httpclass_profiles.first.id.should_not be(nil)
    end  
  end

  describe "wildmask method" do 
    it "should exists" do
      @virtual_server.wildmask.class.should be(String)
    end
  end

  describe "type method" do 

    it "shold exists" do 
      lambda { @virtual_server.type }.should_not raise_exception(NoMethodError)
    end

    it "should return a constant child of VirtualServerType" do
      vs_type = @virtual_server.type
      vs_type.should_not be(nil)
      vs_type.ancestors.should include(IControl::LocalLB::VirtualServer::VirtualServerType)
    end
  end

  describe "type= method" do
    it "should change the type of the virtual server" do
      pending
    end
  end

  describe "cmp_enable_mode method" do 

    it "should exists" do 
      lambda { @virtual_server.cmp_enable_mode }.should_not raise_exception(NoMethodError)
    end

    it "should return a constant telling the cmp_enable_mode of the virtual server" do
      cmp_enable = @virtual_server.cmp_enable_mode
      cmp_enable.should_not be(nil)
      cmp_enable.ancestors.should include(IControl::LocalLB::VirtualServer::VirtualServerCMPEnableMode)
    end
  end

  describe "destination method" do 
    it "should exists" do
      lambda { @virtual_server.destination }.should_not raise_exception(NoMethodError)
    end

    it "should return an IPPortDefinition instance" do 
      @virtual_server.destination.class.should be(IControl::Common::IPPortDefinition)
    end
  end

  describe "destination= method" do 
    it "should exists" do
      @virtual_server.methods.should include(:destination=)
    end

    it "should change the destination of the virtual server" do 
      pending
    end
  end

  describe "protocol method" do 
    it "should exists" do
      lambda { @virtual_server.protocol }.should_not raise_exception(NoMethodError)
    end
    
    it "should return an IControl::Common::ProtocolType constant" do 
      @virtual_server.protocol.ancestors.should include(IControl::Common::ProtocolType)
    end
  end

  describe "enabled_state method" do
    it "should exists" do
      lambda { @virtual_server.enabled_state }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::Common::EnabledState constant" do 
        @virtual_server.enabled_state.ancestors.should include(IControl::Common::EnabledState)
    end    
  end

  describe "enabled_state= method" do
    it "should exist" do
      @virtual_server.methods.should include(:enabled_state=)
    end

    it "should allow the assingment of an enabled state" do
      lambda{ @virtual_server_nil.enabled_state = @virtual_server.enabled_state }.should_not raise_exception
    end
  end
  

  describe "connection_limit" do
    it "should exists" do
      lambda { @virtual_server.connection_limit }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::Common::ULong64 instance" do 
      @virtual_server.connection_limit.class.should be(IControl::Common::ULong64)
    end    
  end

  describe "connection_limit= method" do
    it "should exists" do
       @virtual_server.methods.should include(:connection_limit=)
    end
    it "should allow the assignment of a connection limit" do
      lambda { @virtual_server.connection_limit= 4194967294 }.should_not raise_exception
    end

  end

  describe "rate_class method" do
    it "should exists" do
      lambda { @virtual_server.rate_class }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::LocalLB::RateClass instance" do
      pending
    end    

    it "should return nil if there is not a rate class associated with the virtual_server" do 
      @virtual_server_nil.rate_class.should be(nil)
    end
  end

  describe "connection_mirror_state method" do
    it "should exists" do
      lambda { @virtual_server.connection_mirror_state }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::Common::EnabledState constant" do
      @virtual_server.connection_mirror_state.ancestors.should include(IControl::Common::EnabledState)
    end    
  end

  describe "translate_port_state method" do
    it "should exists" do
      lambda { @virtual_server.translate_port_state }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::Common::EnabledState constant" do
      @virtual_server.translate_port_state.ancestors.should include(IControl::Common::EnabledState)
    end    
  end

  describe "translate_address_state method" do
    it "should exists" do
      lambda { @virtual_server.translate_address_state }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::Common::EnabledState constant" do
      @virtual_server.translate_address_state.ancestors.should include(IControl::Common::EnabledState)
    end    
  end

  describe "sorce_port_behavior method" do
    it "should exists" do
      lambda { @virtual_server.source_port_behavior }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::Common::SourcePortBehavior constant" do
      @virtual_server.source_port_behavior.ancestors.should include(IControl::Common::SourcePortBehavior)
    end    
  end

  describe "last_hop_pool method" do
    it "should exists" do
      lambda { @virtual_server.last_hop_pool }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::LocalLB::Pool instance" do
      @virtual_server.last_hop_pool.class.should be(IControl::LocalLB::Pool)
    end    
  end

  describe "actual_hardware_acceleration method" do
    it "should exists" do
      lambda { @virtual_server.actual_hardware_acceleration }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::LocalLB::HardwareAccelerationMode instance" do
      @virtual_server.actual_hardware_acceleration.ancestors.should include(IControl::LocalLB::HardwareAccelerationMode)
    end    

  end

  describe "snat_type method" do
    it "should exists" do
      lambda { @virtual_server.snat_type }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::LocalLB::SnatType constant" do
      @virtual_server.snat_type.ancestors.should include(IControl::LocalLB::SnatType)
    end    
  end


  describe "snat_type= method" do 
    it "should exists" do 
      @virtual_server.methods.should include(:snat_type=)
    end
    
    it "should change the state of the snat_type of an object to automap if IControl::LocalLB::SnatType::SNAT_TYPE_AUTOMAP is specified" do
      lambda { @virtual_server.snat_type= IControl::LocalLB::SnatType::SNAT_TYPE_AUTOMAP }.should_not raise_exception
      #@virtual_server.snat_type.should ==IControl::LocalLB::SnatType::SNAT_TYPE_AUTOMAP
      pending(" for a state control")
    end

    it "should change the state of the snat_type of an object to none if IControl::LocalLB::SnatType::SNAT_TYPE_NONE is specified" do
      @virtual_server.snat_type = IControl::LocalLB::SnatType::SNAT_TYPE_NONE
      @virtual_server.snat_type.should ==IControl::LocalLB::SnatType::SNAT_TYPE_NONE
    end
  end

  describe "snat_pool method" do
    it "should exists" do
      lambda { @virtual_server.snat_pool }.should_not raise_exception(NoMethodError)
    end

    it "should return nil if none is specified" do
      @virtual_server_nil.snat_pool.should be nil
    end    

    it "should return a SnatPool" do
      pending
    end
  end
  
  describe "fallback_persistence_profile method" do
    it "should exists" do
      lambda { @virtual_server.fallback_persistence_profile }.should_not raise_exception(NoMethodError)
    end

    it "should return an FallBackPersistenceProfile instance" do
      @virtual_server.fallback_persistence_profile.class.should be(String)
    end    

    it "should return an nil if none is specified" do
      @virtual_server_nil.fallback_persistence_profile.should be(nil)
    end    
  end

  describe "fallback_persistence_profile= method" do 
    it "should exists" do 
      @virtual_server.methods.should include(:fallback_persistence_profile=)
    end

    it "should allow the assignment of a fallback_persistence_profile" do
      @virtual_server.fallback_persistence_profile= "dest_addr"
    end
  end

  describe "persistence_profile method" do
    it "should exists" do
      lambda { @virtual_server.persistence_profile }.should_not raise_exception(NoMethodError)
    end

    it "should return an VirtualServerPersistence instance" do
      @virtual_server.persistence_profile.class.should be(IControl::LocalLB::VirtualServer::VirtualServerPersistence)
    end    

    it "should return an nil if none is specified" do
      @virtual_server_nil.persistence_profile.should be(nil)
    end    
  end

  describe "rules method" do
    it "should exists" do
      lambda { @virtual_server.rules }.should_not raise_exception(NoMethodError)
    end

    it "should return an list of Rules" do
      @virtual_server.rules.should_not be_empty
      @virtual_server.rules.first.class.should be(IControl::LocalLB::VirtualServerRule)
    end    

    it "should return an empty list if no rule is associated with the virtual server" do
      @virtual_server_nil.rules.should be_empty
    end    
  end

  describe "clone_pool method" do
    it "should exists" do
      lambda { @virtual_server.clone_pool }.should_not raise_exception(NoMethodError)
    end

    it "should return a list of VirtualServerClonePool" do
      @virtual_server.clone_pool.should_not be_empty
      @virtual_server.clone_pool.first.class.should be(IControl::LocalLB::VirtualServer::VirtualServerClonePool)
    end    

    it "should return an empty list if no clone_pool is associated with the virtual server" do
      @virtual_server_nil.clone_pool.should be_empty
    end    
  end

  describe "statistics method" do
    it "should exists" do
      lambda { @virtual_server.statistics }.should_not raise_exception(NoMethodError)
    end

    it "should return a VirtualServerStatisticEntry" do
      @virtual_server.statistics.should_not be_empty
    end    

    it "should return a hash of statistics" do
      @virtual_server.statistics.class.should be(Hash)
      @virtual_server.statistics.first[0].ancestors.should include(IControl::Common::StatisticType)
    end    
  end

  describe "version method" do
    it "should exists" do
      lambda { @virtual_server.version }.should_not raise_exception(NoMethodError)
    end

    it "should return a String" do
      @virtual_server.version.class.should be(String)
      @virtual_server.version.should_not be_empty
    end    
  end

  describe "gtp_score method" do
    it "should exists" do
      lambda { @virtual_server.gtm_score }.should_not raise_exception(NoMethodError)
    end

    it "should return a ULong64" do
      @virtual_server.gtm_score.class.should be(IControl::Common::ULong64)
    end    
  end

  describe "vlan method" do
    it "should exists" do
      lambda { @virtual_server.vlan }.should_not raise_exception(NoMethodError)
    end

    it "should return an instance of a VLANFilterList" do
      vlan = @virtual_server.vlan
      vlan.class.should be(IControl::Common::VLANFilterList)
      @virtual_server_nil.vlan.vlans.class.should be(Array)
      @virtual_server_nil.vlan.vlans.should be_empty
      vlan.vlans.should_not be_empty
      vlan.vlans.class.should be(Array)
    end
  end

  describe "create method" do
    it "should create a new virtual_server when correctly called" do
      virtual_server = 
        IControl::LocalLB::VirtualServer.create(:address => "192.168.145.7",
                                                :port => 99,
                                                :name => "test_virtual_server",
                                                :default_pool => IControl::LocalLB::Pool.find("pool_test1"),
                                                :profiles => [{"profile_context" => IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL }])
      virtual_server.id.should == "test_virtual_server"
    end    

    it "should raise an exception if no pool is specified" do 
      lambda do 
        virtual_server = 
          IControl::LocalLB::VirtualServer.create(:address => "192.168.145.7",
                                                  :port => 99,
                                                  :name => "test_virtual_server",
                                                  :default_pool => nil,
                                                  :profiles => [{"profile_context" => IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL,"profile" => IControl::LocalLB::ProfileHttpClass.find("test_profile1")}])
        virtual_server.id.should == "test_virtual_server"
      end.should raise_exception(IControl::NoSuchPoolException)
    end
  end

  describe "add_httpclass_profile" do
    it "should exist" do 
      @virtual_server.methods.should include(:add_httpclass_profile)
    end
    
    it "should allow the addition of a new http class profile by means of a << operator using strings" do
      pending ("A better way of testing should be used (state changes)")
    end
    
    it "should allow the use of array operator on the httpclass_profile output object" do
    end
    
  end

  describe "add_rule" do
    it "should exist" do 
      @virtual_server.methods.should include(:add_rule)
    end
    
    it "should allow the addition of a new rule profile by means of a << operator using rules" do
      pending ("A better way of testing should be used (state changes)")
    end
    
    it "should allow the use of array operator on the httpclass_profile output object" do
    end
    
  end

  
  
end
