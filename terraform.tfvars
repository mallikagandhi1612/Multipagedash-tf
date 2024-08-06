dashboard = {
    "example_dashboard_1" = {
      name        = "Mallika_dashboard_1"
      permissions = "public_read_only"
      pages = [
        {
          name = "Page 1"
          widgets = [
            {
              type   = "pie"
              title  = "Number of views grouped by page"
              row    = 1
              column = 1
              width  = 4
              height = 4
              query  = "SELECT count(*) FROM BrowserInteraction WHERE appName = 'FoodMe-Browser'"
              nrql_queries = []
            },
            {
              type   = "pie"
              title  = "Average Duration"
              row    = 1
              column = 5
              width  = 4
              height = 4
              query  = "FROM Transaction SELECT average(duration) WHERE appName = 'FoodMe-test'"
              nrql_queries = []
            },
            {
              type   = "bar"
              title  = "Transaction Count"
              row    = 1
              column = 9
              width  = 4
              height = 4
              query  = "FROM Transaction SELECT count(*) WHERE appName = 'FoodMe-test'"
              nrql_queries = []
            }
          ]
        },
        {
          name = "Page 2"
          widgets = [
            {
              type   = "billboard"
              title  = "Maximum Duration"
              row    = 1
              column = 1
              width  = 4
              height = 4
              query  = "FROM Transaction SELECT max(duration) WHERE appName = 'FoodMe-test' SINCE 1 month ago"
              nrql_queries = []
            },
            {
              type   = "billboard"
              title  = "Data"
              row    = 1
              column = 5
              width  = 4
              height = 4
              query  = "FROM Transaction SELECT count(*) WHERE appName='FoodMe-test' SINCE 1 month ago"
              nrql_queries = []
            },
            {
              type   = "billboard"
              title  = "Browser Interaction"
              row    = 1
              column = 9
              width  = 4
              height = 4
              query  = "FROM BrowserInteraction SELECT count(*)  WHERE appName='FoodMe-Browser'"
              nrql_queries = []
            }
 
          ]
        },
        {
          name = "Page 3"
          widgets = [
            {
              type   = "pie"
              title  = "user OS data"
              row    = 1
              column = 1
              width  = 4
              height = 4
              query  = "FROM BrowserInteraction SELECT count(*) FACET userAgentOS"
              nrql_queries = []
            },
            {
              type   = "pie"
              title  = "DOM processing"
              row    = 1
              column = 5
              width  = 4
              height = 4
              query  = "FROM PageView SELECT count(domProcessingDuration) FACET appName SINCE 1 week ago"
              nrql_queries = []
            }
 
          ]
        },
        {
          name = "Page 4"
          widgets = [
            {
              type   = "billboard"
              title  = "Sum of Duration"
              row    = 1
              column = 1
              width  = 4
              height = 4
              query  = "FROM Transaction SELECT sum(duration) WHERE appName = 'FoodMe-test' SINCE 1 month ago"
              nrql_queries = []
            },
            {
              type   = "line"
              title  = "Maximum Duration"
              row    = 1
              column = 5
              width  = 4
              height = 4
              query  = "FROM Transaction SELECT max(duration) WHERE appName = 'FoodMe-test'"
              nrql_queries = []
              y_axis_left_zero = false
            },
            {
              type   = "pie"
              title  = "Slowest Transactions"
              row    = 1
              column = 9
              width  = 4
              height = 4
              query  = "SELECT max(duration) FROM Transaction FACET name SINCE 24 HOURS AGO"
              nrql_queries = []
            }
          ]
        }
      ]
    }
  }