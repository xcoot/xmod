.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

.field public final synthetic f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda13;->f$1:Landroid/os/RemoteCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda13;->f$1:Landroid/os/RemoteCallback;

    .line 4
    .line 5
    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Landroid/os/RemoteCallback;

    .line 16
    .line 17
    new-instance v3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;

    .line 18
    .line 19
    invoke-direct {v3, p0, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;-><init>(Landroid/os/RemoteCallback;Lcom/android/internal/infra/AndroidFuture;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v2}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->getVersion(Landroid/os/RemoteCallback;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    .line 31
    .line 32
    .line 33
    move-result-wide p0

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    invoke-virtual {v1, p0, p1, v0}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
