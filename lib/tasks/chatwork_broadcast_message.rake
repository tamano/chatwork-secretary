namespace :chatwork_broadcast_message do
  desc 'Send message to everyone.'
  task :send, [:message] => :environment do |_task, args|
    room_id = ENV['CHATWORK_SYSBOT_BROADCAST_ROOM_ID']
    user_ids = ENV['CHATWORK_SYSBOT_BROADCAST_TO'].split(',')
    message = args.message

    service = ChatworkMessageService.new
    service.send_message_to(room_id, user_ids, message)
  end
end
