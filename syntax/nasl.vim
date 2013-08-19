" Vim syntax file
" Language:	NASL
" Maintainer:	Herman Polloni <polloni@confianze.com>
" Last Change:	2013 Aug 19
"
" Updated by Jacob Hammack <jhammack@tenable.com>
" Additional updates by Benjamin Bergman <bbergman@tenable.com>

" Remove any old syntax stuff that was loaded (5.x) or quit when a syntax file
" was already loaded (6.x).
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Built-in functions extracted from nasl_init.c  
" NASL 2.0.10
syn keyword naslFunction script_name script_version script_timeout script_description script_copyright
syn keyword naslFunction script_summary script_category script_family script_dependencie script_dependencies
syn keyword naslFunction script_require_keys script_require_ports script_require_udp_ports script_exclude_keys
syn keyword naslFunction script_add_preference script_get_preference script_id script_cve_id script_bugtraq_id
syn keyword naslFunction script_set_attribute script_end_attributes
"KB Functions 
syn keyword naslFunction kb_smb_name kb_smb_transport kb_smb_login kb_smb_password kb_smb_domain
"Registry Functions
syn keyword naslFunction RegConnectRegistry RegOpenKey RegQueryInfoKey RegEnumKey RegQueryValue RegCloseKey
"SMB Functions
syn keyword naslFunction NetUseAdd NetUseDel
"File Functions
syn keyword naslFunction CreateFile GetFileSize ReadFile CloseFile
"Network Session Functions 
syn keyword naslFunction session_init
"Patch Functions
syn keyword naslFunction hotfix_is_vulnerable hotfix_check_sp hotfix_security_hole  hotfix_check_fversion_end
syn keyword naslFunction pstring DSI_Packet DSI_GetErrorCode DSI_GetDataLen DSI_SendRecv DSI_LastError GetStatus OpenSession CloseSession AFPLogin FPLogin FPLogout FPGetSrvrParms FPGetSrvrParmsParseReply FPOpenVol FPOpenVolParseReply FPCloseVol FPEnumerateExt2 FPEnumerateExt2Parse aix_report_add aix_report_get vers_cmp aix_check_patch get_backport_banner get_php_version set_byte_order mkbyte mkword mkdword getqword_shift getdword getword getbyte mkpad ascii2ebcdic ebcdic2ascii extract_version cmpv cmp_build cmp_release cmp_version check_release deprecated_version Backward cvss_vector_to_temporal_score cvss_vector_to_base_score script_set_attribute script_set_cvss_base_vector script_set_cvss_temporal_vector script_end_attributes script_osvdb_id script_cwe_id script_cvs_date cdr_get_byte_order cdr_set_byte_order cdr_unmarshal_octet cdr_unmarshal_num cdr_unmarshal_short cdr_unmarshal_long cdr_unmarshal_string cdr_unmarshal_wstring cdr_marshal_octet cdr_marshal_num cdr_marshal_short cdr_marshal_long cdr_marshal_string cdr_marshal_wstring ior_destringify ior_unmarshal giop_marshal_message giop_marshal_request giop_unmarshal_message giop_unmarshal_reply iiop_unmarshal_profile permute lshift xor des_encrypt set_des_key str_to_key DES arcfour_setkey ARCFOUR rc4_hmac_string_to_key rc4_hmac_checksum rc4_hmac_encrypt rc4_hmac_decrypt rc4_hmac_checksum xor8 reverse reverse8 get_parity fixparity removeMSBits is_weak_key des_cbc_checksum des_cbc_encrypt des_cbc_string_to_key des_cbc_md5_encrypt des_cbc_md5_decrypt des_cbc_md5_checksum LM_Hash LM_Response NTLM_Hash NTLM_Response NTLMv2_Hash unixtime_to_nttime64 NTLMv2_Response LMv2_Response deb_report_add deb_report_get deb_str_cmp deb_ver_cmp deb_check _check_telnet check_account mkbyte mkword mkipaddr arp_ping get_query_txt mk_query_txt mk_query mkdns dns_comp_get dns_str_get dns_str_to_query_txt dns_split line2string isprint dump_line_and_data hexdump dump parse_pkg_name nondigit_vers_cmp vers_cmp pkg_cmp pkg_op pkg_op_match freebsd_packages pkg_test ftp_close get_ftp_banner ftp_send_cmd ftp_recv_line ftp_recv_listing ftp_recv_data ftp_authenticate ftp_pasv get_ftp_port ftp_starttls debug_print err_print telnet_open_cnx send_rexec rlogin send_rsh info_send_cmd set_globals hpux_check_ctx hpux_installed hpux_patch_installed hpux_check_patch get_http_cookies_names replace_http_cookies get_http_cookie_keys get_http_cookie_from_key set_http_cookie_from_hash clear_cookiejar init_cookiejar erase_cookie erase_http_cookie set_http_cookie get_any_http_cookie get_http_cookie parse_setcookie_header store_cookiejar store_1_cookie load_cookiejar http_uri_is_subpath mk_cookie_header dump_cookiejar disable_cookiejar enable_cookiejar enable_cookiejar_autosave disable_cookiejar_autosave http_cookies_style HTTP_permute HTTP_des_encrypt HTTP_set_des_key HTTP_str_to_key HTTP_DES HTTP_NTLM_Hash HTTP_NTLM_Response is_embedded_server headers_split __hex_value hex2dec get_http_banner get_http_port php_ver_match http_is_dead do_check_win_dir_trav check_win_dir_trav http_recv_headers2 http_recv_body http_recv http_recv_length http_send_recv cgi_dirs can_host_php can_host_asp http_40x build_url wont_test_cgi parse_http_headers test_cgi_xss check_win_dir_trav is_cgi_installed3 get_http_page http_get_cache http_check_remote_code http_store_dialog http_keepalive_check_connection enable_keepalive http_keepalive_enabled http_keepalive_recv_body on_exit http_keepalive_send_recv check_win_dir_trav_ka is_cgi_installed_ka get_http_page http_get_cache http_check_remote_code http_check_authentication http_form_login http_login_take_lock http_login_release_lock http_login_incr_count http_reauthenticate_if_needed get_http_banner get_http_port declare_broken_web_server http_is_broken __hex_value hex2dec cgi_dirs can_host_php can_host_asp build_url split_url normalize_url_path apache_module_is_installed get_squid_banner find_pattern extract_pattern_from_resp clean_string http_head_part http_recv_headers3 Compatibility http_recv_headers2 http_disable_keep_alive http_enable_keep_alive http_force_keep_alive http_reopen_socket http_open_socket_ka http_close_socket_ka disable_socket_ka _http_close_socket_ka_only http_keepalive_check_connection enable_keepalive http_keepalive_enabled Internal _http_send_recv_once http_send_recv3 http_send_recv_req Note http_send_recv_buf on_exit http_recv_body _http_recv http_recv3 http_is_dead http_set_read_timeout http_last_sent_request mkdate http_mk_proxy_request http_mk_req http_mk_get_req http_mk_head_req http_mk_trace_req http_mk_delete_req http_mk_post_req http_mk_put_req http_mk_buffer_from_req ascii2utf16LE LEword mkLEword _rand64 hexnumber http_add_auth_to_req icmp_checksum icmp_set icmp icmp_get mkicmp get_imap_banner imap_set_tag imap_get_tag imap_increment_tag imap_is_response_ok imap_read_tagged_response imap_send_cmd imap_close imap_starttls ip6_set ip6 ip6_get mkip6 ip_csum ip_set ip ip_get ip_insert_option ip_finish_insert_option ip_option mkip raw_byte raw_word raw_dword get_byte get_word get_dword get_checksum_type supported_encryption_type kerberos_checksum kerberos_decrypt kerberos_encrypt der_length der_encode integer der_decode der_encode_oid der_decode_oid der_encode_int der_encode_int32 der_encode_string der_encode_sequence der_encode_name der_encode_time der_parse_data der_parse_list der_parse_sequence der_parse_int der_parse_octet_string der_parse_oid der_parse_list_oid der_encode_paenc der_encode_octet_string der_encode_padata der_encode_crypt der_encode_list der_encode_kdcreq der_encode_request der_encode_kdc_req_body kerberostime der_encode_asreq der_decode_kdcrep der_decode_asrep der_decode_tgsrep der_encode_apreq der_encode_tgsreq der_encode_negtokeninit der_parse_spnego_init der_parse_spnego_resp acquired_ticket save_tgs_session _hex2raw load_tgs_session kerberos_securityblob check_kerberos_response raw_ntlmssp_negotiate ntlmssp_negotiate_securityblob raw_ntlmssp_parse_challenge ntlmssp_parse_challenge ntlmssp_parse_response ntlmssp_data raw_ntlmssp_auth_securityblob ntlmssp_auth_securityblob kerberos_ssh gssapi_ssh_get_mic check_gssapi_token mklist ldap_init ldap_get_last_error ldap_set_error der_encode_enumerated der_encode_boolean der_encode_filter ldap_request_sendrecv ldap_recv_next ldap_recv ldap_request ldap_bind_request ldap_parse_enumerated ldap_parse_response ldap_parse_bind_response ldap_parse_modify_response ldap_modify_request ldap_search_request ldap_parse_search_object_name ldap_parse_search_entry ldap_extended_request ldap_parse_extended_response ldap_starttls _GetBundleVersionCmd GetBundleVersionCmd GetCarbonVersionCmd rm_kb_item replace_or_set_kb_item register_service known_service silent_service service_is_unknown verify_service get_service get_port_for_service set_mysql_version get_mysql_version get_unknown_banner2 get_unknown_banner set_unknown_banner get_service_banner_line get_rpc_port rand_str add_port_in_list hex2raw report_service make_service_list base64_decode base64_code pow2 base64 dec2hex cvsdate2unixtime get_unknown_svc get_3digits_svc save_version_in_kb read_version_in_kb difftime list_uniq get_read_timeout substr_at_offset get_kb_item_or_exit join ver_compare ver_num mysql_init mysql_open mysql_close mysql_recv_packet mysql_send_packet mysql_login mysql_get_socket mysql_get_protocol mysql_get_version mysql_get_variant mysql_get_thread_id mysql_get_salt mysql_get_caps mysql_get_lang mysql_get_status mysql_is_proto41_supported mysql_is_ok_packet mysql_is_error_packet mysql_get_null_string mysql_get_last_error mysql_parse_error_packet nb: mysql_get_scramble mysql_get_scramble323 mysql_hash_password utility netop_zeropad netop_spacepad ip_dot2raw declare ip_raw2dot netop_banner_items netop_product_ident netop_log_detected netop_kb_derive netop_each_found netop_check_and_add_banner is_private_addr test_udp_port ip_checksum ms_since_midnight htonl htons ntohl ntohs NFS padsz rpclong str2long rpcpad nfs_mount nfs_readdir nfs_cwd open read nfs_umount nntp_auth nntp_connect nntp_post nntp_article nntp_make_id get_oracle_os get_oracle_version check_oracle_patch TCP ICMP UDP list merge insert_icmp tcp_flags find_reason ping_host4 udp_ping_pong get_pop3_banner pop3_is_response_ok pop3_read_response pop3_send_cmd pop3_close pop3_starttls get_tested_ports get_ver_type qpkg_ver_cmp qpkg_cmp qpkg_check inet_sum packettype ipaddr payload mkpacket split_udp split_tcp packet_split cmp_addr_v is_same_host filter_rh_inconstency rpm_report_add rpm_report_get parse_rpm_name maj_cmp normalize_value generic_str_cmp nondigit_vers_cmp vers_cmp rpm_cmp rpm_check rpm_exists sinfp_get_ip sinfp_get_tcp sinfp_extract_options sinfp_get_mss sinfp_get_options sinfp_get_distance sinfp_mkbinary sinfp_get_tcp_win sinfp_get_tcp_flags remote_sig_match index_by_name heuristic_sig sinfp_heuristic_match sinfp_match os_name_split sinfp test_sinfp slack_elt_cmp slack_ver_cmp slackware_check mkbedword sha256 _HMAC_SHA256 mklist raw_qword get_qword smb2_header smb_decode_header decode_smb2 smb2_recv smb2_sendrecv smb2_session_setup smb2_tree_connect smb2_create smb2_write smb2_read smb2_ioctl smb2_close smb2_tree_disconnect smb2_logoff decode_file_directory_info smb2_query_directory smb2_query_info smb2_negotiate smb2_login activex_init activex_end activex_is_installed activex_get_name activex_get_filename activex_get_killbit activex_get_fileversion activex_check_fileversion Section smb_parameters smb_data netbios_header netbios_packet smb_recv smb_sendrecv get_header_flags get_header_flags2 get_header_dos_error_code get_header_nt_error_code get_header_command_code get_header_uid get_header_tid get_header_signature get_smb_header get_smb_parameters get_smb_data smb_header smb_check_success netbios_encode netbios_name netbios_sendrecv netbios_session_request smb_negotiate_protocol smb_session_setup_andx_lanman_core smb_session_setup_andx_ntlm_core smb_session_setup_andx_kerberos_core smb_session_setup_andx_ntlmssp_core smb_session_setup_andx smb_login smb_tree_connect_and_x smb_create_and_x smb_write_and_x smb_read_and_x smb_trans_and_x smb_trans2 smb_nt_trans smb_trans_pipe smb_trans_lanman smb_close smb_logoff_andx smb_tree_disconnect dce_rpc dce_rpc_ntlmssp_header dce_rpc_bind dce_rpc_parse_bind_ack dce_rpc_alter_context dce_rpc_auth3 dce_rpc_connect dce_rpc_request dce_rpc_sendrecv_request dce_rpc_pipe_request dce_rpc_parse_response bind_pipe smb_file_read get_win32_find_data_filename get_win32_find_data_fileattributes FindFirstFile FindNextFile FindFirstFile2 FindNextFile2 CreateFile ReadFile WriteFile CloseFile GetSecurityInfo GetFileSize voffset_to_offset check_version extract_structures GetFileVersionEx GetFileVersion convert_dword GetProductVersion hotfix_get_report hotfix_add_report hotfix_security_hole hotfix_security_warning hotfix_security_note hotfix_check_fversion_init hotfix_check_fversion_end hotfix_check_fversion hotfix_is_vulnerable is_accessible_share hotfix_path2share hotfix_check_exchange_installed hotfix_data_access_version hotfix_check_office_version hotfix_check_word_version hotfix_check_excel_version hotfix_check_powerpoint_version hotfix_check_publisher_version hotfix_check_outlook_version hotfix_check_ie_version hotfix_ie_gt hotfix_check_works_installed hotfix_check_iis_installed hotfix_check_wins_installed hotfix_check_dhcpserver_installed hotfix_check_nt_server hotfix_check_domain_controler hotfix_check_server_core hotfix_get_mssqldir hotfix_get_programfilesdir hotfix_get_programfilesdirx86 hotfix_get_commonfilesdir hotfix_get_officeprogramfilesdir hotfix_get_officecommonfilesdir hotfix_get_systemroot hotfix_check_sp hotfix_missing kb_smb_name kb_smb_domain kb_smb_login kb_smb_password kb_smb_transport get_string get_string2 null_length dos_status nt_status ascii unicode unicode2ascii isUnicode cstring convert_time_to_sec parse_addrlist Section session_init session_get_socket session_set_socket session_get_timeout session_set_timeout session_get_uid session_set_uid session_get_tid session_set_tid session_get_pid session_set_pid session_get_mid session_set_mid session_is_unicode session_set_unicode session_get_buffersize session_set_buffersize session_get_sequencenumber session_increase_sequencenumber session_get_mackey session_set_mackey session_get_flags session_add_flags session_get_flags2 session_add_flags2 session_del_flags2 session_get_hostname session_set_hostname session_is_authenticated session_set_authenticated session_is_guest session_set_guest session_get_cid session_set_server_max_size session_get_server_max_size session_set_host_info session_set_addrlist session_get_addrlist session_get_errorcode session_set_errorcode session_get_sid session_set_sid session_get_messageid session_is_smb2 session_set_smb2 session_smb2_support session_get_secmode session_set_secmode hex2raw2 inverse _hex encode_uuid decode_uuid buffer_parameter class_parameter sid_ldiv sid_ltoa sid2string encode_int encode_char string2sid parse_dacl parse_pdacl parse_security_descriptor parse_lsalookupsid get_sid class_name registry_key_writeable_by_non_admin # LsaOpenPolicy LsaQueryInformationPolicy LsaQueryDomainInformationPolicy LsaLookupSid LsaLookupNames LsaEnumerateAccountsWithUserRight LsaQuerySecurityObject LsaClose NetGetInfo NetEnum NetUseAdd NetUseDel NetServerGetInfo NetWkstaGetInfo NetSessionEnum NetShareEnum NetWkstaUserEnum NetServerEnum NetUserGetGroups NetUserGetLocalGroups NetLocalGroupGetMembers NetGroupGetUsers NetUserGetInfo NetUserGetModals RegConnectRegistry _RegOpenKey RegOpenKey RegQueryInfoKey RegQueryValue RegEnumValue RegEnumKey RegCloseKey RegGetKeySecurity SamConnect2 SamEnumerateDomainsInSamServer SamLookupDomainInSamServer SamOpenDomain SamLookupNamesInDomain SamOpen SamOpenUser SamOpenGroup SamOpenAlias SamGetGroupsForUser SamGetMembersInAlias SamGetMembersInGroup SamLookupIdsInDomain SamQueryInformationUser SamQueryInformationDomain SamGetAliasMemberShip SamCloseHandle OpenSCManager OpenService GetService EnumServicesStatus ControlService CreateService StartService DeleteService CloseServiceHandle QueryServiceStatus GetServiceDisplayName QueryServiceObjectSecurity smtp_close smtp_open smtp_send_socket smtp_send_port smtp_from_header smtp_to_header get_smtp_banner smtp_recv_line smtp_recv_banner smtp_starttls init_snmp ber_length ber_encode ber_put_int ber_put_octet_string ber_put_get_pdu ber_put_get_next_pdu ber_put_null ber_put_oid ber_put_sequence integer ber_decode ber_decode_oid ber_get_data ber_get_sequence ber_get_response_pdu ber_get_int ber_get_addr ber_get_counter32 ber_get_timeticks ber_get_octet_string ber_get_oid snmp_exchange snmpv3_fail snmp_extract_reply snmpv3_parse_header snmpv3_parse_authoritative snmp_reply snmp_put_engine_data snmp_assemble_authentication_data snmp_assemble_request_data snmpv3_initial_request snmpv3_put_msg_global_data password_to_key usm_HMAC_MD5_auth_protocol usm_HMAC_SHA_auth_protocol snmpv3_authenticate_incoming snmpv3_authenticate_outgoing usm_AES_priv_protocol usm_AES_priv_decrypt usm_DES_priv_protocol usm_DES_priv_decrypt snmpv3_encrypt_outgoing snmpv3_decrypt_incoming snmpv3_request snmp_request snmp_request_next scan_snmp_string is_valid_snmp_product issameoid set_snmp_version reset_snmp_version solaris_get_report solaris_report_set solaris_details_add maj_vers_cmp vers_cmp sol_vers_cmp patch_installed patch_release_number solaris_check_patch read_dword write_dword bf_F ROUND blowfish_encipher blowfish_decipher tripledes_initialize blowfish_initialize blowfish_decrypt blowfish_encrypt tripledes_encrypt tripledes_decrypt des_cbc_encrypt2 des_cbc_decrypt2 crc32 ssh1_recv ssh1_send raw_int16 ntos get_bignum1 putbignum1 len_long len_bn parse_private_key ssh_kex1 ssh_userauth1 ssh_cmd1 ssh_password_auth ssh_kb_auth ssh_hex2raw kb_ssh_login kb_ssh_password kb_ssh_privatekey kb_ssh_publickey kb_ssh_passphrase kb_ssh_realm kb_ssh_host kb_ssh_transport kb_ssh_client_ver set_ssh_error get_ssh_error get_ssh_supported_authentication get_ssh_server_version get_ssh_banner get_server_public_key ntol raw_int32 raw_int8 init init_crypto_data base64decode ssh_recv is_sshd_bugged ssh_exchange_identification check_pattern kex_packet mac_compute crypt decrypt send_ssh_packet recv_ssh_packet packet_payload getstring putstring putbignum ssh_rsa_verify ssh_dss_verify derive_keys dh_valid_key dh_gen_key ssh_kex2 ssh_userauth2 ssh_open_channel ssh_close_channel ssh_login get_data_size update_window_size is_password_prompt ssh_cmd ssh_cmd_error ssh_close_connection ssh_open_connection client_hello client_send_cert fingerprint_string fingerprint_cert get_server_cert recv_ssl rpc_packet rpc_sendrecv rpc_reply_stat rpc_accept_stat rpc_getport get_rpc_port2 register_stream xdr_getdword xdr_getstring xdr_long xdr_string xdr_auth_unix stream_error tcp_checksum tcp_set tcp tcp_get mktcp tcp_insert_option tcp_finish_insert_option telnet2_init telnet_read telnet_write telnet_send_cmd telnet_wont telnet_dont telnet_will telnet_send_suboption telnet_do_term_type telnet_do_neg_about_size is_registered_option get_registered_option telnet_handle_suboption telnet_loop get_telnet_banner telnet_negotiate set_telnet_banner recv_until declare tftp_get declare tftp_put tftp_ms_backdoor report_tftp_backdoor test test1url test_cgi_rec test1cgi torture_cgi_delay split_long_line beginning_of_response torture_cgi_remember torture_cgi_build_report cmp_html answers_differ utf16_to_ascii sanitize_utf16 compute_diff already_known_flaw shrink_list my_encode strridx init_torture_cgi test1url reload_cookie_jars run_injection_hdr test test1url test_cgi_rec test1cgi torture_cgis torture_cgi_name test1url test_cgi_rec test1cgi torture_cgis_yesno deb_str_cmp ubuntu_ver_cmp ubuntu_check create_uddi_xml udp_checksum udp_get udp_set mkudp udp upnp_svc_url upnp_find_service upnp_make_soap_data upnp_make_soap_req url_hex2raw urldecode urlencode init_esx_check esx_check add_install get_install_report get_vuln_report get_install_from_kb get_dirs_from_kb inv8 parse_publickey_info parse_attribute_type_and_value parse_rdn_sequence int2 convert_all_time convert_utc_time convert_generalized_time parse_time parse_algorithm_identifier parse_flags parse_key_usage parse_extended_key_usage parse_general_name parse_general_names parse_distribution_point parse_crl_distribution_points parse_access_description parse_authority_information_access parse_authority_key_identifier parse_subject_key_identifier parse_subject_alternative_name parse_certificate_comment parse_policy_qualifier_information parse_policy_information parse_certificate_policies parse_extension parse_extensions parse_tbs_certificate hex_buf add_string add_string_nl add_hex_string add_hex_string_nl add_rdn_seq add_rdn_seq_nl is_known_extension add_extension_data add_key_usage add_extended_key_usage add_general_name add_crl_distribution_points add_authority_information_access add_authority_key_identifier add_subject_key_identifier add_subject_alternative_name add_certificate_policies dump_certificate 
syn keyword naslFunction script_xref safe_checks set_kb_item get_kb_item get_kb_list security_warning
syn keyword naslFunction security_note security_hole
syn keyword naslFunction open_sock_tcp  open_sock_tcp open_sock_udp open_priv_sock_tcp open_priv_sock_udp
syn keyword naslFunction recv recv_line send close join_multicast_group leave_multicast_group
syn keyword naslFunction cgibin is_cgi_installed http_open_socket http_head http_get http_post
syn keyword naslFunction http_delete http_put http_close_socket http_recv_headers
syn keyword naslFunction get_host_name
syn keyword naslFunction get_host_ip
syn keyword naslFunction get_host_open_port
syn keyword naslFunction get_port_state
syn keyword naslFunction get_tcp_port_state
syn keyword naslFunction get_udp_port_state
syn keyword naslFunction scanner_add_port
syn keyword naslFunction scanner_status
syn keyword naslFunction scanner_get_port
syn keyword naslFunction islocalhost
syn keyword naslFunction islocalnet
syn keyword naslFunction get_port_transport
syn keyword naslFunction this_host
syn keyword naslFunction this_host_name
syn keyword naslFunction string
syn keyword naslFunction raw_string
syn keyword naslFunction strcat
syn keyword naslFunction display
syn keyword naslFunction ord
syn keyword naslFunction hex
syn keyword naslFunction hexstr
syn keyword naslFunction strstr
syn keyword naslFunction ereg
syn keyword naslFunction ereg_replace
syn keyword naslFunction egrep
syn keyword naslFunction eregmatch
syn keyword naslFunction match
syn keyword naslFunction substr
syn keyword naslFunction insstr
syn keyword naslFunction tolower
syn keyword naslFunction toupper
syn keyword naslFunction crap
syn keyword naslFunction strlen
syn keyword naslFunction split
syn keyword naslFunction chomp
syn keyword naslFunction int
syn keyword naslFunction stridx
syn keyword naslFunction str_replace
syn keyword naslFunction make_list
syn keyword naslFunction make_array
syn keyword naslFunction keys
syn keyword naslFunction max_index
syn keyword naslFunction sort
syn keyword naslFunction telnet_init
syn keyword naslFunction ftp_log_in
syn keyword naslFunction ftp_get_pasv_port
syn keyword naslFunction start_denial
syn keyword naslFunction end_denial
syn keyword naslFunction dump_ctxt
syn keyword naslFunction typeof
syn keyword naslFunction exit
syn keyword naslFunction rand
syn keyword naslFunction usleep
syn keyword naslFunction sleep
syn keyword naslFunction isnull
syn keyword naslFunction defined_func
syn keyword naslFunction forge_ip_packet
syn keyword naslFunction get_ip_element
syn keyword naslFunction set_ip_elements
syn keyword naslFunction insert_ip_options
syn keyword naslFunction dump_ip_packet
syn keyword naslFunction forge_tcp_packet
syn keyword naslFunction get_tcp_element
syn keyword naslFunction set_tcp_elements
syn keyword naslFunction dump_tcp_packet
syn keyword naslFunction tcp_ping
syn keyword naslFunction forge_udp_packet
syn keyword naslFunction get_udp_element
syn keyword naslFunction set_udp_elements
syn keyword naslFunction dump_udp_packet
syn keyword naslFunction forge_icmp_packet
syn keyword naslFunction get_icmp_element
syn keyword naslFunction forge_igmp_packet
syn keyword naslFunction send_packet
syn keyword naslFunction pcap_next
syn keyword naslFunction MD2 
syn keyword naslFunction MD4
syn keyword naslFunction MD5
syn keyword naslFunction SHA
syn keyword naslFunction SHA1
syn keyword naslFunction RIPEMD160
syn keyword naslFunction HMAC_MD2
syn keyword naslFunction HMAC_MD5
syn keyword naslFunction HMAC_SHA
syn keyword naslFunction HMAC_SHA1
syn keyword naslFunction HMAC_DSS
syn keyword naslFunction HMAC_RIPEMD160
syn keyword naslFunction NTLMv1_HASH
syn keyword naslFunction NTLMv2_HASH
syn keyword naslFunction nt_owf_gen
syn keyword naslFunction lm_owf_gen
syn keyword naslFunction ntv2_owf_gen

" Constants extracted from nasl_init.c
syn keyword naslConstant TRUE
syn keyword naslConstant FALSE
syn keyword naslConstant pcap_timeout
syn keyword naslConstant IPPROTO_TCP
syn keyword naslConstant IPPROTO_UDP
syn keyword naslConstant IPPROTO_ICMP
syn keyword naslConstant IPROTO_IP
syn keyword naslConstant IPPROTO_IGMP
syn keyword naslConstant ENCAPS_IP
syn keyword naslConstant ENCAPS_SSLv23
syn keyword naslConstant ENCAPS_SSLv2
syn keyword naslConstant ENCAPS_SSLv3
syn keyword naslConstant ENCAPS_TLSv1
syn keyword naslConstant NASL_LEVEL
syn keyword naslConstant TH_FIN
syn keyword naslConstant TH_SYN
syn keyword naslConstant TH_RST
syn keyword naslConstant TH_PUSH
syn keyword naslConstant TH_ACK
syn keyword naslConstant TH_URG
syn keyword naslConstant IP_RF
syn keyword naslConstant IP_DF
syn keyword naslConstant IP_MF
syn keyword naslConstant IP_OFFMASK
syn keyword naslConstant ACT_INIT
syn keyword naslConstant ACT_GATHER_INFO
syn keyword naslConstant ACT_ATTACK
syn keyword naslConstant ACT_MIXED_ATTACK
syn keyword naslConstant ACT_DESTRUCTIVE_ATTACK
syn keyword naslConstant ACT_DENIAL
syn keyword naslConstant ACT_SCANNER
syn keyword naslConstant ACT_SETTINGS
syn keyword naslConstant ACT_KILL_HOST
syn keyword naslConstant ACT_END
syn keyword naslConstant MSG_OOB

" Keywords extracted from nasl_grammar.tab.c
syn keyword naslKeyword if else for while repeat until foreach function return
syn keyword naslKeyword include break local_var global_var

" Special characters and strings
syn match   naslSpecial	display contained "\\\(x\x\+\|\o\{1,3}\|.\|$\)"
syn region  naslString	start=+L\="+ end=+"+ contains=@Spell
syn region  naslString	start=+L\='+ skip=+\\\\\|\\"+ end=+'+ contains=naslSpecial,@Spell

" Comments
syn region  naslComment	start="#" skip="\$" end="$" keepend contains=@Spell

" Hexadecimal and integer numbers
syn match   naslNumbers display transparent "\<\d\|\.\d" contains=naslNumber
syn match   naslNumber display contained "0x\x\+\>"
syn match   naslNumber display contained "\d\+\>"

" Arguments in a function call
syn match   naslArg display contained "\a\+[_a-zA-Z]*:"

" Parenthesis and Bracket Errors
syn region  naslParen display transparent start="(" end=")" contains=ALLBUT,naslNumber,naslParenError 
syn region naslBracket display transparent start="{" end="}" contains=ALLBUT,naslBracketError,naslNumber,naslArg
syn match naslBracketError display "}"
syn match naslParenError display ")"

if version >= 508 || !exists("did_c_syn_inits")
  if version < 508
    let did_c_syn_inits = 1
    command! -nargs=+ HiLink hi link <args>
  else
    command! -nargs=+ HiLink hi def link <args>
  endif
  HiLink naslKeyword Conditional
  HiLink naslFunction StorageClass
  HiLink naslConstant Macro
  HiLink naslSpecial SpecialChar
  HiLink naslString String
  HiLink naslComment Comment
  HiLink naslNumber SpecialChar
  HiLink naslArg Macro
  HiLink naslParenError Error
  HiLink naslBracketError Error
endif
let b:current_syntax = "nasl"

" vim: ts=8
