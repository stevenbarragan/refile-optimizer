require "refile/optimizer/version"

module Refile
  module Optimizer
    %w{fill fit limit pad convert resample}.each do |name|
      define_method name do |*args|
        file = super(*args)

        ImageOptim.optimize_image!(file.path)

        file
      end
    end
  end
end

%w{filloptim fitoptim limitoptim padoptim convertoptim resampleoptim}.each do |name|
  Refile.processor(name.to_sym, Refile::Optimizer.new(name.gsub(/optim/, "")))
end
