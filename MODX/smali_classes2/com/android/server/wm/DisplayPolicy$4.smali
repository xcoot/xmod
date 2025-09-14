.class public final Lcom/android/server/wm/DisplayPolicy$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 11
    .line 12
    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    iput-wide v2, v1, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$4;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method
