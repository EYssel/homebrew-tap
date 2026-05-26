cask "weekly-planner" do
  version "1.20.0"
  sha256 "c9ed218092e4c9ef220083a3ba6ab0238d8822a0964efe48aa63b50a3b657bab"

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
