module Red
  class IllegalNode # :nodoc:
    class FlipflopNode < IllegalNode # :nodoc:
      def initialize(*args)
        raise(BuildError::NoFlipflops, "Flip-flop operators are not supported")
      end
    end
    
    class MatchNode < IllegalNode # :nodoc:
      def initialize(*args)
        raise(BuildError::NoArbitraryMatch, "Boolean matching is not supported")
      end
    end
    
    class PostexeNode < IllegalNode # :nodoc:
      def initialize(*args)
        raise(BuildError::NoENDBlocks, "END blocks are not supported")
      end
    end
    
    class RegexEvaluationNode < IllegalNode # :nodoc:
      def initialize(*args)
        raise(BuildError::NoRegexEvaluation, "Construction of regular expressions with evaluated content is not supported")
      end
    end
    
    class RetryNode < IllegalNode # :nodoc:
      def initialize(*args)
        raise(BuildError::NoRetry, "Retry is not supported")
      end
    end
  end
end
