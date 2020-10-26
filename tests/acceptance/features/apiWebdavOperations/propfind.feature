@api
Feature: PROPFIND

  @issue-ocis-751
  Scenario Outline: PROPFIND to "/remote.php/dav/files"
    Given user "Alice" has been created with default attributes and without skeleton files
    When user "Alice" requests "/remote.php/dav/files" with "PROPFIND" using basic auth
    Then the HTTP status code should be "207"
    Examples:
      | ocs_api_version | ocs_status_code |
      | 1               | 100             |
      | 2               | 200             |
