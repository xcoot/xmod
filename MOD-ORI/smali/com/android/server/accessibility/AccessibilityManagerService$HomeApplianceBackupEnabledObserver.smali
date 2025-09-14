.class public final Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHomeApplianceBackupEnabledUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "accessibility_settings_home_appliance_backup_enabled"

    .line 7
    .line 8
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;->mHomeApplianceBackupEnabledUri:Landroid/net/Uri;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 7
    .line 8
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const-string v0, "accessibility_settings_home_appliance_backup_enabled"

    .line 15
    .line 16
    const/4 v1, -0x2

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {p2, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    move v2, v1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHomeApplianceBackupTargetSettingsObserver:Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHomeApplianceBackupTargetSettingsObserver:Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 49
    .line 50
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;

    .line 51
    .line 52
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    .line 53
    .line 54
    invoke-direct {v1, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHomeApplianceBackupTargetSettingsObserver:Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHomeApplianceBackupTargetSettingsObserver:Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;

    .line 62
    .line 63
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->register(Landroid/content/ContentResolver;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    monitor-exit p1

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method
