require "refile/optimizer/version"
require "refile/mini_magick"
require "image_optim"
require "image_optim_pack"

module Refile
  module Optimizer
    class Processor < Refile::MiniMagick
      %w{fill fit limit pad convert resample}.each do |name|
        define_method name do |*args|
          file = super(*args)

          ImageOptim.optimize_image!(file.path)

          file
        end
      end
    end
  end
end

%w{filloptim fitoptim limitoptim padoptim convertoptim resampleoptim}.each do |name|
  Refile.processor(name.to_sym, Refile::Optimizer::Processor.new(name.gsub(/optim/, "")))
end
