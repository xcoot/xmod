.class public final Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mImei:Ljava/lang/String;

.field public final mMacAddress:Ljava/lang/String;

.field public final mMeid:Ljava/lang/String;

.field public final mSerialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 8
    :goto_0
    const-string v4, "Unable to access telephony service"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const/4 v3, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v4, v3

    .line 10
    :goto_1
    iput-object v4, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mImei:Ljava/lang/String;

    .line 11
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    :catch_1
    iput-object v3, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMeid:Ljava/lang/String;

    .line 13
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mSerialNumber:Ljava/lang/String;

    .line 14
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    .line 15
    :goto_2
    const-string v0, "Unable to access WiFi service"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 17
    array-length v0, p1

    if-nez v0, :cond_2

    goto :goto_3

    .line 18
    :cond_2
    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMacAddress:Ljava/lang/String;

    goto :goto_4

    .line 19
    :cond_3
    :goto_3
    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMacAddress:Ljava/lang/String;

    :goto_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mImei:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMeid:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mSerialNumber:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method public static getPaddedTruncatedString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "%"

    .line 3
    const-string/jumbo v1, "s"

    .line 6
    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final calculateEnterpriseId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    xor-int/2addr v0, v1

    .line 7
    const-string/jumbo v2, "owner package must be specified."

    .line 10
    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 13
    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :cond_1
    :goto_0
    const-string/jumbo v0, "enterprise ID must either be null or non-empty."

    .line 26
    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 29
    const-string v0, ""

    .line 31
    if-nez p2, :cond_2

    .line 33
    move-object p2, v0

    .line 34
    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mSerialNumber:Ljava/lang/String;

    .line 36
    if-nez v1, :cond_3

    .line 38
    move-object v1, v0

    .line 39
    :cond_3
    const/16 v2, 0x10

    .line 41
    invoke-static {v2, v1}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedTruncatedString(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 48
    move-result-object v1

    .line 49
    iget-object v3, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mImei:Ljava/lang/String;

    .line 51
    if-nez v3, :cond_4

    .line 53
    move-object v3, v0

    .line 54
    :cond_4
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedTruncatedString(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 61
    move-result-object v3

    .line 62
    iget-object v4, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMeid:Ljava/lang/String;

    .line 64
    if-nez v4, :cond_5

    .line 66
    goto :goto_1

    .line 67
    :cond_5
    move-object v0, v4

    .line 68
    :goto_1
    invoke-static {v2, v0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedTruncatedString(ILjava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 75
    move-result-object v0

    .line 76
    iget-object p0, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMacAddress:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 81
    move-result-object p0

    .line 82
    array-length v4, v1

    .line 83
    array-length v5, v3

    .line 84
    add-int/2addr v4, v5

    .line 85
    array-length v5, v0

    .line 86
    add-int/2addr v4, v5

    .line 87
    array-length v5, p0

    .line 88
    add-int/2addr v4, v5

    .line 89
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 96
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 105
    const/16 p0, 0x40

    .line 107
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedTruncatedString(ILjava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 114
    move-result-object p1

    .line 115
    invoke-static {p0, p2}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedTruncatedString(ILjava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 122
    move-result-object p0

    .line 123
    array-length p2, p1

    .line 124
    array-length v0, p0

    .line 125
    add-int/2addr p2, v0

    .line 126
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 133
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 143
    move-result-object p1

    .line 144
    const-string p2, "HMACSHA256"

    .line 146
    const/4 v0, 0x0

    .line 147
    invoke-static {p2, p0, v0, p1, v2}, Landroid/security/identity/Util;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    .line 150
    move-result-object p0

    .line 151
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 154
    move-result-object p0

    .line 155
    new-instance p1, Landroid/content/pm/VerifierDeviceIdentity;

    .line 157
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 160
    move-result-wide v0

    .line 161
    invoke-direct {p1, v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    .line 164
    new-instance p2, Landroid/content/pm/VerifierDeviceIdentity;

    .line 166
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 169
    move-result-wide v0

    .line 170
    invoke-direct {p2, v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    .line 173
    new-instance p0, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    invoke-virtual {p1}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p2}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object p0

    .line 196
    return-object p0
.end method
