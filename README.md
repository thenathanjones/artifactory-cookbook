# artifactory

This is a cookbook for setting up an [Artifactory](http://www.jfrog.com/artifactory/)

## Supported Platforms

Currently the only supported platform is CentOS7.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['artifactory']['external_url']['host']</tt></td>
    <td>String</td>
    <td>Hostname to access this server from the outside</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['artifactory']['external_url']['protocol']</tt></td>
    <td>String</td>
    <td>Protocol to access this server from the outside</td>
    <td><tt>http</tt></td>
  </tr>
  <tr>
    <td><tt>['artifactory']['external_url']['port']</tt></td>
    <td>String</td>
    <td>Port to access this server from the outside</td>
    <td><tt>8081</tt></td>
  </tr>
  <tr>
    <td><tt>['artifactory']['mail']['host']</tt></td>
    <td>String</td>
    <td>Hostname of mail server to use</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['artifactory']['mail']['port']</tt></td>
    <td>String</td>
    <td>Port of mail server to use</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['artifactory']['ldap']['protocol']</tt></td>
    <td>String</td>
    <td>Protocol of LDAP to authenticate against</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['artifactory']['ldap']['host']</tt></td>
    <td>String</td>
    <td>Hostname of LDAP to authenticate against</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['artifactory']['ldap']['port']</tt></td>
    <td>String</td>
    <td>Port of LDAP to authenticate against</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['artifactory']['ldap']['search_filter']</tt></td>
    <td>String</td>
    <td>Search filter to use i.e. sAMAccountName or uid</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['artifactory']['ldap']['base']</tt></td>
    <td>String</td>
    <td>Base to search for users from</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['artifactory']['ldap']['bind_dn']</tt></td>
    <td>String</td>
    <td>DN of the user to bind to LDAP</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['artifactory']['ldap']['bind_pass']</tt></td>
    <td>String</td>
    <td>Password of the user used to bind to LDAP</td>
    <td><tt>nil</tt></td>
  </tr>
</table>

## Usage

### artifactory::default
Installs an Artifactory server onto the target

## License and Authors

Author:: Nathan Jones (thenathanjones@gmail.com)
