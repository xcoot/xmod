.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    .line 3
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/String;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lcom/android/internal/infra/AndroidFuture;

    .line 13
    .line 14
    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;

    .line 15
    .line 16
    invoke-interface {p1, v0, p0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->getReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroid/os/Bundle;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;

    .line 27
    .line 28
    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    .line 29
    .line 30
    invoke-interface {p1, v0, p0}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->updateProcessingState(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Landroid/os/Bundle;

    .line 41
    .line 42
    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$6;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback$Stub;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, p0, v0}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->updateProcessingState(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
