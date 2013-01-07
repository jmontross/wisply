Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '331079413671744', '7744f41647c7da0724aa275e4b1e276d'
end

#prod provider :facebook, '579439102071560', '722eb323f15f283a0fa1acfc4cd1d30d'

# dev
# 331079413671744
# App Secret: 7744f41647c7da0724aa275e4b1e276d