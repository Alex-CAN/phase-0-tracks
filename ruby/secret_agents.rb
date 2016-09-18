def secret_agent (first, last)
	agent_alias = last.chars + "," + first.chars
	return agent_alias
end

p secret_agent('sally', 'sod')