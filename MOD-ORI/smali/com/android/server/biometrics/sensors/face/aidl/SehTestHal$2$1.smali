.class public final Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;
.super Landroid/hardware/biometrics/common/ICancellationSignal$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 19
    .line 20
    const/4 v0, 0x5

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 29
    .line 30
    const/4 v0, 0x5

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;->this$1:Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2;->val$cb:Landroid/hardware/biometrics/face/ISessionCallback;

    .line 39
    .line 40
    const/4 v0, 0x5

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/face/ISessionCallback;->onError(BI)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p0, "8a6cd86630181a4df6f20056259ec200ffe39209"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string p0, "8a6cd86630181a4df6f20056259ec200ffe39209"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_1
    const-string p0, "8a6cd86630181a4df6f20056259ec200ffe39209"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_2
    const-string p0, "8a6cd86630181a4df6f20056259ec200ffe39209"

    .line 16
    .line 17
    return-object p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/SehTestHal$2$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
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
    :pswitch_2
    const/4 p0, 0x4

    .line 13
    return p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
