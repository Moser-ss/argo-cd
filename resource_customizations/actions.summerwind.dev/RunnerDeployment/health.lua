health_status = {}

if obj.status == nil then
  return health_status
end

if obj.status.availableReplicas == obj.status.desiredReplicas then
  health_status.status = "Healthy"
  health_status.message = "Runners Available"
  return health_status
end

health_status.status = "Progressing"
health_status.message = "Waiting for Runners"
return health_status