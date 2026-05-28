cask "weekly-planner" do
  version "1.21.0"
  sha256 "53e5a8a027bfaf1fbf6f22402ec0b374e7ec18916f2e214259b915dc55a3f2aa"

  url "https://github.com/EYssel/planner-app/releases/download/v#{version}/Weekly-Planner-#{version}-arm64.dmg"
  name "Weekly Planner"
  desc "A simple weekly planning desktop app"
  homepage "https://github.com/EYssel/planner-app"

  app "Weekly Planner.app"

  caveats <<~EOS
    Because this app is self-signed/unsigned, you may need to clear the quarantine attribute after installation:
      xattr -cr "/Applications/Weekly Planner.app"
  EOS

  zap trash: [
    "~/Library/Application Support/weekly-planner",
    "~/Library/Application Support/weekly-planner-dev",
    "~/Library/Preferences/com.estianyssel.weekly-planner.plist",
    "~/Library/Saved Application State/com.estianyssel.weekly-planner.savedState",
  ]
end
