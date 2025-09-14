.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$1;->this$1:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$1;->this$1:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iput p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->remoteInferenceServiceUid:I

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method
