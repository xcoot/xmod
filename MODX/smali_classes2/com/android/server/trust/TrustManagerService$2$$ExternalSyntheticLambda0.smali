.class public final synthetic Lcom/android/server/trust/TrustManagerService$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# virtual methods
.method public final run(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/hardware/location/ISignificantPlaceProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/ISignificantPlaceProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/hardware/location/ISignificantPlaceProvider;->onSignificantPlaceCheck()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
