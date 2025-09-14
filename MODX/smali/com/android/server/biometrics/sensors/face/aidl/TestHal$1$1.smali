.class public final Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;
.super Landroid/hardware/biometrics/common/ICancellationSignal$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;

    .line 5
    invoke-direct {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 10
    const/4 v0, 0x5

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V

    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;

    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 20
    const/4 v0, 0x5

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V

    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;

    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 30
    const/4 v0, 0x5

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V

    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    const-string p0, "8a6cd86630181a4df6f20056259ec200ffe39209"

    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "8a6cd86630181a4df6f20056259ec200ffe39209"

    .line 11
    return-object p0

    .line 12
    :pswitch_1
    const-string p0, "8a6cd86630181a4df6f20056259ec200ffe39209"

    .line 14
    return-object p0

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/TestHal$1$1;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    const/4 p0, 0x4

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x4

    .line 9
    return p0

    .line 10
    :pswitch_1
    const/4 p0, 0x4

    .line 11
    return p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
