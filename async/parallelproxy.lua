-----------------------------------------------------------------------
--[[ ParallelProxies ]]--
-- Composed of parallel ModelProxies
-- A composite command is send to station via sendMany() such that 
-- component models can be propagated through concurrently.
-- Receives replies from component commands such that these replies 
-- will potentially use up more bandwith than a more asynchronous 
-- fire and forget model (where forward call the next forward, etc).
-- However the advantage of our approach is that it is easy to implement
-- and provides users with an easier model to build.
------------------------------------------------------------------------