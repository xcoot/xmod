.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Ljava/util/List;

    .line 11
    .line 12
    sget v1, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportAntennaInfo$13(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Landroid/location/GnssNavigationMessage;

    .line 23
    .line 24
    sget v1, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportNavigationMessage$15(Landroid/location/GnssNavigationMessage;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Landroid/location/GnssMeasurementsEvent;

    .line 35
    .line 36
    sget v1, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportMeasurementData$12(Landroid/location/GnssMeasurementsEvent;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, [Landroid/location/Location;

    .line 47
    .line 48
    sget v1, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportLocationBatch$18([Landroid/location/Location;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
