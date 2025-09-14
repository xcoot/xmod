.class public final synthetic Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/battery/MultiSbpController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/battery/MultiSbpController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/battery/MultiSbpController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/battery/MultiSbpController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/battery/MultiSbpController;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->check()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0}, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->isFullyConnected()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v3, p0, Lcom/android/server/battery/MultiSbpController;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-direct {v1, v3, v2, v0}, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v1, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 26
    .line 27
    const-string/jumbo v2, "no_battery_mode"

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, -0x1

    .line 36
    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/server/battery/MultiSbpController;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    .line 44
    .line 45
    invoke-direct {v0, v3, v1, v4, v2}, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;-><init>(Landroid/os/Handler;Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;Lcom/android/server/BatteryService$BattCallbackImpl;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/server/battery/MultiSbpController;->mBatteryConnectionProcessor:Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;

    .line 49
    .line 50
    return-void
.end method
