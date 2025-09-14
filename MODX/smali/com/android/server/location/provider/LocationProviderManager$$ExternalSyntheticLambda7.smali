.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final onAppForegroundChanged(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda33;

    .line 8
    invoke-direct {v0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda33;-><init>(IZ)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 14
    return-void
.end method
