module GriddingMachine

using ArchGDAL
using DocStringExtensions
using HTTP
using NetCDF
using Parameters
using Pkg.Artifacts
using ProgressMeter




# export public types
export AbstractDataset,
       AbstractLeafDataset,
       AbstractStandDataset,
       CanopyHeightGLAS,
       ClumpingIndexMODIS,
       ClumpingIndexPFT,
       FormatNC,
       FormatTIFF,
       GPPMPIv006,
       GPPVPMv20,
       GriddedDataset,
       LAIMonthlyMean,
       LandMaskERA5,
       LeafChlorophyll,
       LeafNitrogen,
       LeafPhosphorus,
       LeafSLA,
       NPPModis,
       TreeDensity,
       VcmaxOptimalCiCa




#export public functions
export lat_ind,
       load_LUT,
       lon_ind,
       mask_LUT!,
       query_LUT,
       read_LUT,
       regrid_LUT,
       save_LUT,
       view_LUT




# include the types
include("Datasets/DatasetType.jl")
include("Datasets/FormatType.jl" )
include("Datasets/load.jl"       )
include("Datasets/mask.jl"       )
include("Datasets/query.jl"      )
include("Datasets/read.jl"       )
include("Datasets/regrid.jl"     )
include("Datasets/save.jl"       )
include("Datasets/view.jl"       )

# The Util functions
include("Utils/lat_lon_index.jl")




end # module
