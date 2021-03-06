module ObsFactory

  class DistributionStrategySLE12SP1 < DistributionStrategyFactory

    def repo_url
      'http://download.opensuse.org/distribution/13.2/repo/oss/media.1/build'
    end

    def openqa_version
      'SLES 12 SP1'
    end

    # Name of the ISO file by the given staging project tracked on openqa
    #
    # @return [String] file name
    def openqa_iso(project)
      ending = project_iso(project)
      "SLE12-SP1-Staging:#{project.letter}-#{ending}"
    end

  end
end
