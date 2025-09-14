.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/ondeviceintelligence/Feature;

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic f$5:Landroid/app/ondeviceintelligence/ITokenInfoCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;->f$2:Landroid/app/ondeviceintelligence/Feature;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;->f$3:Landroid/os/Bundle;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;->f$4:Lcom/android/internal/infra/AndroidFuture;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;->f$5:Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;->f$1:I

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;->f$2:Landroid/app/ondeviceintelligence/Feature;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;->f$3:Landroid/os/Bundle;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;->f$4:Lcom/android/internal/infra/AndroidFuture;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda10;->f$5:Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    .line 12
    .line 13
    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v7, Lcom/android/internal/infra/AndroidFuture;

    .line 19
    .line 20
    invoke-direct {v7}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v5, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 24
    .line 25
    invoke-static {v5, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mwrapCancellationFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget-object v1, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mInferenceInfoStore:Lcom/android/server/ondeviceintelligence/InferenceInfoStore;

    .line 32
    .line 33
    new-instance v6, Lcom/android/server/ondeviceintelligence/BundleUtil$3;

    .line 34
    .line 35
    invoke-direct {v6, p0, v1, v7}, Lcom/android/server/ondeviceintelligence/BundleUtil$3;-><init>(Landroid/app/ondeviceintelligence/ITokenInfoCallback;Lcom/android/server/ondeviceintelligence/InferenceInfoStore;Lcom/android/internal/infra/AndroidFuture;)V

    .line 36
    .line 37
    .line 38
    move-object v1, p1

    .line 39
    invoke-interface/range {v1 .. v6}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->requestTokenInfo(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 43
    .line 44
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    .line 45
    .line 46
    .line 47
    move-result-wide p0

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 49
    .line 50
    invoke-virtual {v7, p0, p1, v0}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
