.class public final synthetic Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    check-cast p1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 5
    check-cast p2, Landroid/os/IBinder;

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 10
    check-cast p3, Ljava/lang/Integer;

    .line 12
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 15
    move-result p0

    .line 16
    iget-object p3, p1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 18
    iget-object p3, p3, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {p2, p0}, Landroid/view/SurfaceControl;->setActiveColorMode(Landroid/os/IBinder;I)Z

    .line 26
    iget-object p0, p1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 28
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1

    .line 39
    :pswitch_0
    check-cast p3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_PERFORMANCE:Z

    .line 46
    if-eqz p0, :cond_3

    .line 48
    iget-object p0, p1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 50
    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 52
    monitor-enter p0

    .line 53
    const/4 v0, 0x0

    .line 54
    :goto_0
    :try_start_1
    iget-object v1, p1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 56
    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 58
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    .line 61
    move-result v1

    .line 62
    if-ge v0, v1, :cond_2

    .line 64
    iget-object v1, p1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 66
    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 68
    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 74
    iget v2, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStateOverride:I

    .line 76
    if-eqz v2, :cond_0

    .line 78
    iget v3, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    .line 80
    if-eq v2, v3, :cond_1

    .line 82
    goto :goto_1

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    goto :goto_2

    .line 85
    :cond_0
    iget v2, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 87
    iget v3, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    .line 89
    if-eq v2, v3, :cond_1

    .line 91
    :goto_1
    iget-object v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStateChangeCallbacks:Ljava/util/ArrayList;

    .line 93
    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda4;

    .line 95
    invoke-direct {v1, p1, p3, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;Landroid/os/IBinder;)V

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    monitor-exit p0

    .line 102
    goto :goto_4

    .line 103
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    monitor-exit p0

    .line 107
    goto :goto_3

    .line 108
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    throw p1

    .line 110
    :cond_3
    :goto_3
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 112
    if-eqz p0, :cond_4

    .line 114
    invoke-virtual {p3}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    const v0, 0x13af10

    .line 121
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 124
    const-string p0, "LocalDisplayAdapter"

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v1, "setDesiredDisplayModeSpecsAsync("

    .line 131
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    iget-wide v1, p1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 136
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, ") : "

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 151
    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_4
    iget-object p0, p1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 156
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    invoke-static {p2, p3}, Landroid/view/SurfaceControl;->setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    .line 164
    :goto_4
    return-void

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
