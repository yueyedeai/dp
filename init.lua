require 'paths'
require 'torch'

------------------------------------------------------------------------
--[[ dp ]]--
-- deep learning library for torch 7, inspired by pylearn2.
------------------------------------------------------------------------


dp = {}

dp.TORCH_DIR = os.getenv('TORCH_DATA_PATH')

dp.DATA_DIR = os.getenv('DEEP_DATA_PATH') 
   or paths.concat(dp.TORCH_DIR, 'data')

dp.SAVE_DIR = os.getenv('DEEP_SAVE_PATH') 
   or paths.concat(dp.TORCH_DIR, 'save')
   
dp.LOG_DIR = os.getenv('DEEP_LOG_PATH') 
   or paths.concat(dp.TORCH_DIR, 'log')

--[[ misc ]]--
require "dp/utils"
torch.include('dp', 'postgres.lua')
torch.include('dp', 'multinomial.lua')
torch.include('dp', 'choose.lua')

--[[ data ]]--
torch.include('dp', 'datatensor.lua')
torch.include('dp', 'dataset.lua')
torch.include('dp', 'datasource.lua')
torch.include('dp', 'mnist.lua')
torch.include('dp', 'preprocess.lua')
torch.include('dp', 'batch.lua')
torch.include('dp', 'sampler.lua')


--[[ propagation ]]--
torch.include('dp', 'mediator.lua')
torch.include('dp', 'propagator.lua')
torch.include('dp', 'optimizer.lua')
torch.include('dp', 'evaluator.lua')
torch.include('dp', 'experiment.lua')
torch.include('dp', 'observer.lua')
torch.include('dp', 'logger.lua')
torch.include('dp', 'feedback.lua')
torch.include('dp', 'confusion.lua')
torch.include('dp', 'visitor.lua')

--[[ model ]]--
torch.include('dp', 'model.lua')
torch.include('dp', 'module.lua')
torch.include('dp', 'sequential.lua')

--[[ hyperparameter optimization ]]--
torch.include('dp', 'hyperoptimizer.lua')

--[[ postgres ]]--
torch.include('dp', 'postgres/postgres.lua')
torch.include('dp', 'postgres/eidgenerator.lua')
torch.include('dp', 'postgres/logger.lua')
torch.include('dp', 'postgres/query.lua')
torch.include('dp', 'postgres/savetofile.lua')
torch.include('dp', 'postgres/earlystopper.lua')
torch.include('dp', 'postgres/done.lua')
