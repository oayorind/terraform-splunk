
resource "splunk_saved_searches" "new-search-01" {
  actions                   = "email"
  action_email_format       = "table"
  action_email_max_time     = "5m"
  action_email_send_results = false
  action_email_subject      = "Splunk Alert:$name$"
  action_email_to           = var.splunk_saved_email
  action_email_track_alert  = true
  description               = "New search for user01"
  dispatch_earliest_time    = "rt-2000d"
  dispatch_latest_time      = "rt-0m"
  cron_schedule             = "*/15 * * * *"
  name                      = "new-search-01"
  search                    = "index = \"pricestutorial\" AND *Manganiello*"


}

resource "splunk_saved_searches" "new-search-02" {
  actions                   = "email"
  action_email_format       = "table"
  action_email_max_time     = "5m"
  action_email_send_results = false
  action_email_subject      = "Splunk Alert:$name$"
  action_email_to           = var.splunk_saved_email
  action_email_track_alert  = true
  description               = "New search for user01"
  dispatch_earliest_time    = "rt-2000d"
  dispatch_latest_time      = "rt-0m"
  cron_schedule             = "*/15 * * * *"
  name                      = "new-search-02"
  search                    = "index = \"pricestutorial\" AND *World*"


}

resource "splunk_saved_searches" "new-search-03" {
  actions                   = "email"
  action_email_format       = "table"
  action_email_max_time     = "5m"
  action_email_send_results = true
  action_email_subject      = "Splunk Alert:$name$"
  action_email_to           = var.splunk_saved_email
  action_email_track_alert  = true
  description               = "New search for user03"
  alert_track               = true
  cron_schedule             = "*/1 * * * *"
  is_scheduled              = true
  name                      = "new-search-03"
  alert_type                = "number of events"
  alert_comparator          = "less than"
  alert_threshold           = "100"
  search                    = "index = \"pricestutorial\" AND *Manganiello* | stats count(source) by product_name,_time"

}

resource "splunk_saved_searches" "new-search-04" {
  actions                   = "email"
  action_email_format       = "table"
  action_email_max_time     = "0m"
  action_email_send_results = true
  action_email_subject      = "Splunk Alert:$name$"
  action_email_to           = var.splunk_saved_email
  action_email_track_alert  = true
  description               = "New search for user04"
  cron_schedule             = "*/15 * * * *"
  name                      = "new-search-04"
  alert_track               = true
  is_scheduled              = true
  alert_type                = "number of events"
  alert_comparator          = "greater than"
  alert_condition           = "search count > 10"
  alert_threshold           = "0"
  search                    = "index=\"pricestutorial\" | stats count as count"

}

