.class public final synthetic Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
