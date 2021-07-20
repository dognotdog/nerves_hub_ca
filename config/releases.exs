import Config

working_dir = "/etc/ssl"
working_dir = System.get_env("NERVES_HUB_CA_DIR") || working_dir

host = System.fetch_env!("HOST") || "nerves-hub.org"

config :nerves_hub_ca, :api,
  otp_app: :nerves_hub_ca,
  port: 8443,
  cacertfile: Path.join(working_dir, "ca.pem"),
  certfile: Path.join(working_dir, "#{host}.pem"),
  keyfile: Path.join(working_dir, "#{host}-key.pem")
