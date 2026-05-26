cask "weekly-planner" do
  version "1.16.0"
  sha256 "0684636173b5b4fd4362ceaffa08adfe97092ccf97301d46fff6188185899abb"

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
