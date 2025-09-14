.class public final Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;
.super Landroid/media/projection/IMediaProjectionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/display/VirtualDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/projection/IMediaProjectionCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->mAppToken:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCapturedContentResize(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCapturedContentVisibilityChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;->mAppToken:Landroid/os/IBinder;

    .line 9
    .line 10
    invoke-static {v1, p0}, Lcom/android/server/display/VirtualDisplayAdapter;->-$$Nest$mhandleMediaProjectionStoppedLocked(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method
