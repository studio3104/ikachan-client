require 'spec_helper'

describe Ikachan::Client do
  let(:host) { 'test.ikachan.com' }
  let(:port) { 80 }
  let(:base_url) { "http://#{host}:#{port}" }
  let(:channel) { '#test' }
  let(:message) { 'test message' }
  let(:client) { Ikachan::Client.new(host, port) }

  it 'notice' do
    stub_request(:post, base_url + '/notice').with(body: URI.encode_www_form(channel: channel, message: message))
    response = client.notice(channel, message)
    expect(response.code.to_i).to eq(200)
  end

  it 'privmsg' do
    stub_request(:post, base_url + '/privmsg').with(body: URI.encode_www_form(channel: channel, message: message))
    response = client.privmsg(channel, message)
    expect(response.code.to_i).to eq(200)
  end

  it 'join' do
    stub_request(:post, base_url + '/join').with(body: URI.encode_www_form(channel: channel, channel_keyword: nil))
    response = client.join(channel)
    expect(response.code.to_i).to eq(200)
  end

  it 'leave' do
    stub_request(:post, base_url + '/leave').with(body: URI.encode_www_form(channel: channel))
    response = client.leave(channel)
    expect(response.code.to_i).to eq(200)
  end
end
