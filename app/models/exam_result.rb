class ExamResult < ActiveRecord::Base
    belongs_to :teacher
    belongs_to :student

    def passed?
        if self.result >= 65
            true
        else
            false
        end
    end

    def self.convert_to_percentile 

        # rank values smallest to largest
        ranked_results = self.just_results.sort

        # for each exam_result instance, find the index of exam_result.result within ranked_results
        self.all.each do |exam_result|
            rank = ranked_results.find_index(exam_result.result) # finds the LOWEST index

            # now that index is how many people you did better than 
            # convert index to percentage of whole
            percentile = (rank.to_f / ranked_results.length.to_f * 100).round(2)

            # can't have a percentile greater than 99 or less than 1
            if percentile > 99
                percentile = 99.0
            elsif percentile < 1
                percentile = 1.0
            end

            # set as updated percentile value
            exam_result.update(percentile: percentile)
        end
    end

    def self.just_results
        self.all.map do |exam_result|
            exam_result.result
        end
    end

    def self.translate_to_4_0_scale
        self.all.each do |exam_result|

            case exam_result.result
            when 93..100 # 93-100
                exam_result.update(four_point_scale_result: 4.0)
            when 90..92 # 90-92
                exam_result.update(four_point_scale_result: 3.667)
            when 87..89 # 87-89
                exam_result.update(four_point_scale_result: 3.333)
            when 83..86 # 83-86
                exam_result.update(four_point_scale_result: 3.0)
            when 80..82 # 80-82
                exam_result.update(four_point_scale_result: 2.667)
            when 77..79 # 77-79
                exam_result.update(four_point_scale_result: 2.333)
            when 73..76 # 73-76
                exam_result.update(four_point_scale_result: 2.0)
            when 70..72 # 70-72
                exam_result.update(four_point_scale_result: 1.667)
            when 67..69 # 67-69
                exam_result.update(four_point_scale_result: 1.333)
            when 65..66 # 65-66
                exam_result.update(four_point_scale_result: 1.0)
            when 0..65 # 0-65
                exam_result.update(four_point_scale_result: 0.0)
            end
        end
    end

    def self.average_result
        
        just_results.sum(0.0) / just_results.length
    end

    def self.standard_deviation
        # find the mean
        mean = self.average_result

        # for each number: subtract the mean and square the result
        squared_differences = self.all.map do |exam_result|
            (exam_result.result - mean)*(exam_result.result - mean)
        end

        # find the mean of those squared differences
        squared_mean = squared_differences.sum(0.0) / squared_differences.length
        
        #  take the square root of that mean
        Math.sqrt(squared_mean)
    end

    def self.convert_to_normalized_bell_curve
        # place mean at 85%, + 10 points per standard deviation above the mean

        # z = (result - mean)/std
        # new result = 85 + (10 * z)
        self.all.each do |exam_result|
            z = (exam_result.result - self.average_result)/self.standard_deviation
            exam_result.update(normalized_distribution_result: (85 + (10 * z)).round(2))
        end
    end
end