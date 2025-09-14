.class public final Lcom/android/server/usage/AppStandbyController$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$2;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 4

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$2;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/usage/AppStandbyController$Injector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v1, 0x2

    .line 19
    if-ne p1, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$2;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Lcom/android/server/usage/AppStandbyController$Lock;

    .line 25
    .line 26
    monitor-enter p1

    .line 27
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController$2;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/usage/AppIdleHistory;->updateDisplay(JZ)V

    .line 41
    .line 42
    .line 43
    monitor-exit p1

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0

    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method
