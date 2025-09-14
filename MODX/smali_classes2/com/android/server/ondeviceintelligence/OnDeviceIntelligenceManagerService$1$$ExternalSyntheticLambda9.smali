.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/ondeviceintelligence/Feature;

.field public final synthetic f$3:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda9;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda9;->f$2:Landroid/app/ondeviceintelligence/Feature;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda9;->f$3:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda9;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda9;->f$2:Landroid/app/ondeviceintelligence/Feature;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda9;->f$3:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    .line 8
    .line 9
    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v3, Lcom/android/internal/infra/AndroidFuture;

    .line 15
    .line 16
    invoke-direct {v3}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v4, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;

    .line 20
    .line 21
    invoke-direct {v4, v3, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$3;-><init>(Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v1, v2, v4}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->getFeatureDetails(ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 28
    .line 29
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetIdleTimeoutMs(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)J

    .line 30
    .line 31
    .line 32
    move-result-wide p0

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    .line 35
    invoke-virtual {v3, p0, p1, v0}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
