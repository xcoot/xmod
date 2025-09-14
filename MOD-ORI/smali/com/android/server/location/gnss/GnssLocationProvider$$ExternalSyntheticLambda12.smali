.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "SIM_SLOT_ID="

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$2;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 20
    .line 21
    iget p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mSimSlotId:I

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/GnssLocationProvider;->gnssConfigurationUpdateSec(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    check-cast p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$1;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssConfiguration:Lcom/android/server/location/gnss/GnssConfiguration;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties(IZ)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_1
    check-cast p0, Lcom/android/server/location/gnss/NetworkTimeHelper;

    .line 50
    .line 51
    check-cast p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mEnvironment:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;

    .line 54
    .line 55
    const-string/jumbo v1, "demandUtcTimeInjection"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p0, v1}, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->requestImmediateTimeQueryCallback(Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_2
    check-cast p0, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;->updateSatelliteBlocklist()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
