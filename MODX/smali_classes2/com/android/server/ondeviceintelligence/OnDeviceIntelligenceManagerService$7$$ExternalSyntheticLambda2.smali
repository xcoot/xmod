.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;

.field public final synthetic f$1:Landroid/app/ondeviceintelligence/Feature;

.field public final synthetic f$2:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda2;->f$1:Landroid/app/ondeviceintelligence/Feature;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda2;->f$2:Landroid/os/RemoteCallback;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda2;->f$1:Landroid/app/ondeviceintelligence/Feature;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda2;->f$2:Landroid/os/RemoteCallback;

    .line 6
    .line 7
    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroid/os/RemoteCallback;

    .line 13
    .line 14
    new-instance v3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;

    .line 15
    .line 16
    invoke-direct {v3, v0, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$7;Landroid/os/RemoteCallback;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v1, v2}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->getReadOnlyFeatureFileDescriptorMap(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
