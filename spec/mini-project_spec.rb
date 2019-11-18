require "./mini-project"

describe 'unittest_homepage' do
    it 'displays the correct text and current time' do
        time1 = 'Nov 14 13:50'
        expect(homepage(time1)).to eq("Automation for the people!, it's #{time1} and its time to party!")
    end
end



describe 'unittest_homepage_invalid' do
    it 'displays the incorrect text and current time' do
        time1 = 'Nov 14 13:50'
        time2 = 'Nov 18 12:30'
        valid_response = (homepage(time1)).to eq("Automation for the people!, it's #{time1} and its time to party!")
        expect(homepage(time2)).not_to equal("Automation for the people!, it's #{time1} and its time to party!")
    end
end
