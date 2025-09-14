.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/fingerprint/ISessionCallback;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onError(BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :pswitch_0
    check-cast p0, Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    const/4 v1, 0x0

    .line 25
    :try_start_1
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onError(BI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catch_1
    move-exception p0

    .line 30
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :goto_1
    return-void

    .line 34
    :pswitch_1
    check-cast p0, Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    const/4 v1, 0x0

    .line 38
    :try_start_2
    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onError(BI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catch_2
    move-exception p0

    .line 43
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_2
    return-void

    .line 47
    :pswitch_2
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->initActions()V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTpaTestHal;->mSehFingerprint:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;->mRequestActionTable:Landroid/util/SparseIntArray;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemTestSehFingerprint;->mRequestActionTable:Landroid/util/SparseIntArray;

    .line 62
    .line 63
    const/4 v0, 0x6

    .line 64
    const v1, 0x186c8

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
