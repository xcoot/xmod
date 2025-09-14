.class public final Lcom/android/server/power/ScreenCurtainController$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ScreenCurtainController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ScreenCurtainController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/ScreenCurtainController$1;->this$0:Lcom/android/server/power/ScreenCurtainController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/ScreenCurtainController$1;->this$0:Lcom/android/server/power/ScreenCurtainController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/ScreenCurtainController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController$1;->this$0:Lcom/android/server/power/ScreenCurtainController;

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/power/ScreenCurtainController;->mFolded:Z

    .line 9
    .line 10
    if-eq v1, p1, :cond_0

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/android/server/power/ScreenCurtainController;->mFolded:Z

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/android/server/power/ScreenCurtainController;->mScreenCurtainEnabled:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/power/ScreenCurtainController;->mHandler:Lcom/android/server/power/ScreenCurtainController$DisplayAssistantHandler;

    .line 19
    .line 20
    const/16 p1, 0x8

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v1, 0x3

    .line 27
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method
