class profile::agent_noes {
  include dockeragent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm'}
}
