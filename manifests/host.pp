define dhcp::host (
  $ip,
  $mac,
  $domain_name = undef,
  $comment     = undef,
) {

  # template uses: 
  #   $ip to set the ipaddress,
  #   $mac to set the hwaddress,
  #   $domain_name to the domain if specified
  #   $title to set the hostname
  concat_fragment { "dhcp.hosts+10_${title}.hosts":
    content => template('dhcp/dhcpd.host.erb'),
  }
}
