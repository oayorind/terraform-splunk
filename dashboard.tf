resource "splunk_data_ui_views" "terraform_operations" {
  name     = "DashboardDeployedFromTerraform-XML"
  eai_data = <<EOF
<dashboard version="1.1">
  <label>DashboardDeployedFromTerraform-XML</label>
  <row>
    <panel>
      <title>World Of Cheese - Pricing Reports</title>
      <event>
        <search>
          <query>index = "pricestutorial" AND *World*</query>
          <earliest>rt-2000d</earliest>
          <latest>rt-0m</latest>
          <sampleRatio>1</sampleRatio>
        </search>
        <option name="list.drilldown">none</option>
        <option name="list.wrap">1</option>
        <option name="maxLines">5</option>
        <option name="raw.drilldown">full</option>
        <option name="rowNumbers">0</option>
        <option name="table.drilldown">all</option>
        <option name="table.sortDirection">asc</option>
        <option name="table.wrap">1</option>
        <option name="type">list</option>
      </event>
    </panel>
  </row>
  <row>
    <panel>
      <title>Manganiello Bros Pricing Report</title>
      <event>
        <search>
          <query>index = "pricestutorial" AND *Manganiello*</query>
          <earliest>rt-2000d</earliest>
          <latest>rt-0m</latest>
          <sampleRatio>1</sampleRatio>
        </search>
        <option name="list.drilldown">none</option>
        <option name="list.wrap">1</option>
        <option name="maxLines">5</option>
        <option name="raw.drilldown">full</option>
        <option name="rowNumbers">0</option>
        <option name="table.drilldown">all</option>
        <option name="table.sortDirection">asc</option>
        <option name="table.wrap">1</option>
        <option name="type">list</option>
      </event>
    </panel>
  </row>
  <row>
    <panel>
      <title>Manganiello Bros Count Vs Time Chart</title>
      <chart>
        <search>
          <query>index = "pricestutorial" AND *Manganiello* | stats count(source) by product_name,_time</query>
          <earliest>rt-2000d</earliest>
          <latest>rt-0m</latest>
          <sampleRatio>1</sampleRatio>
        </search>
        <option name="charting.chart">bar</option>
      </chart>
    </panel>
  </row>
</dashboard>
  EOF
  acl {
    owner = "awsome"
    app   = "TFDashboard"
  }
}
