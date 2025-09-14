.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

.field public final synthetic f$1:Landroid/app/ondeviceintelligence/IDownloadCallback;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/app/ondeviceintelligence/Feature;

.field public final synthetic f$4:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;Landroid/app/ondeviceintelligence/IDownloadCallback;ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda5;->f$1:Landroid/app/ondeviceintelligence/IDownloadCallback;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda5;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda5;->f$3:Landroid/app/ondeviceintelligence/Feature;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda5;->f$4:Lcom/android/internal/infra/AndroidFuture;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda5;->f$1:Landroid/app/ondeviceintelligence/IDownloadCallback;

    .line 4
    .line 5
    iget v7, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda5;->f$2:I

    .line 6
    .line 7
    iget-object v8, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda5;->f$3:Landroid/app/ondeviceintelligence/Feature;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda5;->f$4:Lcom/android/internal/infra/AndroidFuture;

    .line 10
    .line 11
    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v9, Lcom/android/internal/infra/AndroidFuture;

    .line 17
    .line 18
    invoke-direct {v9}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v10, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;

    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 24
    .line 25
    iget-object v3, v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->mMainHandler:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    move-object v1, v10

    .line 32
    move-object v4, v9

    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;-><init>(Landroid/app/ondeviceintelligence/IDownloadCallback;Landroid/os/Handler;Lcom/android/internal/infra/AndroidFuture;J)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 37
    .line 38
    invoke-static {v0, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mwrapCancellationFuture(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Lcom/android/internal/infra/AndroidFuture;)Lcom/android/internal/infra/AndroidFuture;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p1, v7, v8, p0, v10}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->requestFeatureDownload(ILandroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IDownloadCallback;)V

    .line 43
    .line 44
    .line 45
    return-object v9
.end method
