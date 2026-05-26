cask "weekly-planner" do
  version "1.18.0"
  sha256 "35ff6f06995db7a94ff08837109096d414987c63c8dbcf389f872ae0fe9f8bc0"

  url "https://github.com/EYssel/planner-app/releases/download/v#{version}/Weekly%20Planner-#{version}-arm64.dmg"
  name "Weekly Planner"
  desc "A simple weekly planning desktop app"
  homepage "https://github.com/EYssel/planner-app"

  app "Weekly Planner.app"

  caveats <<~EOS
    Because this app is self-signed/unsigned, you may need to clear the quarantine attribute after installation:
      xattr -cr "/Applications/Weekly Planner.app"
    Alternatively, you can install it using:
      brew install --cask --no-quarantine weekly-planner
  EOS

  zap trash: [
    "~/Library/Application Support/weekly-planner",
    "~/Library/Application Support/weekly-planner-dev",
    "~/Library/Preferences/com.estianyssel.weekly-planner.plist",
    "~/Library/Saved Application State/com.estianyssel.weekly-planner.savedState",
  ]
end
