.class Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    const-string/jumbo p1, "forced_app_standby_for_small_battery_enabled"

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 15
    .line 16
    const-string/jumbo p2, "forced_app_standby_for_small_battery_enabled"

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, p2, v0}, Lcom/android/server/AppStateTrackerImpl;->injectGetGlobalSettingInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 p2, 0x1

    .line 25
    if-ne p1, p2, :cond_0

    .line 26
    .line 27
    move v0, p2

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter p1

    .line 33
    :try_start_0
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$FeatureFlagsObserver;->this$0:Lcom/android/server/AppStateTrackerImpl;

    .line 34
    .line 35
    iget-boolean p2, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    .line 36
    .line 37
    if-ne p2, v0, :cond_1

    .line 38
    .line 39
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppStandbyForSmallBattery:Z

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/AppStateTrackerImpl;->updateForceAllAppStandbyState()V

    .line 46
    .line 47
    .line 48
    monitor-exit p1

    .line 49
    goto :goto_1

    .line 50
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0

    .line 52
    :cond_2
    const-string p0, "AppStateTracker"

    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v0, "Unexpected feature flag uri encountered: "

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void
.end method
