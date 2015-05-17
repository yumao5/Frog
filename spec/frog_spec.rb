require_relative '../frog'

describe Frog do
  let(:frog) { Frog.new 1, [1, 2] }

  describe "#Frog Test" do
    it "#Frog object" do
      expect(frog).to be_a Frog
    end

    it ".solution frog corss river for single digital input case" do
      expect(frog.solution(1, [1])).to eq(0)
    end    

    it ".solution frog never corss river for single digital input case" do
      expect(frog.solution(1, [5])).to eq(-1)
    end

    it ".solution frog corss river for simple case" do
      expect(frog.solution(5, [1, 2, 4, 5, 3])).to eq(4)
    end

    it ".solution frog never cross river for invalid width case" do
      expect(frog.solution(0.5, [1, 2, 4, 5, 3])).to eq(-1)
    end

    it ".solution frog never cross river for invalid leave case" do
      expect(frog.solution(5, [0.11, 0.2,])).to eq(-1)
    end

    it ".solution frog never cross river for more width case" do
      expect(frog.solution(8, [1, 2, 4, 5, 3, 6])).to eq(-1)
    end

    it ".solution frog never cross river for less leave case" do
      expect(frog.solution(5, [1, 2, 4, 1, 2])).to eq(-1)
    end

    it ".solution frog never cross river for same leave case" do
      expect(frog.solution(10, [2, 2, 2, 2, 2])).to eq(-1)
    end    

    it ".solution frog never cross river for small number random input case" do
      expect(frog.solution(999, 1000.times.map { (1..1000).to_a.sample })).to eq(-1)
    end

    it ".solution frog never cross river for medium number random input case" do
      expect(frog.solution(4999, 5000.times.map { (1..5000).to_a.sample })).to eq(-1)
    end

    it ".solution frog never cross river for large number random input case" do
      expect(frog.solution(9999, 10000.times.map { (1..10000).to_a.sample })).to eq(-1)
    end

    it ".solution frog cross river for large number random input case" do
      expect(frog.solution(499, 10000.times.map { (1..10000).to_a.sample })).to be >= (500)
    end

    it ".solution frog cross river for large number random input case" do
      expect(frog.solution((1..499).to_a.sample, 10000.times.map { (1..10000).to_a.sample })).to be < (1000)
    end

  end
end