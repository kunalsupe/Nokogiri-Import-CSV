module AnnouncementsHelper
  def announcements_for_display
    @announcements_for_display ||= Announcement.display(session[:announcement_hide_time])
  end
  
  def announcements_link_label
    return "Hide " + (@announcements_for_display.size == 1 ? "announcement" : "announcements") + "."
  end  
end