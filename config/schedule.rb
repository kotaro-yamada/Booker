# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
=begin
# config/schedule.rb
# cronログを吐き出す場所
set :output, File.join(Whenever.path, "log", "cron.log")
# ジョブの実行環境の指定
set :environment, :development

# 1時間ごとに一度投稿されたデータを削除する
every 1.hours do
  runner "@books = Book.all"
  runner "@books.each do |book|
    book.destroy
  end"
end
=end