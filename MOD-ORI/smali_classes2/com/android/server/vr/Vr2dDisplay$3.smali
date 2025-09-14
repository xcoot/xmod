.class public final Lcom/android/server/vr/Vr2dDisplay$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/Vr2dDisplay;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/Vr2dDisplay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/vr/Vr2dDisplay;->mIsVirtualDisplayAllowed:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/server/vr/Vr2dDisplay;->mBootsToVr:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/android/server/vr/Vr2dDisplay;->mIsPersistentVrModeEnabled:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, "Vr2dDisplay"

    .line 17
    .line 18
    const-string v0, "Virtual Display destruction stopped: VrMode is back on."

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    :goto_0
    const-string v0, "Vr2dDisplay"

    .line 25
    .line 26
    const-string v1, "Stopping Virtual Display"

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/vr/Vr2dDisplay;->mVdLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    .line 37
    .line 38
    const/4 v2, -0x1

    .line 39
    invoke-virtual {v1, v2}, Lcom/android/server/vr/Vr2dDisplay;->updateDisplayId(I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v1, v2}, Lcom/android/server/vr/Vr2dDisplay;->setSurfaceLocked(Landroid/view/Surface;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    .line 49
    .line 50
    iget-object v1, v1, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    .line 58
    .line 59
    iput-object v2, v1, Lcom/android/server/vr/Vr2dDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_3

    .line 64
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/vr/Vr2dDisplay$3;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lcom/android/server/vr/Vr2dDisplay;->mImageReader:Landroid/media/ImageReader;

    .line 74
    .line 75
    :cond_3
    monitor-exit v0

    .line 76
    :goto_2
    return-void

    .line 77
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
.end method
