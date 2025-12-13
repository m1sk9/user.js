#!/usr/bin/env fish

# 引数でエディションを指定可能: nightly, dev, release
set target_edition $argv[1]

set profiles_base ~/Library/Application\ Support/Firefox/Profiles
set profile_dir ""
set edition ""

function find_profile
    set pattern $argv[1]
    set name $argv[2]

    set found (command find $profiles_base -name $pattern -type d 2>/dev/null | head -n 1)
    if test -n "$found"
        set -g profile_dir $found
        set -g edition $name
        return 0
    end
    return 1
end

# 引数による指定
switch $target_edition
    case nightly
        find_profile "*.default-nightly" "Nightly"
    case dev
        find_profile "*.dev-edition-default" "Developer Edition"
    case release
        find_profile "*.default-release" "Release"
    case '*'
        # 自動検出（優先順位: Nightly > Dev > Release）
        if not find_profile "*.default-nightly" "Nightly"
            if not find_profile "*.dev-edition-default" "Developer Edition"
                find_profile "*.default-release" "Release"
            end
        end
end

# プロファイルが見つからない場合
if test -z "$profile_dir"
    echo "Error: Firefox profile not found"
    if test -n "$target_edition"
        echo "Specified edition: $target_edition"
    end
    echo "Searched in: $profiles_base"
    exit 1
end

# user-overrides.js があれば統合，なければそのままコピー
if test -f user-overrides.js
    cat user.js user-overrides.js > "$profile_dir/user.js"
    echo "✓ user.js (with overrides) deployed to Firefox $edition"
else
    cp user.js "$profile_dir/user.js"
    echo "✓ user.js deployed to Firefox $edition"
end

echo "  Profile: $profile_dir"
