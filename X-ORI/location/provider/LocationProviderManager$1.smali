.class public final Lcom/android/server/location/provider/LocationProviderManager$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$1;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLocationPermissionsChanged(I)V
    .locals 2

    .line 3
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$1;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onLocationPermissionsChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$1;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda35;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda35;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method
