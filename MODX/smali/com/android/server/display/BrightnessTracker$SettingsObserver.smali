.class public final Lcom/android/server/display/BrightnessTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    .line 3
    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v0, "settings change "

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const-string p2, "BrightnessTracker"

    .line 22
    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 27
    iget-object p2, p1, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    .line 29
    iget-object p1, p1, Lcom/android/server/display/BrightnessTracker;->mContentResolver:Landroid/content/ContentResolver;

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    const/4 p2, 0x0

    .line 35
    const/4 v0, -0x2

    .line 36
    const-string/jumbo v1, "screen_brightness_mode"

    .line 39
    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 42
    move-result p1

    .line 43
    const/4 p2, 0x1

    .line 44
    if-ne p1, p2, :cond_1

    .line 46
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 48
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 50
    const/4 p1, 0x3

    .line 51
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 61
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    .line 63
    const/4 p1, 0x2

    .line 64
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 71
    :goto_0
    return-void
.end method
