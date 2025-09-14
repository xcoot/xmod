.class public final synthetic Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSettingChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$$ExternalSyntheticLambda9;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
