.class public final Lcom/android/server/location/gnss/GnssNmeaProvider;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;


# instance fields
.field public final mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public mNmeaAllowed:I

.field public final mNmeaBuffer:[B


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;-><init>(Lcom/android/server/location/injector/Injector;)V

    .line 4
    const/16 v0, 0x78

    .line 6
    new-array v0, v0, [B

    .line 8
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaBuffer:[B

    .line 10
    check-cast p1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 12
    iget-object p1, p1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 14
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 16
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 18
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 21
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addNmeaCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final getListenerType()Landroid/location/LocationConstants$LISTENER_TYPE;
    .locals 0

    .line 1
    sget-object p0, Landroid/location/LocationConstants$LISTENER_TYPE;->NMEA:Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 3
    return-object p0
.end method

.method public final onGnssNmeaListenerStatusChanged(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "onGnssNmeaListenerStatusChanged: Injecting NMEA_ALLOWED="

    .line 4
    const-string v1, "GnssNmeaProvider"

    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    iput p1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaAllowed:I

    .line 11
    const-string v0, "NMEA_ALLOWED="

    .line 13
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public final onHalRestarted()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->resetService()V

    .line 4
    const-string v0, "GnssNmeaProvider"

    .line 6
    const-string/jumbo v1, "onHalRestarted()"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "NMEA_ALLOWED="

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget v1, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaAllowed:I

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/hal/GnssNative;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public final registerWithService(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    .line 3
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 5
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->startNmeaMessageCollection()Z

    .line 8
    move-result p0

    .line 9
    const-string p1, "GnssNmeaProvider"

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const-string/jumbo p0, "starting gnss nmea messages collection"

    .line 16
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string/jumbo p0, "error starting gnss nmea messages collection"

    .line 24
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final unregisterWithService()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopNmeaMessageCollection()Z

    .line 6
    move-result p0

    .line 7
    const-string v0, "GnssNmeaProvider"

    .line 9
    if-eqz p0, :cond_0

    .line 11
    const-string/jumbo p0, "stopping gnss nmea messages collection"

    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo p0, "error stopping gnss nmea messages collection"

    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_0
    return-void
.end method
