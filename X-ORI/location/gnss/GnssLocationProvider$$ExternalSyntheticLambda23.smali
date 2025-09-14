.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda23;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/location/Location;->isMock()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->getInEmergency()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isEquipmentTestModeEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    const-string p0, "GnssLocationProvider"

    .line 50
    .line 51
    const-string/jumbo p1, "skip injectLocation in Equipment Test Mode"

    .line 52
    .line 53
    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->changeNlpAccuracyInForce(Landroid/location/Location;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectLocation(Landroid/location/Location;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void

    .line 67
    :pswitch_0
    const-string v0, "GnssLocationProvider"

    .line 68
    .line 69
    const-string/jumbo v1, "injectBestLocation: "

    .line 70
    .line 71
    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/location/Location;->isMock()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_4

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->isEquipmentTestModeEnabled()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    const-string/jumbo p0, "skip injectBestLocation in Equipment Test Mode"

    .line 100
    .line 101
    .line 102
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->changeNlpAccuracyInForce(Landroid/location/Location;)V

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectBestLocation(Landroid/location/Location;)V

    .line 112
    .line 113
    .line 114
    :goto_1
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
