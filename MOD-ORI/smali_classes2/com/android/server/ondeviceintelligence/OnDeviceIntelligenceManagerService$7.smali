.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;
.super Landroid/service/ondeviceintelligence/IRemoteStorageService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/ondeviceintelligence/IRemoteStorageService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getReadOnlyFeatureFileDescriptorMap(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteIntelligenceServiceInitialized()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 9
    .line 10
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda2;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final getReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteIntelligenceServiceInitialized()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 14
    .line 15
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;

    .line 16
    .line 17
    invoke-direct {v2, p1, v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    invoke-virtual {v0, p1, p0}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 33
    .line 34
    .line 35
    return-void
.end method
