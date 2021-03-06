module SendGrid
  class SubscriptionTracking
    attr_accessor :enable, :text, :html, :substitution_tag

    def initialize(enable: nil, text: nil, html: nil, substitution_tag: nil)
      @enable = enable
      @text = text
      @html = html
      @substitution_tag = substitution_tag
    end

    def to_json(*)
      {
        'enable' => self.enable,
        'text' => self.text,
        'html' => self.html,
        'substitution_tag' => self.substitution_tag
      }.delete_if { |_, value| value.to_s.strip == '' }
    end
  end
end
