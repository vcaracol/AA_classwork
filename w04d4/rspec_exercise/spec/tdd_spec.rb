require 'tdd.rb'
require 'tdd_spec'
require 'rspec'


describe Array do
    describe '#remove_dups' do

        it 'taking in an array to not raise an error' do
            arr = [1,2,2,3,3]
            expect{arr.remove_dups}.to_not raise_error
        end

        it 'returns unique chars' do
            arr = [1,2,2,3,3]
            expect(arr.remove_dups).to eq([1,2,3])
            expect(arr.remove_dups.size).to eq(3)
        end
    end

    describe '#two_sum' do
        it 'finds all pairs of indeces that add to 0' do
            arr = [2, 1, 0, -1 , -2]
            expect(arr.two_sum).to eq([[0,4], [1,3]])
            expect(arr[arr.two_sum[0][0]] + arr[arr.two_sum[0][1]]).to eq(0)
        end
    end

    describe '#my_transpose' do
        it 'returns a 2D array with the col equaling the row of the old array at the same index' do
            rows = [
                [0, 1, 2],
                [3, 4, 5],
                [6, 7, 8]
            ]
            col = [
                [0, 3, 6],
                [1, 4, 7],
                [2, 5, 8]
            ]
        expect(rows.my_transpose).to eq(col)
        end    

    end

    describe '#stock_picker' do
        it 'return the indices that produce the highest differentrial when the value of the array at the later index - earlier index' do
            stock_market = [2, 5, 7, 6, 4, 3, 8]
            expect(stock_market.stock_picker).to eq([0,6])
        end
    end


end

describe TowersOfHanoi do
    subject(:game_tower) {TowersOfHanoi.new}
    describe "#initialize" do

        it 'instantiates a 2d array where the first element is an array of 5 - 1' do
            expect(game_tower.tower).to eq([[5,4,3,2,1], [], []])
        end
    end

    describe "#move" do
        it "raises an error if #move doesnt take in an array of length 2" do
            arr = [0,0,0]
            expect{game_tower.move(arr)}.to raise_error('must be length of 2')
        end

        it "raises an error if #move doesnt take in eith element isn't an integer" do
            arr = ['a','b']
            expect{game_tower.move(arr)}.to raise_error('must be an integer')
        end

        it 'move([i,j]) takes last element of i array' do 
            arr = [0,2]
            game_tower.move(arr)
            expect(game_tower.tower[0]).to eq([5,4,3,2])

        end

        it 'moves the element taken from the array to the end of the new array and returns the array that received the new element' do
            arr = [0,2]
            game_tower.move(arr)
            expect(game_tower.tower[2]).to eq([1])
        end
    end

    describe '#won?' do
        it 'return true if the last row is equal to the first row at the beginning of the game' do 
            temp = game_tower
            temp.tower[2] = [5,4,3,2,1]
            temp.tower[0] = []
            expect(temp.won?).to eq(true)
        end

        it 'return false if the last row is not equal to the first row at the beginning of the game' do 
            temp = game_tower
            expect(temp.won?).to eq(false)
        end
    end
end