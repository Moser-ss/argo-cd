health_status = {}

if obj.status == nil  then
  return health_status
end

if obj.status.phase == "Idle" or obj.status.phase == "Running" then
  health_status.status = "Healthy"
  health_status.message = "Runner ready to get job or executing job"
  return health_status
end

-- Find the condition where the resource is degredaded

health_status.status = "Progressing"
health_status.message = "Waiting for Runners"
return health_status