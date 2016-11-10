require 'to_shuffle/version'

module ToShuffle
  String.class_eval do
    def to_shuffle
      a = yield
      s = to_s
      b = s + a
      b.split('').shuffle.join
    end
  end
end
