require 'spec_helper'

describe RecordsHelper do

  describe '#number_of_books' do

    it "accepts as an argument any object which has either a number of books estimate or books" do
      pending "Duck typing not yet implemented."
    end

    context "when the record has less books than its number of books estimate" do

      let!(:record) { FactoryGirl.create(:record, id: 1, number_of_books_estimate: 3) }

      before(:each) do
        2.times do
          FactoryGirl.create(:book, record_id: 1)
        end
      end

      it "returns the record number of books estimate (as a String)" do
        pending "Temporary disabled: records.number_of_books_estimate should be Integer"
        number_of_books(record).should eq record.number_of_books_estimate.to_s
      end
    end

    context "when the record has more books than its number of books estimate" do

      let!(:record) { FactoryGirl.create(:record, id: 1, number_of_books_estimate: 3) }

      before(:each) do
        4.times do
          FactoryGirl.create(:book, record_id: 1)
        end
      end

      it "returns the record number of books (as a String)" do
        number_of_books(record).should eq record.books.count.to_s
      end
    end
  end
end
