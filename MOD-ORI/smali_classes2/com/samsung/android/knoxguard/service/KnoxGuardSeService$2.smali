.class public final Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$2;
.super Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "changeRemoteLockState data = "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget p1, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 11
    .line 12
    invoke-static {v0, p1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final checkRemoteLockPassword([B)I
    .locals 3

    .line 1
    const-string p0, "[HOTP] pin is wrong!!! current failure count ("

    .line 2
    .line 3
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "checkRemoteLockPassword"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/String;

    .line 11
    .line 12
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPPinRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {p1, v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;Z)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    sput p1, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    const-string p0, "[HOTP] pin is correct!"

    .line 31
    .line 32
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unregisterUserPresentReceiver()V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->unlockCompleted()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p0, ")"

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setRemoteLockToLockscreen(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    const-string p1, "[HOTP] verify pin error"

    .line 79
    .line 80
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :goto_1
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->mFailureCount:I

    .line 84
    .line 85
    return p0
.end method
