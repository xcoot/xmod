.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/location/GnssMeasurementsEvent;

    .line 13
    .line 14
    invoke-static {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportMeasurementData$11(Lcom/android/server/location/gnss/hal/GnssNative$MeasurementCallbacks;Landroid/location/GnssMeasurementsEvent;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->f$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->f$1:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Landroid/location/GnssNavigationMessage;

    .line 25
    .line 26
    invoke-static {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportNavigationMessage$14(Lcom/android/server/location/gnss/hal/GnssNative$NavigationMessageCallbacks;Landroid/location/GnssNavigationMessage;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->f$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda24;->f$1:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Lcom/android/server/location/gnss/GnssPowerStats;

    .line 37
    .line 38
    sget v1, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 39
    .line 40
    invoke-interface {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative$PowerStatsCallback;->onReportPowerStats(Lcom/android/server/location/gnss/GnssPowerStats;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
