.class public final Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

.field public final mAccessibilityButtonTargetsUri:Landroid/net/Uri;

.field public final mAccessibilityDirectAccessServiceIdUri:Landroid/net/Uri;

.field public final mAccessibilityQSTargetsUri:Landroid/net/Uri;

.field public final mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

.field public final mAudioDescriptionByDefaultUri:Landroid/net/Uri;

.field public final mColorInversionStateUri:Landroid/net/Uri;

.field public final mColorReluminoEnableUri:Landroid/net/Uri;

.field public final mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

.field public final mDisplayDaltonizerTypeUri:Landroid/net/Uri;

.field public final mEnabledAccessibilityServicesUri:Landroid/net/Uri;

.field public final mHighContrastKeyboardUri:Landroid/net/Uri;

.field public final mHighContrastThemeUri:Landroid/net/Uri;

.field public final mHighTextContrastUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "enabled_accessibility_services"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    .line 14
    .line 15
    const-string/jumbo p1, "current_sec_active_themepackage"

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mHighContrastThemeUri:Landroid/net/Uri;

    .line 23
    .line 24
    const-string/jumbo p1, "high_text_contrast_enabled"

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mHighTextContrastUri:Landroid/net/Uri;

    .line 32
    .line 33
    const-string/jumbo p1, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider/highcontrast"

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mHighContrastKeyboardUri:Landroid/net/Uri;

    .line 41
    .line 42
    const-string p1, "accessibility_display_inversion_enabled"

    .line 43
    .line 44
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mColorInversionStateUri:Landroid/net/Uri;

    .line 49
    .line 50
    const-string p1, "accessibility_display_daltonizer_enabled"

    .line 51
    .line 52
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    .line 57
    .line 58
    const-string p1, "accessibility_display_daltonizer"

    .line 59
    .line 60
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mDisplayDaltonizerTypeUri:Landroid/net/Uri;

    .line 65
    .line 66
    const-string/jumbo p1, "relumino_switch"

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mColorReluminoEnableUri:Landroid/net/Uri;

    .line 74
    .line 75
    const-string/jumbo p1, "enabled_accessibility_audio_description_by_default"

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAudioDescriptionByDefaultUri:Landroid/net/Uri;

    .line 83
    .line 84
    const-string p1, "accessibility_shortcut_target_service"

    .line 85
    .line 86
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

    .line 91
    .line 92
    const-string p1, "accessibility_direct_access_target_service"

    .line 93
    .line 94
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityDirectAccessServiceIdUri:Landroid/net/Uri;

    .line 99
    .line 100
    const-string p1, "accessibility_button_target_component"

    .line 101
    .line 102
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

    .line 107
    .line 108
    const-string p1, "accessibility_button_targets"

    .line 109
    .line 110
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityButtonTargetsUri:Landroid/net/Uri;

    .line 115
    .line 116
    const-string p1, "accessibility_qs_targets"

    .line 117
    .line 118
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityQSTargetsUri:Landroid/net/Uri;

    .line 123
    .line 124
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    const-string/jumbo p1, "com.samsung.accessibility.ACCESSIBILITY_HOME_APPLIANCE_BACKUP"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "com.samsung.accessibility"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "UriString"

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final register(Landroid/content/ContentResolver;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mHighContrastThemeUri:Landroid/net/Uri;

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mHighTextContrastUri:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mHighContrastKeyboardUri:Landroid/net/Uri;

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mColorInversionStateUri:Landroid/net/Uri;

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mDisplayDaltonizerTypeUri:Landroid/net/Uri;

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mColorReluminoEnableUri:Landroid/net/Uri;

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAudioDescriptionByDefaultUri:Landroid/net/Uri;

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityDirectAccessServiceIdUri:Landroid/net/Uri;

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityButtonTargetsUri:Landroid/net/Uri;

    .line 64
    .line 65
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityQSTargetsUri:Landroid/net/Uri;

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
