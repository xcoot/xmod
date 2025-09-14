.class public final Lcom/android/server/HermesHalAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final HERMES_AIDL_INTERFACE:Ljava/lang/String;


# instance fields
.field public aidlWeaver:Landroid/hardware/weaver/IWeaver;

.field public hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

.field public hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

.field public hidlWeaver:Landroid/hardware/weaver/V1_0/IWeaver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;->DESCRIPTOR:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "/default"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/server/HermesHalAdapter;->HERMES_AIDL_INTERFACE:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;->DESCRIPTOR:Ljava/lang/String;

    .line 17
    .line 18
    const-string/jumbo v0, "hermes_jni"

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private native getPdpData()Ljava/lang/String;
.end method

.method private native getSecureHWInfo()[B
.end method

.method public static getSehSelftestParameter(Ljava/lang/String;)[Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "/"

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    move-object p0, v0

    .line 14
    :goto_0
    if-nez p0, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    array-length v1, p0

    .line 18
    new-array v1, v1, [Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    :goto_1
    array-length v4, p0

    .line 23
    if-ge v3, v4, :cond_2

    .line 24
    .line 25
    aget-object v4, p0, v3

    .line 26
    .line 27
    new-instance v5, Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;

    .line 28
    .line 29
    invoke-direct {v5}, Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;-><init>()V

    .line 30
    .line 31
    .line 32
    aput-object v5, v1, v3

    .line 33
    .line 34
    :try_start_1
    const-string v5, ":"

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    goto :goto_2

    .line 41
    :catch_1
    move-exception v4

    .line 42
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    move-object v4, v0

    .line 46
    :goto_2
    array-length v5, v4

    .line 47
    if-lez v5, :cond_1

    .line 48
    .line 49
    aget-object v5, v1, v3

    .line 50
    .line 51
    aget-object v6, v4, v2

    .line 52
    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    iput v6, v5, Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;->type:I

    .line 58
    .line 59
    aget-object v5, v1, v3

    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    aget-object v4, v4, v6

    .line 63
    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    iput v4, v5, Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;->cnt:I

    .line 69
    .line 70
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    return-object v1
.end method

.method private native provisioning()I
.end method

.method private native secnvmPowerOff()I
.end method

.method private native secnvmPowerOn()I
.end method

.method private native selftest()[B
.end method

.method private native terminateService()I
.end method

.method private native updateCryptoFW()[B
.end method

.method private native verifyProvisioning()I
.end method


# virtual methods
.method public final GetSecureHWInfo()[B
    .locals 2

    .line 1
    const-string v0, "HERMES#HalAdapter"

    .line 2
    .line 3
    const-string v1, "GetSecureHWInfo called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v1, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    .line 18
    .line 19
    invoke-virtual {v1}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->getSecureHWInfo()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget v1, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    .line 28
    .line 29
    return-object p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object v0

    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->getSecureHWInfo()[B

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-object p0

    .line 38
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public final Provisioning()I
    .locals 2

    .line 1
    const-string v0, "HERMES#HalAdapter"

    .line 2
    .line 3
    const-string v1, "Provisioning called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    .line 17
    .line 18
    invoke-virtual {v0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->provisioning()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    .line 23
    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->provisioning()I

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return p0

    .line 32
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    const/4 p0, -0x1

    .line 36
    return p0
.end method

.method public final SecnvmPowerOff()I
    .locals 2

    .line 1
    const-string v0, "HERMES#HalAdapter"

    .line 2
    .line 3
    const-string v1, "SecnvmPowerOff called!."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    .line 17
    .line 18
    invoke-virtual {v0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->secnvmPowerOff()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    .line 23
    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->secnvmPowerOff()I

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return p0

    .line 32
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    const/4 p0, -0x1

    .line 36
    return p0
.end method

.method public final SecnvmPowerOn()I
    .locals 2

    .line 1
    const-string v0, "HERMES#HalAdapter"

    .line 2
    .line 3
    const-string v1, "SecnvmPowerOn called!."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    check-cast v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    .line 25
    .line 26
    invoke-virtual {v0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->secnvmPowerOn()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    .line 31
    .line 32
    return p0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->secnvmPowerOn()I

    .line 36
    .line 37
    .line 38
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return p0

    .line 40
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public final Selftest()[B
    .locals 2

    .line 1
    const-string v0, "HERMES#HalAdapter"

    .line 2
    .line 3
    const-string v1, "Selftest called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v1, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    .line 18
    .line 19
    invoke-virtual {v1}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->selftest()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget v1, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    .line 28
    .line 29
    return-object p0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object v0

    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->selftest()[B

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-object p0

    .line 38
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public final TerminateService()I
    .locals 3

    .line 1
    const-string v0, "HERMES#HalAdapter"

    .line 2
    .line 3
    const-string v1, "TerminateService called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string/jumbo v2, "hasAccessPermissionForTerm start."

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const/16 v2, 0x3e8

    .line 22
    .line 23
    if-ne v2, v1, :cond_1

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    check-cast v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    .line 34
    .line 35
    invoke-virtual {v0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->terminateService()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    .line 40
    .line 41
    return p0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->terminateService()I

    .line 45
    .line 46
    .line 47
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return p0

    .line 49
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    const/4 p0, -0x1

    .line 53
    return p0

    .line 54
    :cond_1
    const-string p0, "TerminateService denied."

    .line 55
    .line 56
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    const/4 p0, -0x5

    .line 60
    return p0
.end method

.method public final UpdateCryptoFW()[B
    .locals 2

    .line 1
    const-string v0, "HERMES#HalAdapter"

    .line 2
    .line 3
    const-string v1, "UpdateCryptoFW called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v1, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    .line 24
    .line 25
    invoke-virtual {v1}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->updateCOSpatch()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget v1, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    .line 34
    .line 35
    return-object p0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v0

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    check-cast v1, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    .line 44
    .line 45
    invoke-virtual {v1}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->updateCryptoFW()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iget v1, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_2
    return-object v0

    .line 57
    :cond_3
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->updateCryptoFW()[B

    .line 58
    .line 59
    .line 60
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-object p0

    .line 62
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method public final VerifyProvisioning()I
    .locals 2

    .line 1
    const-string v0, "HERMES#HalAdapter"

    .line 2
    .line 3
    const-string v1, "VerifyProvisioning called."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    .line 17
    .line 18
    invoke-virtual {v0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->verifyProvisioning()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    .line 23
    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->verifyProvisioning()I

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return p0

    .line 32
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    const/4 p0, -0x1

    .line 36
    return p0
.end method

.method public final getAidlWeaverService()Landroid/hardware/weaver/IWeaver;
    .locals 4

    .line 1
    const-string v0, "/default"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Landroid/hardware/weaver/IWeaver;->DESCRIPTOR:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    return-object v3

    .line 28
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget v1, Landroid/hardware/weaver/IWeaver$Stub;->$r8$clinit:I

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    instance-of v2, v1, Landroid/hardware/weaver/IWeaver;

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    move-object v3, v1

    .line 63
    check-cast v3, Landroid/hardware/weaver/IWeaver;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    new-instance v3, Landroid/hardware/weaver/IWeaver$Stub$Proxy;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    const/4 v1, -0x1

    .line 72
    iput v1, v3, Landroid/hardware/weaver/IWeaver$Stub$Proxy;->mCachedVersion:I

    .line 73
    .line 74
    iput-object v0, v3, Landroid/hardware/weaver/IWeaver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 75
    .line 76
    :goto_0
    iput-object v3, p0, Lcom/android/server/HermesHalAdapter;->aidlWeaver:Landroid/hardware/weaver/IWeaver;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    const-string v0, "HERMES#HalAdapter"

    .line 80
    .line 81
    const-string v1, "Does not have permissions to get AIDL weaver service"

    .line 82
    .line 83
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :goto_1
    iget-object p0, p0, Lcom/android/server/HermesHalAdapter;->aidlWeaver:Landroid/hardware/weaver/IWeaver;

    .line 87
    .line 88
    return-object p0
.end method

.method public final getBigdataLog()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "HERMES#HalAdapter"

    .line 2
    .line 3
    const-string/jumbo v1, "getBigdataLog called!."

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance p0, Ljava/lang/String;

    .line 18
    .line 19
    check-cast v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    .line 20
    .line 21
    invoke-virtual {v0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->getBigdataLog()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    .line 26
    .line 27
    const-string/jumbo v1, "euc-kr"

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->getPdpData()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object p0

    .line 41
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method public final declared-synchronized getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;
    .locals 4

    .line 1
    const-string/jumbo v0, "get getExtAidlService"

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    sget-object v2, Lcom/android/server/HermesHalAdapter;->HERMES_AIDL_INTERFACE:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const-string v0, "HERMES#HalAdapter"

    .line 25
    .line 26
    const-string/jumbo v2, "getExtAidlService: ext halService is null"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-object v1

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    :try_start_1
    const-string v2, "HERMES#HalAdapter"

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    :try_start_2
    iget-object v0, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-object v0

    .line 61
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    .line 63
    .line 64
    monitor-exit p0

    .line 65
    return-object v1

    .line 66
    :goto_1
    monitor-exit p0

    .line 67
    throw v0
.end method

.method public final declared-synchronized getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;
    .locals 4

    .line 1
    const-string/jumbo v0, "get HermesHAL : "

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    sget-object v2, Lcom/android/server/HermesHalAdapter;->HERMES_AIDL_INTERFACE:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object v1

    .line 16
    :cond_0
    :try_start_1
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    const-string v0, "HERMES#HalAdapter"

    .line 29
    .line 30
    const-string/jumbo v2, "getService: halService is null"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-object v1

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :try_start_2
    const-string v2, "HERMES#HalAdapter"

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    .line 61
    :try_start_3
    iget-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    .line 63
    monitor-exit p0

    .line 64
    return-object v0

    .line 65
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    .line 67
    .line 68
    monitor-exit p0

    .line 69
    return-object v1

    .line 70
    :goto_1
    monitor-exit p0

    .line 71
    throw v0
.end method
