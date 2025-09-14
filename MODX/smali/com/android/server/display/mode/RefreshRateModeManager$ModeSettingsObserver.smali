.class public final Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mRefreshRateModeSetting:Landroid/net/Uri;

.field public final mSubRefreshRateModeSetting:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/display/mode/RefreshRateModeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/RefreshRateModeManager;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 3
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    const-string/jumbo p1, "refresh_rate_mode"

    .line 9
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->mRefreshRateModeSetting:Landroid/net/Uri;

    .line 15
    const-string/jumbo p1, "refresh_rate_mode_cover"

    .line 18
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->mSubRefreshRateModeSetting:Landroid/net/Uri;

    .line 24
    iput-object p2, p0, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 3
    iget-object p1, p1, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p3, p0, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->mRefreshRateModeSetting:Landroid/net/Uri;

    .line 8
    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p3

    .line 12
    if-nez p3, :cond_0

    .line 14
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    .line 16
    if-eqz p3, :cond_1

    .line 18
    iget-object p3, p0, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->mSubRefreshRateModeSetting:Landroid/net/Uri;

    .line 20
    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateModeManager$ModeSettingsObserver;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 31
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 34
    move-result-object p0

    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-virtual {p0, p2}, Lcom/android/server/display/mode/RefreshRateController;->updateRefreshRateModeLocked(Z)V

    .line 39
    :cond_1
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method
