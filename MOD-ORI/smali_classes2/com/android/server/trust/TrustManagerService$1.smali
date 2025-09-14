.class public final Lcom/android/server/trust/TrustManagerService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/hardware/location/ISignificantPlaceProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/ISignificantPlaceProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lcom/android/server/trust/TrustManagerService$1$1;

    .line 6
    .line 7
    invoke-direct {p2, p0}, Lcom/android/server/trust/TrustManagerService$1$1;-><init>(Lcom/android/server/trust/TrustManagerService$1;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2}, Landroid/hardware/location/ISignificantPlaceProvider;->setSignificantPlaceProviderManager(Landroid/hardware/location/ISignificantPlaceProviderManager;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onUnbind()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$1;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mIsInSignificantPlace:Z

    .line 5
    .line 6
    return-void
.end method
