.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/IInterface;)V
    .locals 4

    .line 1
    const-string v0, "Failed to send connected event"

    .line 2
    .line 3
    const-string v1, "OnDeviceIntelligenceManagerService"

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    .line 11
    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteIntelligenceServiceInitialized()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$1;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$1;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v3, v2}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->registerRemoteStorageService(Landroid/service/ondeviceintelligence/IRemoteStorageService;Landroid/os/IRemoteCallback;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 38
    .line 39
    new-instance v3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 48
    .line 49
    iget-object v2, v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->broadcastExecutor:Ljava/util/concurrent/Executor;

    .line 50
    .line 51
    new-instance v3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda1;

    .line 52
    .line 53
    invoke-direct {v3, p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mConfigExecutor:Ljava/util/concurrent/Executor;

    .line 62
    .line 63
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda2;

    .line 64
    .line 65
    const/4 v3, 0x5

    .line 66
    invoke-direct {v2, v3, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p0

    .line 74
    sget p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->$r8$clinit:I

    .line 75
    .line 76
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void

    .line 80
    :pswitch_0
    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;

    .line 81
    .line 82
    :try_start_1
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;

    .line 88
    .line 89
    invoke-direct {v2, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v2}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->registerRemoteServices(Landroid/service/ondeviceintelligence/IRemoteProcessingService;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p1}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->ready()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_1
    move-exception p0

    .line 100
    sget p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->$r8$clinit:I

    .line 101
    .line 102
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    :goto_1
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
