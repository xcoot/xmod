.class public final Lcom/android/server/enterprise/restriction/EnterpriseSimPin;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static enforceCaller()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-ne v0, v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 12
    const-string v1, "Can only be called by System"

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0
.end method

.method public static getIccLockRetryNumber(I)I
    .locals 4

    .line 1
    const-string/jumbo v0, "getIccLockRetryNumber("

    .line 4
    const-string v1, ")"

    .line 6
    const-string v2, "EnterpriseSimPin"

    .line 8
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    const-string/jumbo v1, "isemtelephony"

    .line 15
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 25
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISemTelephony;->getSimPinRetryForSubscriber(I)I

    .line 28
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    const-string v3, "RemoteException for getIccLockRetryNumber: "

    .line 35
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 41
    :cond_0
    :goto_0
    const-string/jumbo p0, "getIccLockRetryNumber() = "

    .line 44
    invoke-static {v0, p0, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    return v0
.end method

.method public static handlePinResult(Landroid/telephony/PinResult;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "handlePinResult() = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "EnterpriseSimPin"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 27
    const/4 v0, 0x1

    .line 28
    if-eq p0, v0, :cond_1

    .line 30
    const/4 v1, 0x2

    .line 31
    if-eq p0, v1, :cond_0

    .line 33
    const/16 p0, 0x64

    .line 35
    return p0

    .line 36
    :cond_0
    return v0

    .line 37
    :cond_1
    const/4 p0, 0x3

    .line 38
    return p0

    .line 39
    :cond_2
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public static supplyPinReportResultForSubscriber(ILjava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "supplyPinReportResult returned: "

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v2, "supplyPinReportResultForSubscriber("

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, ")"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "EnterpriseSimPin"

    .line 26
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->enforceCaller()V

    .line 32
    :try_start_0
    const-string/jumbo v1, "phone"

    .line 35
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_0

    .line 45
    const-string p0, "Null IBinder for phone service. Aborting..."

    .line 47
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {v1, p0, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    .line 56
    move-result-object p0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    .line 63
    aget v1, p0, v0

    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, " "

    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const/4 v1, 0x1

    .line 74
    aget v1, p0, v1

    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    aget p0, p0, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-void

    .line 89
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 91
    const-string v0, "RemoteException for supplyPinReportResult: "

    .line 93
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {p0, p1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 99
    return-void
.end method


# virtual methods
.method public final changeSimPinCode(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "changeSimPinCode("

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ")"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "EnterpriseSimPin"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->enforceCaller()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->createTelephonyForSubId(I)Landroid/telephony/TelephonyManager;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x3

    .line 38
    if-ne v0, v1, :cond_0

    .line 40
    const/4 p0, 0x6

    .line 41
    return p0

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isIccLockEnabled()Z

    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 48
    const/4 p0, 0x5

    .line 49
    return p0

    .line 50
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->getIccLockRetryNumber(I)I

    .line 53
    move-result p1

    .line 54
    const/4 v0, 0x1

    .line 55
    if-gt p1, v0, :cond_2

    .line 57
    const/16 p0, 0x8

    .line 59
    return p0

    .line 60
    :cond_2
    invoke-virtual {p0, p2, p3}, Landroid/telephony/TelephonyManager;->changeIccLockPin(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/PinResult;

    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->handlePinResult(Landroid/telephony/PinResult;)I

    .line 67
    move-result p0

    .line 68
    return p0
.end method

.method public final createTelephonyForSubId(I)Landroid/telephony/TelephonyManager;
    .locals 3

    .line 1
    const-string/jumbo v0, "createTelephonyForSubId("

    .line 4
    const-string v1, ")"

    .line 6
    const-string v2, "EnterpriseSimPin"

    .line 8
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 13
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 21
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 28
    return-object p0
.end method

.method public final isSimLocked(I)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "isSimLocked("

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ")"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "EnterpriseSimPin"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->enforceCaller()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->createTelephonyForSubId(I)Landroid/telephony/TelephonyManager;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isIccLockEnabled()Z

    .line 36
    move-result p0

    .line 37
    return p0
.end method

.method public final setSubIdLockEnabled(ILjava/lang/String;Z)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "setSubIdLockEnabled("

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, ")"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "EnterpriseSimPin"

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->enforceCaller()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->createTelephonyForSubId(I)Landroid/telephony/TelephonyManager;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x3

    .line 46
    if-ne v0, v1, :cond_0

    .line 48
    const/4 p0, 0x6

    .line 49
    return p0

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isIccLockEnabled()Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 56
    if-eqz p3, :cond_1

    .line 58
    const/4 p0, 0x4

    .line 59
    return p0

    .line 60
    :cond_1
    if-nez v0, :cond_2

    .line 62
    if-nez p3, :cond_2

    .line 64
    const/4 p0, 0x5

    .line 65
    return p0

    .line 66
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->getIccLockRetryNumber(I)I

    .line 69
    move-result p1

    .line 70
    const/4 v0, 0x1

    .line 71
    if-gt p1, v0, :cond_3

    .line 73
    const/16 p0, 0x8

    .line 75
    return p0

    .line 76
    :cond_3
    invoke-virtual {p0, p3, p2}, Landroid/telephony/TelephonyManager;->setIccLockEnabled(ZLjava/lang/String;)Landroid/telephony/PinResult;

    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->handlePinResult(Landroid/telephony/PinResult;)I

    .line 83
    move-result p0

    .line 84
    return p0
.end method
