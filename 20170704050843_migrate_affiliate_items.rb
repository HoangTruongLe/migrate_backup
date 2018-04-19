class MigrateAffiliateItems < ActiveRecord::Migration
  def up
    # Register.where('affiliate_id IS NOT NULL').find_each do |reg|
    #   next if reg.affiliate.blank?
    #   next if reg.user.blank?
    #   next unless reg.user.service_loco?
    #   next if reg.user.user_registered < (reg.user.profile.created_at - 31.days)
    #   next if reg.affiliate.items.service_loco.find_by(identifier: reg.register_email).present?
    #   reg.affiliate.items.create(program: :service_loco, identifier: reg.register_email, parent_id: reg.user.id)
    # end
  end
end
