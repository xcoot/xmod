.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroid/os/RemoteCallback;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/String;

    .line 47
    .line 48
    const-class v4, Landroid/os/ParcelFileDescriptor;

    .line 49
    .line 50
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 55
    .line 56
    invoke-static {v3}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    iget-object p0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 66
    .line 67
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda2;

    .line 68
    .line 69
    const/4 v2, 0x4

    .line 70
    invoke-direct {v0, v2, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :goto_2
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 80
    .line 81
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda2;

    .line 82
    .line 83
    const/4 v3, 0x4

    .line 84
    invoke-direct {v2, v3, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p0, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    :try_start_1
    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeStateParams(Landroid/os/Bundle;)V

    .line 106
    .line 107
    .line 108
    iget-object v3, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteInferenceServiceInitialized()V

    .line 111
    .line 112
    .line 113
    iget-object v3, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 114
    .line 115
    iget-object v3, v3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteInferenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    .line 116
    .line 117
    new-instance v4, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;

    .line 118
    .line 119
    invoke-direct {v4, v1, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;-><init>(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v4}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    new-instance p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;

    .line 127
    .line 128
    const/4 v3, 0x3

    .line 129
    invoke-direct {p0, v3, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;-><init>(ILandroid/os/Bundle;)V

    .line 130
    .line 131
    .line 132
    iget-object v3, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 133
    .line 134
    iget-object v3, v3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 135
    .line 136
    invoke-virtual {v2, p0, v3}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    if-nez v2, :cond_2

    .line 142
    .line 143
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 144
    .line 145
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->resourceClosingExecutor:Ljava/util/concurrent/Executor;

    .line 146
    .line 147
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda2;

    .line 148
    .line 149
    const/4 v3, 0x3

    .line 150
    invoke-direct {v2, v3, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 154
    .line 155
    .line 156
    :cond_2
    throw p0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
