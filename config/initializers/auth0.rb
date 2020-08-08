Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    "iMuJ6DIOLRHk1pSi5fLEGfStJyHbHAZ0",
    "wsesbIqYdWLXC_jJzILtl7op4Uz6-SYh89fdlHgEp_0uy4MwK1nQkCVRxCBCkeui",
    "dev-4of6n6ye.us.auth0.com",
    callback_path: "/auth/auth0/callback",
    authorize_params: {
      scope: "openid email profile",
    },
  )
end
