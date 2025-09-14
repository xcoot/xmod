.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;

.field public final synthetic f$1:Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda1;->f$1:Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda1;->f$1:Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v1, "OnDeviceIntelligenceManagerService"

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getBroadcastKeys()[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    new-instance v3, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v4, "register_model_update_callback"

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    :try_start_1
    new-instance v4, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;

    .line 29
    .line 30
    invoke-direct {v4, v0, v2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;[Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v3, v4}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->updateProcessingState(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    const-string v0, "Failed to register model loading callback with status code"

    .line 39
    .line 40
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_1
    const-string p0, "Skipping model broadcasts as broadcast intents configured."

    .line 45
    .line 46
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method
