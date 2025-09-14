.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 5
    iput p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    iput p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 8
    iget v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->f$1:I

    .line 10
    iget p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->f$2:I

    .line 12
    sget v2, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 14
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceResumeStatus$25(II)V

    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 20
    iget v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->f$1:I

    .line 22
    iget p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->f$2:I

    .line 24
    sget v2, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 26
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceRemoveStatus$23(II)V

    .line 29
    return-void

    .line 30
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 32
    iget v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->f$1:I

    .line 34
    iget p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->f$2:I

    .line 36
    sget v2, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 38
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceAddStatus$22(II)V

    .line 41
    return-void

    .line 42
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 44
    iget v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->f$1:I

    .line 46
    iget p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda3;->f$2:I

    .line 48
    sget v2, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 50
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofencePauseStatus$24(II)V

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
