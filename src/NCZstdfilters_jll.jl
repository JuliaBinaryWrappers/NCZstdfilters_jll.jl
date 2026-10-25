# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule NCZstdfilters_jll
using Base
using Base: UUID
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("NCZstdfilters")
JLLWrappers.@generate_main_file("NCZstdfilters", Base.UUID("289070c6-1c28-5841-8e6a-c1513dd038d3"))
end  # module NCZstdfilters_jll
