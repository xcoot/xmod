.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;
.super Landroid/service/ondeviceintelligence/IRemoteProcessingService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/ondeviceintelligence/IRemoteProcessingService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final updateProcessingState(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
