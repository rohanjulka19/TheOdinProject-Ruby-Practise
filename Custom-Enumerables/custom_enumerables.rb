module Enumerable
    def my_each
        if block_given?
            for elem in self do
                yield(elem)
            end
        end
    end

    def my_each_with_index
        if block_given?
            idx = 0
            for elem in self do 
                yield(elem, idx)
                idx += 1
            end
        end
    end

    def my_select
        arr = []
        if block_given?
            self.my_each do |item| 
                if yield(item) == true
                    arr << item
                end
            end
            arr
        end
    end

    def my_all? 
        count = 0 
        if block_given?
            self.my_each do |item|
                if yield(item) == true
                    count += 1
                end
            end
            if count == self.length
                return true
            else
                return false
            end
        end
    end

    def my_any?
        if block_given?
            self.my_each do |item|
                if yield(item) == true
                    return true
                end
            end
            return false
        end
    end

    def my_none?
        if block_given?
            not self.my_any? do |item|
                yield(item)
            end
        end
    end
end

