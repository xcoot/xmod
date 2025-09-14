.class public final Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;->this$0:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    const-string p1, "AdaptiveBrightnessAdvancedSettings"

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "[api] SettingsObserver: onChange: "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;->this$0:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter p1

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;->this$0:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->handleSettingsChangedLocked()V

    .line 28
    .line 29
    .line 30
    monitor-exit p1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method
