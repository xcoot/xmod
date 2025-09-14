.class public final Lcom/android/server/hdmi/HdmiControlService$24;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$listener:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$24;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$24;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$24;->val$listener:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService$24;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$24;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$24;->val$listener:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$24;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$24;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$24;->val$listener:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$24;->this$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$24;->val$listener:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    const-string v0, "Failed to report HdmiControlVolumeControlStatusChange: "

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$24;->this$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lcom/android/server/hdmi/HdmiControlService;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$24;->val$listener:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$24;->this$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v3, Lcom/android/server/hdmi/HdmiControlService;

    .line 50
    .line 51
    iget v3, v3, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControl:I

    .line 52
    .line 53
    invoke-interface {v2, v3}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;->onHdmiCecVolumeControlFeature(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception v2

    .line 60
    :try_start_1
    const-string v3, "HdmiControlService"

    .line 61
    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$24;->this$0:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lcom/android/server/hdmi/HdmiControlService;

    .line 70
    .line 71
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControl:I

    .line 72
    .line 73
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {v3, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    :goto_0
    monitor-exit v1

    .line 84
    return-void

    .line 85
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    throw p0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
