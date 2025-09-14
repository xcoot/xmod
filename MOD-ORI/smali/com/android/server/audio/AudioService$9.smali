.class public final Lcom/android/server/audio/AudioService$9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;

.field public val$controller:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService$9;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$9;->val$controller:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/AudioService$9;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ForceControlStreamClient() could not link to "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " binder death"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AS.AudioService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 4
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/android/server/audio/AudioService$9;->val$controller:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/audio/AudioService$9;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    const-string v1, "AS.AudioService"

    .line 12
    .line 13
    const-string v2, "SCO client died"

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    .line 19
    .line 20
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$9;

    .line 21
    .line 22
    if-eq v2, p0, :cond_0

    .line 23
    .line 24
    const-string p0, "AS.AudioService"

    .line 25
    .line 26
    const-string/jumbo v1, "unregistered control stream client died"

    .line 27
    .line 28
    .line 29
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    iput-object p0, v1, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$9;

    .line 37
    .line 38
    const/4 p0, -0x1

    .line 39
    iput p0, v1, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    iput-boolean p0, v1, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    .line 43
    .line 44
    :goto_0
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/server/audio/AudioService$9;->val$controller:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Landroid/media/IVolumeController;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    move-object v0, v2

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    invoke-interface {v0}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :goto_2
    if-nez v1, :cond_2

    .line 68
    .line 69
    move-object v1, v2

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    invoke-interface {v1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :goto_3
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    const-string v0, "AS.AudioService"

    .line 82
    .line 83
    const-string v1, "Current remote volume controller died, unregistering"

    .line 84
    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
