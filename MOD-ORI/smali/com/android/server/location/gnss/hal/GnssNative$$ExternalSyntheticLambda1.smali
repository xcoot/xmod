.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$1:I

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
    iget v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 7
    .line 8
    iget p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$1:I

    .line 9
    .line 10
    sget v1, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestUbpInfo$37(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$1:I

    .line 19
    .line 20
    sget v1, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestSetID$26(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$1:I

    .line 29
    .line 30
    sget v1, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestFlpLocation$35(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 37
    .line 38
    iget p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$1:I

    .line 39
    .line 40
    sget v1, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$psdsDownloadRequest$19(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 47
    .line 48
    iget p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$1:I

    .line 49
    .line 50
    sget v1, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$requestWlanScanInfo$39(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 57
    .line 58
    iget p0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda1;->f$1:I

    .line 59
    .line 60
    sget v1, Lcom/android/server/location/gnss/hal/GnssNative;->GNSS_POSITION_MODE_STANDALONE:I

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportStatus$7(I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
