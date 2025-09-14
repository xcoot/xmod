.class public Lcom/samsung/android/knoxguard/service/KnoxGuardNative;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static KGTA_FAILED:I = -0x3e8

.field public static KGTA_PARAM_DEFAULT:I = 0x0

.field public static KG_CMD_CHECKING:I = 0x12

.field public static KG_CMD_GENERATE_DH_REQUEST:I = 0x4

.field public static KG_CMD_GENERATE_HOTP_CHANLLENGE:I = 0x3

.field public static KG_CMD_GET_CLIENT_DATA:I = 0xf

.field public static KG_CMD_GET_KGID:I = 0x10

.field public static KG_CMD_GET_LOCK_ACTION:I = 0xd

.field public static KG_CMD_GET_LOCK_OBJECT:I = 0xc

.field public static KG_CMD_GET_NONCE:I = 0x15

.field public static KG_CMD_GET_POLICY:I = 0x8

.field public static KG_CMD_GET_STATUS:I = 0x1

.field public static KG_CMD_GET_TA_INFO:I = 0x16

.field public static KG_CMD_LOCK:I = 0x9

.field public static KG_CMD_PROCESS_KG_ROT:I = 0x14

.field public static KG_CMD_PROVISION_CERT:I = 0x17

.field public static KG_CMD_RPMB_RESET:I = 0x11

.field public static KG_CMD_SET_CLIENT_DATA:I = 0xe

.field public static KG_CMD_UNLOCK:I = 0xa

.field public static KG_CMD_VERIFY_COMPLETETOKEN:I = 0xb

.field public static KG_CMD_VERIFY_DH_RESPONSE:I = 0x5

.field public static KG_CMD_VERIFY_HOTP_SECRET:I = 0x6

.field public static KG_CMD_VERIFY_POLICY:I = 0x7

.field public static KG_CMD_VERIFY_REGISTRATION_INFO:I = 0x2

.field public static TAG:Ljava/lang/String; = "KnoxGuardTANative"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b2s([B)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return-object v0
.end method

.method public static generateHotpDHRequest()Ljava/lang/String;
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_generateHotpDhRequest(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    .line 12
    .line 13
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static generateHotpDHRequestRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_generateHotpDhRequest(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getClientData()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getClientData(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "getClientData - errwrapper = "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 21
    .line 22
    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    .line 26
    .line 27
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public static getClientDataRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getClientData(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getHotpChallenge()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getHotpChallenge(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "getHotpChallenge - errwrapper = "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 21
    .line 22
    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    .line 26
    .line 27
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public static getHotpChallengeRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getHotpChallenge(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getKGID()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getKGID(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "getKGID - errwrapper = "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 21
    .line 22
    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    .line 26
    .line 27
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public static getKGIDRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getKGID(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getKGPolicy()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getKGPolicyRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->getStr()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static getKGPolicyRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getInstance()Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->readData()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string/jumbo v2, "readData failed error "

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v3

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getPolicyRes()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getSignature()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 37
    .line 38
    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v2, v1, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getKGPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_2
    :goto_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    const-string v1, "GetKG Policy : policy or signature  null "

    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-object v3
.end method

.method public static getLockAction()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getLockAction(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "getLockAction - errwrapper = "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 21
    .line 22
    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    .line 26
    .line 27
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public static getLockActionRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getLockAction(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getLockObject()[B
    .locals 4

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getLockObject(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "getLockObject - errwrapper = "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 21
    .line 22
    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    .line 26
    .line 27
    return-object v0
.end method

.method public static getLockObjectRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getLockObject(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getNonceRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "getNonce - errwrapper = "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    .line 24
    .line 25
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static getNonceRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {v0, p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getNonce(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static getSfPolicy()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getSfPolicy(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getTAState()I
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAState(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    .line 17
    .line 18
    :cond_1
    return v1
.end method

.method public static getTAStateRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAState(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static lockScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)I
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->lockScreenRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string p3, "lockScreen - errwrapper = "

    .line 15
    .line 16
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget p3, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 20
    .line 21
    invoke-static {p2, p3, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    .line 29
    .line 30
    :cond_1
    return p1
.end method

.method public static lockScreenRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 9

    .line 1
    new-instance v8, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move v5, p5

    .line 9
    move v6, p6

    .line 10
    move-object/from16 v7, p7

    .line 11
    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v8}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->serialize(Ljava/lang/Object;)[B

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v2, "lockScreen: empty actionName"

    .line 25
    .line 26
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    if-nez v0, :cond_1

    .line 31
    .line 32
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "lockScreen: empty serialzeObj"

    .line 35
    .line 36
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_1
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 41
    .line 42
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1, v2, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_lockScreen(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method public static provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {p3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    invoke-static {v0, p0, p1, p2, p3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_provisionCert(I[B[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static resetRPMB()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->resetRPMB(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static resetRPMB(Ljava/lang/String;)I
    .locals 3

    .line 2
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->resetRPMBRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return p0

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resetRPMB - errwrapper = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 5
    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v0, :cond_1

    .line 7
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    :cond_1
    return v0
.end method

.method public static resetRPMBRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_resetRPMB(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static s2b(Ljava/lang/String;)[B
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static serialize(Ljava/lang/Object;)[B
    .locals 5

    .line 1
    const-string v0, "Serialize outstream failed IO exception"

    .line 2
    .line 3
    const-string v1, "Serialize failed IO exception"

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    new-array p0, p0, [B

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 15
    .line 16
    .line 17
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    .line 18
    .line 19
    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    :try_start_2
    invoke-virtual {v4, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 26
    .line 27
    .line 28
    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 39
    .line 40
    .line 41
    goto :goto_4

    .line 42
    :catch_1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_4

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    :goto_1
    move-object v2, v3

    .line 50
    goto :goto_5

    .line 51
    :catch_2
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    move-object v4, v2

    .line 55
    goto :goto_1

    .line 56
    :catch_3
    move-exception p0

    .line 57
    move-object v4, v2

    .line 58
    goto :goto_2

    .line 59
    :catchall_2
    move-exception p0

    .line 60
    move-object v4, v2

    .line 61
    goto :goto_5

    .line 62
    :catch_4
    move-exception p0

    .line 63
    move-object v3, v2

    .line 64
    move-object v4, v3

    .line 65
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 66
    .line 67
    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :catch_5
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    :goto_4
    return-object v2

    .line 83
    :goto_5
    if-eqz v2, :cond_3

    .line 84
    .line 85
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 86
    .line 87
    .line 88
    goto :goto_6

    .line 89
    :catch_6
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_6
    if-eqz v4, :cond_4

    .line 95
    .line 96
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 97
    .line 98
    .line 99
    goto :goto_7

    .line 100
    :catch_7
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_7
    throw p0
.end method

.method public static setClientData(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->setClientDataRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v2, "setClientData - errwrapper = "

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v2, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    .line 30
    .line 31
    :cond_1
    return v0
.end method

.method public static setClientDataRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string/jumbo v1, "setClientData fail: empty input"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 12
    .line 13
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_setClientData(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static native tz_generateHotpDhRequest(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getClientData(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getHotpChallenge(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getKGID(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getKGPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getLockAction(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getLockObject(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getNonce(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getSfPolicy(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getTAState(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_lockScreen(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_provisionCert(I[B[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_resetRPMB(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_setClientData(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_unlockScreen(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_userChecking(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyCompleteToken(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyHOTPPin(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyHOTPsecret(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyHotpDhChallenge(I[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyKgRot(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyRegistrationInfo(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifySfPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static unlockScreen()I
    .locals 4

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_unlockScreen(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v3, "unlockScreen - errwrapper = "

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 23
    .line 24
    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    .line 32
    .line 33
    :cond_1
    return v1
.end method

.method public static unlockScreenRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_unlockScreen(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static userChecking()I
    .locals 4

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_userChecking(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v3, "userChecking - errwrapper = "

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 23
    .line 24
    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    .line 32
    .line 33
    :cond_1
    return v1
.end method

.method public static userCheckingRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_userChecking(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static verifyCompleteToken(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyCompleteTokenRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v2, "verifyCompleteToken - errwrapper = "

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v2, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    .line 30
    .line 31
    :cond_1
    return v0
.end method

.method public static verifyCompleteTokenRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string/jumbo v0, "verifyCompleteToken input string is null"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyCompleteToken(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static verifyHOTPPin(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPPinRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v2, "verifyHOTPPin - errwrapper = "

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v2, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    .line 30
    .line 31
    :cond_1
    return v0
.end method

.method public static verifyHOTPPinRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string/jumbo v0, "verifyHotpPin fail, input null"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyHOTPPin(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static verifyHOTPsecret(Ljava/lang/String;)I
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string/jumbo v0, "verifyHOTPsecret input string is null"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPsecretRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    .line 28
    .line 29
    :cond_2
    return v0
.end method

.method public static verifyHOTPsecretRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string/jumbo v0, "verifyHOTPsecret input string is null"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyHOTPsecret(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static verifyHotpDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHotpDHChallengeRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v0, "verifyHotpDHChallenge - errwrapper = "

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 21
    .line 22
    invoke-static {p2, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    iget p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    .line 30
    .line 31
    :cond_1
    return p1
.end method

.method public static verifyHotpDHChallengeRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 9
    .line 10
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyHotpDhChallenge(I[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string/jumbo p1, "verifyHotpDHChallenge failed: input null"

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public static verifyKgRot()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyKgRot(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v3, "verifyKgRot - errwrapper = "

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v3, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 22
    .line 23
    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    .line 27
    .line 28
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public static verifyKgRotRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyKgRot(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyPolicyRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v1, "verifyPolicy - errwrapper = "

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    .line 25
    .line 26
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static verifyPolicyRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v1, v2, v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string/jumbo p1, "verifyPolicy failed, empty return from TA"

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_1
    iget-object v2, v1, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    .line 33
    .line 34
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getInstance()Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->saveData(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    sget p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I

    .line 47
    .line 48
    if-eq p0, p1, :cond_2

    .line 49
    .line 50
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    const-string/jumbo p1, "store the policy to EFS failed ="

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v2, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_2
    return-object v1

    .line 60
    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    const-string/jumbo p1, "verifyPolicy failed, empty input"

    .line 63
    .line 64
    .line 65
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return-object v0
.end method

.method public static verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyRegistrationInfoRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    sget-object p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v1, "verifyRegistrationInfo - errwrapper = "

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    .line 25
    .line 26
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static verifyRegistrationInfoRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 7
    .line 8
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {v0, p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyRegistrationInfo(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string/jumbo p1, "verifyRegistrationInfo failed input null "

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public static verifySfPolicy(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    .line 7
    .line 8
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {v0, p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifySfPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string/jumbo p1, "verifySfPolicy failed, empty input"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method
