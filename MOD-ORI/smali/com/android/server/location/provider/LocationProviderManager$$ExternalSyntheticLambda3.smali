.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p2, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    .line 7
    .line 8
    iget-boolean p3, p3, Lcom/android/server/location/settings/LocationUserSettings;->mAdasGnssLocationEnabled:Z

    .line 9
    .line 10
    if-eq p2, p3, :cond_0

    .line 11
    .line 12
    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;

    .line 13
    .line 14
    const/4 p3, 0x6

    .line 15
    invoke-direct {p2, p1, p3}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;-><init>(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
