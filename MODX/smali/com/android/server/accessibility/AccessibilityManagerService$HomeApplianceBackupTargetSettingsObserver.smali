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

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    const-string/jumbo p1, "enabled_accessibility_services"

    .line 9
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    .line 15
    const-string/jumbo p1, "current_sec_active_themepackage"

    .line 18
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mHighContrastThemeUri:Landroid/net/Uri;

    .line 24
    const-string/jumbo p1, "high_text_contrast_enabled"

    .line 27
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mHighTextContrastUri:Landroid/net/Uri;

    .line 33
    const-string/jumbo p1, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider/highcontrast"

    .line 36
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mHighContrastKeyboardUri:Landroid/net/Uri;

    .line 42
    const-string p1, "accessibility_display_inversion_enabled"

    .line 44
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mColorInversionStateUri:Landroid/net/Uri;

    .line 50
    const-string p1, "accessibility_display_daltonizer_enabled"

    .line 52
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    .line 58
    const-string p1, "accessibility_display_daltonizer"

    .line 60
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mDisplayDaltonizerTypeUri:Landroid/net/Uri;

    .line 66
    const-string/jumbo p1, "relumino_switch"

    .line 69
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mColorReluminoEnableUri:Landroid/net/Uri;

    .line 75
    const-string/jumbo p1, "enabled_accessibility_audio_description_by_default"

    .line 78
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAudioDescriptionByDefaultUri:Landroid/net/Uri;

    .line 84
    const-string p1, "accessibility_shortcut_target_service"

    .line 86
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

    .line 92
    const-string p1, "accessibility_direct_access_target_service"

    .line 94
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityDirectAccessServiceIdUri:Landroid/net/Uri;

    .line 100
    const-string p1, "accessibility_button_target_component"

    .line 102
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 105
    move-result-object p1

    .line 106
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

    .line 108
    const-string p1, "accessibility_button_targets"

    .line 110
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityButtonTargetsUri:Landroid/net/Uri;

    .line 116
    const-string p1, "accessibility_qs_targets"

    .line 118
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityQSTargetsUri:Landroid/net/Uri;

    .line 124
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    const-string/jumbo p1, "com.samsung.accessibility.ACCESSIBILITY_HOME_APPLIANCE_BACKUP"

    .line 4
    const-string/jumbo v0, "com.samsung.accessibility"

    .line 7
    invoke-static {p1, v0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    move-result-object p1

    .line 11
    const-string v0, "UriString"

    .line 13
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 22
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 24
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 29
    return-void
.end method

.method public final register(Landroid/content/ContentResolver;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 8
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mHighContrastThemeUri:Landroid/net/Uri;

    .line 10
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 13
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mHighTextContrastUri:Landroid/net/Uri;

    .line 15
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 18
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mHighContrastKeyboardUri:Landroid/net/Uri;

    .line 20
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 23
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mColorInversionStateUri:Landroid/net/Uri;

    .line 25
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 28
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    .line 30
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 33
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mDisplayDaltonizerTypeUri:Landroid/net/Uri;

    .line 35
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 38
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mColorReluminoEnableUri:Landroid/net/Uri;

    .line 40
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 43
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAudioDescriptionByDefaultUri:Landroid/net/Uri;

    .line 45
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 48
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

    .line 50
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 53
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityDirectAccessServiceIdUri:Landroid/net/Uri;

    .line 55
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 58
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

    .line 60
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 63
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityButtonTargetsUri:Landroid/net/Uri;

    .line 65
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 68
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->mAccessibilityQSTargetsUri:Landroid/net/Uri;

    .line 70
    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 73
    return-void
.end method
