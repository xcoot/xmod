.class public final Lcom/android/server/tv/TvInputHardwareManager$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$config:Landroid/media/tv/TvStreamConfig;

.field public final synthetic val$hardwareImpl:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$2;->val$hardwareImpl:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$2;->val$config:Landroid/media/tv/TvStreamConfig;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$2;->val$hardwareImpl:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$2;->val$config:Landroid/media/tv/TvStreamConfig;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    if-nez p0, :cond_1

    .line 17
    .line 18
    monitor-exit v1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {v2, v0, p0}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    .line 31
    .line 32
    .line 33
    monitor-exit v1

    .line 34
    :goto_0
    return-void

    .line 35
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method
