.class public final Lcom/android/server/display/OverlayDisplayAdapter$1$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/OverlayDisplayAdapter$1;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter$1;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$1$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$1;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1$1;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$1;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    .line 5
    check-cast p0, Lcom/android/server/display/OverlayDisplayAdapter;

    .line 7
    sget-object p1, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    iget-object p1, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V

    .line 15
    monitor-exit p1

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method
