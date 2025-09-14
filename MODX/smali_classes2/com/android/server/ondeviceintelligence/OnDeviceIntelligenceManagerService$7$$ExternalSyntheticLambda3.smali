.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/RemoteCallback;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;->f$1:Landroid/os/RemoteCallback;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;Landroid/os/RemoteCallback;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;->f$1:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;->f$1:Landroid/os/RemoteCallback;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/android/internal/infra/AndroidFuture;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;->f$1:Landroid/os/RemoteCallback;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {v2, v0, p1, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;Landroid/os/Bundle;Landroid/os/RemoteCallback;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
