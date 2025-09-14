.class Lcom/android/server/locksettings/SyntheticPasswordManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final DEFAULT_PASSWORD:[B

.field public static final DEFAULT_TOKEN:[B

.field public static final PERSONALIZATION_AUTHSECRET_ENCRYPTION_KEY:[B

.field public static final PERSONALIZATION_AUTHSECRET_KEY:[B

.field public static final PERSONALIZATION_CONTEXT:[B

.field public static final PERSONALIZATION_E0:[B

.field public static final PERSONALIZATION_FBE_KEY:[B

.field public static final PERSONALIZATION_KEY_STORE_PASSWORD:[B

.field public static final PERSONALIZATION_PASSWORD_HASH:[B

.field public static final PERSONALIZATION_PASSWORD_METRICS:[B

.field public static final PERSONALIZATION_SDP_MASTER_KEY:[B

.field public static final PERSONALIZATION_SECDISCARDABLE:[B

.field public static final PERSONALIZATION_SP_GK_AUTH:[B

.field public static final PERSONALIZATION_SP_SPLIT:[B

.field public static final PERSONALIZATION_USER_GK_AUTH:[B

.field public static final PERSONALIZATION_WEAVER_KEY:[B

.field public static final PERSONALIZATION_WEAVER_PASSWORD:[B

.field public static final PERSONALIZATION_WEAVER_TOKEN:[B

.field public static final SECURITY_UNPACK:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListeners:Landroid/os/RemoteCallbackList;

.field public final mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

.field public final mSdpSyntheticPasswordManager:Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;

.field public final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field public final mUserManager:Landroid/os/UserManager;

.field public volatile mWeaver:Landroid/hardware/weaver/IWeaver;

.field public mWeaverConfig:Landroid/hardware/weaver/WeaverConfig;

.field public final mWeaverHidlDeathRecipient:Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;

.field public mWeaverHidlService:Lcom/android/server/locksettings/WeaverHidlAdapter;

.field public final tokenMap:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "default-password"

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    .line 10
    const-string v0, "This-byte-array-is-default-token"

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_TOKEN:[B

    .line 18
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    .line 24
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 28
    sput-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->SECURITY_UNPACK:Z

    .line 30
    const-string/jumbo v0, "secdiscardable-transform"

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SECDISCARDABLE:[B

    .line 39
    const-string/jumbo v0, "keystore-password"

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    .line 48
    const-string/jumbo v0, "user-gk-authentication"

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    .line 57
    const-string/jumbo v0, "sp-gk-authentication"

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 66
    const-string/jumbo v0, "fbe-key"

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    .line 75
    const-string v0, "authsecret-hal"

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    .line 83
    const-string/jumbo v0, "vendor-authsecret-encryption-key"

    .line 86
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 89
    move-result-object v0

    .line 90
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_ENCRYPTION_KEY:[B

    .line 92
    const-string/jumbo v0, "sp-split"

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 98
    move-result-object v0

    .line 99
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    .line 101
    const-string/jumbo v0, "pw-hash"

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 107
    move-result-object v0

    .line 108
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    .line 110
    const-string/jumbo v0, "e0-encryption"

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    .line 119
    const-string/jumbo v0, "weaver-pwd"

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 125
    move-result-object v0

    .line 126
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_WEAVER_PASSWORD:[B

    .line 128
    const-string/jumbo v0, "weaver-key"

    .line 131
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 134
    move-result-object v0

    .line 135
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_WEAVER_KEY:[B

    .line 137
    const-string/jumbo v0, "weaver-token"

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 143
    move-result-object v0

    .line 144
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_WEAVER_TOKEN:[B

    .line 146
    const-string/jumbo v0, "password-metrics"

    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 152
    move-result-object v0

    .line 153
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_METRICS:[B

    .line 155
    const-string v0, "android-synthetic-password-personalization-context"

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 160
    move-result-object v0

    .line 161
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_CONTEXT:[B

    .line 163
    const-string/jumbo v0, "sdp-master-key"

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 169
    move-result-object v0

    .line 170
    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SDP_MASTER_KEY:[B

    .line 172
    const-string/jumbo v0, "ro.build.type"

    .line 175
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    move-result-object v1

    .line 179
    const-string/jumbo v2, "userdebug"

    .line 182
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_1

    .line 188
    const-string/jumbo v1, "eng"

    .line 191
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_0

    .line 201
    goto :goto_0

    .line 202
    :cond_0
    const/4 v0, 0x0

    .line 203
    goto :goto_1

    .line 204
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 205
    :goto_1
    sput-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEBUG:Z

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;Lcom/android/server/locksettings/PasswordSlotManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    .line 11
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    .line 16
    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverHidlDeathRecipient:Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;

    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 25
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 29
    iput-object p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 31
    iput-object p4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    .line 33
    new-instance p1, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;

    .line 35
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->spManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 40
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mSdpSyntheticPasswordManager:Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;

    .line 42
    return-void
.end method

.method public static bytesToHex([B)[B
    .locals 0

    .line 1
    invoke-static {p0}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static fakeUserId(I)I
    .locals 1

    .line 1
    const v0, 0x186a0

    .line 4
    add-int/2addr p0, v0

    .line 5
    return p0
.end method

.method public static getProtectorKeyAlias(J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo p1, "synthetic_password_"

    .line 8
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    const-string p1, "%s%x"

    .line 14
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private native nativeSidFromPasswordHandle([B)J
.end method

.method public static stretchedLskfToGkPassword([B)[B
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    .line 3
    filled-new-array {p0}, [[B

    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static transformUnderSecdiscardable([B[B)[B
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SECDISCARDABLE:[B

    .line 3
    filled-new-array {p1}, [[B

    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    .line 10
    move-result-object p1

    .line 11
    filled-new-array {p0, p1}, [[B

    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method


# virtual methods
.method public final addPendingToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->SECURITY_UNPACK:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    sget-object p1, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_TOKEN:[B

    .line 7
    :cond_0
    sget-object v0, Lcom/android/server/locksettings/SecureRandomUtils;->RNG:Ljava/security/SecureRandom;

    .line 9
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x0

    .line 15
    cmp-long v2, v0, v2

    .line 17
    if-eqz v2, :cond_0

    .line 19
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 31
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 33
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v3

    .line 37
    new-instance v4, Landroid/util/ArrayMap;

    .line 39
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 42
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_1
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    .line 47
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mType:I

    .line 52
    const/16 p2, 0x4000

    .line 54
    invoke-static {p2}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_2

    .line 64
    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/WeaverConfig;

    .line 66
    iget v3, v3, Landroid/hardware/weaver/WeaverConfig;->valueSize:I

    .line 68
    invoke-static {v3}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    .line 71
    move-result-object v3

    .line 72
    iput-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 74
    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_WEAVER_TOKEN:[B

    .line 76
    invoke-static {v3, v4, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    .line 79
    move-result-object v3

    .line 80
    iput-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iput-object p2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    .line 85
    const/4 v3, 0x0

    .line 86
    iput-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 88
    :goto_0
    invoke-static {p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    .line 91
    move-result-object p1

    .line 92
    iput-object p1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    .line 94
    iput-object p4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 96
    iget-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mSdpSyntheticPasswordManager:Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;

    .line 98
    invoke-static {p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->-$$Nest$mgetSecureMode(Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;I)I

    .line 101
    const-string p1, "Not Sdp Mdfpp Mode. keyingMaterial null"

    .line 103
    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 108
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-result-object p0

    .line 116
    check-cast p0, Landroid/util/ArrayMap;

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-wide v0
.end method

.method public final createLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move-wide/from16 v3, p3

    .line 9
    move/from16 v10, p7

    .line 11
    :goto_0
    sget-object v5, Lcom/android/server/locksettings/SecureRandomUtils;->RNG:Ljava/security/SecureRandom;

    .line 13
    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextLong()J

    .line 16
    move-result-wide v11

    .line 17
    const-wide/16 v7, 0x0

    .line 19
    cmp-long v5, v11, v7

    .line 21
    if-eqz v5, :cond_d

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isAutoPinConfirmationFeatureAvailable()Z

    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 29
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    .line 32
    move-result v5

    .line 33
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    .line 36
    move-result v9

    .line 37
    if-eqz v9, :cond_0

    .line 39
    iget-object v9, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 41
    invoke-virtual {v9, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->isAutoPinConfirmSettingEnabled(I)Z

    .line 44
    move-result v9

    .line 45
    if-eqz v9, :cond_0

    .line 47
    const/4 v9, 0x6

    .line 48
    if-ge v5, v9, :cond_1

    .line 50
    :cond_0
    const/4 v5, -0x1

    .line 51
    :cond_1
    iget-object v9, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mSdpSyntheticPasswordManager:Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;

    .line 53
    invoke-static {v9, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->-$$Nest$mgetSecureMode(Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;I)I

    .line 56
    move-result v9

    .line 57
    new-instance v13, Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v14, "createLskfBasedProtector for user "

    .line 62
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    const-string v14, " secureMode : "

    .line 70
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v9

    .line 80
    invoke-static {v9}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 86
    move-result v9

    .line 87
    const/4 v13, 0x1

    .line 88
    const/4 v14, 0x0

    .line 89
    const/4 v15, 0x0

    .line 90
    if-eqz v9, :cond_2

    .line 92
    move-object/from16 v8, p5

    .line 94
    move-object v7, v15

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 99
    move-result v9

    .line 100
    new-instance v7, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 102
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 105
    const/16 v8, 0xb

    .line 107
    iput-byte v8, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogN:B

    .line 109
    const/4 v8, 0x3

    .line 110
    iput-byte v8, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogR:B

    .line 112
    iput-byte v13, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogP:B

    .line 114
    iput v9, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 116
    iput v5, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    .line 118
    const/16 v5, 0x10

    .line 120
    invoke-static {v5}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    .line 123
    move-result-object v5

    .line 124
    iput-object v5, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 126
    iput v14, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I

    .line 128
    move-object/from16 v8, p5

    .line 130
    :goto_1
    invoke-virtual {v0, v8, v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchLskf(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    .line 133
    move-result-object v9

    .line 134
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 137
    move-result-object v5

    .line 138
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    move-result-object v6

    .line 142
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 145
    move-result-object v5

    .line 146
    const-string v6, "Creating LSKF-based protector %016x for user %d"

    .line 148
    const-string v13, "SyntheticPasswordManager"

    .line 150
    invoke-static {v13, v6, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-static/range {p7 .. p7}, Lcom/samsung/android/lock/LsLog;->enrollBegin(I)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    .line 159
    move-result-object v5

    .line 160
    if-eqz v5, :cond_5

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    .line 165
    move-result v6

    .line 166
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    move-result-object v1

    .line 170
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    move-result-object v2

    .line 174
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 177
    move-result-object v1

    .line 178
    const-string v2, "Enrolling LSKF for user %d into Weaver slot %d"

    .line 180
    invoke-static {v13, v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 186
    move-result v1

    .line 187
    if-eqz v7, :cond_3

    .line 189
    iget-object v2, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 191
    goto :goto_2

    .line 192
    :cond_3
    move-object v2, v15

    .line 193
    :goto_2
    invoke-static {v1, v6, v11, v12, v2}, Lcom/samsung/android/lock/LsLog;->enrollUpdate(IIJ[B)V

    .line 196
    invoke-static {v14, v6, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    .line 199
    invoke-virtual {v0, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchedLskfToWeaverKey([B)[B

    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v0, v5, v6, v1, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(Landroid/hardware/weaver/IWeaver;I[B[B)[B

    .line 206
    move-result-object v13

    .line 207
    invoke-static/range {p7 .. p7}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 210
    if-eqz v13, :cond_4

    .line 212
    const/4 v1, 0x5

    .line 213
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 216
    move-result-object v1

    .line 217
    const/4 v2, 0x1

    .line 218
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 221
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 224
    const-string/jumbo v2, "weaver"

    .line 227
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 230
    move-result-object v3

    .line 231
    move-object/from16 v1, p0

    .line 233
    move-wide v4, v11

    .line 234
    move v15, v6

    .line 235
    move/from16 v6, p7

    .line 237
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 240
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    .line 242
    invoke-virtual {v1, v15}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotInUse(I)V

    .line 245
    invoke-virtual {v0, v7, v14, v10, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    .line 248
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_WEAVER_PASSWORD:[B

    .line 250
    filled-new-array {v13}, [[B

    .line 253
    move-result-object v2

    .line 254
    invoke-static {v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    .line 257
    move-result-object v1

    .line 258
    filled-new-array {v9, v1}, [[B

    .line 261
    move-result-object v1

    .line 262
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 265
    move-result-object v1

    .line 266
    move-object v9, v1

    .line 267
    const-wide/16 v13, 0x0

    .line 269
    goto/16 :goto_a

    .line 271
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 273
    const-string v1, "Fail to enroll user password under waver "

    .line 275
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    move-result-object v0

    .line 285
    invoke-static {v15, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 290
    const-string v1, "Fail to enroll user password under weaver "

    .line 292
    invoke-static {v10, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 295
    move-result-object v1

    .line 296
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 299
    throw v0

    .line 300
    :cond_5
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 303
    move-result v5

    .line 304
    if-eqz v7, :cond_6

    .line 306
    iget-object v6, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 308
    :goto_3
    const/4 v14, -0x1

    .line 309
    goto :goto_4

    .line 310
    :cond_6
    move-object v6, v15

    .line 311
    goto :goto_3

    .line 312
    :goto_4
    invoke-static {v5, v14, v11, v12, v6}, Lcom/samsung/android/lock/LsLog;->enrollUpdate(IIJ[B)V

    .line 315
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 318
    move-result v5

    .line 319
    if-nez v5, :cond_b

    .line 321
    :try_start_0
    invoke-static/range {p7 .. p7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUserId(I)I

    .line 324
    move-result v5

    .line 325
    invoke-interface {v1, v5}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    goto :goto_5

    .line 329
    :catch_0
    const-string v5, "Failed to clear SID from gatekeeper"

    .line 331
    invoke-static {v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_5
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    move-result-object v5

    .line 338
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 341
    move-result-object v5

    .line 342
    const-string v6, "Enrolling LSKF for user %d into Gatekeeper"

    .line 344
    invoke-static {v13, v6, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    const-string v5, "Failed to enroll LSKF for new SP protector for user "

    .line 349
    if-eqz v2, :cond_9

    .line 351
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 354
    move-result v6

    .line 355
    if-nez v6, :cond_9

    .line 357
    const-wide/16 v13, 0x0

    .line 359
    cmp-long v6, v3, v13

    .line 361
    if-eqz v6, :cond_9

    .line 363
    const-string/jumbo v6, "pwd"

    .line 366
    iget-object v13, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 368
    invoke-virtual {v13, v10, v6, v3, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 371
    move-result-object v3

    .line 372
    if-eqz v3, :cond_7

    .line 374
    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 377
    move-result-object v3

    .line 378
    goto :goto_6

    .line 379
    :catch_1
    move-exception v0

    .line 380
    goto :goto_8

    .line 381
    :cond_7
    move-object v3, v15

    .line 382
    :goto_6
    if-eqz v3, :cond_8

    .line 384
    invoke-virtual {v0, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchLskf(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    .line 387
    move-result-object v2

    .line 388
    invoke-static/range {p7 .. p7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUserId(I)I

    .line 391
    move-result v4

    .line 392
    iget-object v3, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 394
    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchedLskfToGkPassword([B)[B

    .line 397
    move-result-object v2

    .line 398
    invoke-static {v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchedLskfToGkPassword([B)[B

    .line 401
    move-result-object v6

    .line 402
    invoke-interface {v1, v4, v3, v2, v6}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    .line 405
    move-result-object v1

    .line 406
    goto :goto_7

    .line 407
    :cond_8
    const-string/jumbo v2, "previous pwd is null! N-1 is not set!"

    .line 410
    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    .line 413
    invoke-static/range {p7 .. p7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUserId(I)I

    .line 416
    move-result v2

    .line 417
    invoke-static {v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchedLskfToGkPassword([B)[B

    .line 420
    move-result-object v3

    .line 421
    invoke-interface {v1, v2, v15, v15, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    .line 424
    move-result-object v1

    .line 425
    goto :goto_7

    .line 426
    :cond_9
    invoke-static/range {p7 .. p7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUserId(I)I

    .line 429
    move-result v2

    .line 430
    invoke-static {v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchedLskfToGkPassword([B)[B

    .line 433
    move-result-object v3

    .line 434
    invoke-interface {v1, v2, v15, v15, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    .line 437
    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    :goto_7
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    .line 441
    move-result v2

    .line 442
    if-nez v2, :cond_a

    .line 444
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    .line 447
    move-result-object v1

    .line 448
    iput-object v1, v7, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 450
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    .line 453
    move-result-wide v1

    .line 454
    move-wide v13, v1

    .line 455
    goto :goto_9

    .line 456
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 458
    const-string v2, "Failed to enroll LSKF by response code "

    .line 460
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    .line 466
    move-result v1

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    move-result-object v0

    .line 474
    const/4 v1, 0x1

    .line 475
    invoke-static {v1, v0}, Lcom/samsung/android/lock/LsLog;->enrollFinish(ILjava/lang/String;)V

    .line 478
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 480
    invoke-static {v10, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 483
    move-result-object v1

    .line 484
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 487
    throw v0

    .line 488
    :goto_8
    const-string v1, "Failed to enroll LSKF by RemoteException"

    .line 490
    const/4 v2, 0x1

    .line 491
    invoke-static {v2, v1}, Lcom/samsung/android/lock/LsLog;->enrollFinish(ILjava/lang/String;)V

    .line 494
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 496
    invoke-static {v10, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 499
    move-result-object v2

    .line 500
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 503
    throw v1

    .line 504
    :cond_b
    const-wide/16 v13, 0x0

    .line 506
    :goto_9
    const/16 v1, 0x4000

    .line 508
    invoke-static {v1}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    .line 511
    move-result-object v15

    .line 512
    const-string/jumbo v2, "secdis"

    .line 515
    move-object/from16 v1, p0

    .line 517
    move-object v3, v15

    .line 518
    move-wide v4, v11

    .line 519
    move/from16 v6, p7

    .line 521
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 524
    invoke-static {v9, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    .line 527
    move-result-object v1

    .line 528
    const/4 v2, 0x0

    .line 529
    invoke-virtual {v0, v7, v2, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeGatekeeperFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    .line 532
    move-object v9, v1

    .line 533
    :goto_a
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 536
    move-result v1

    .line 537
    if-nez v1, :cond_c

    .line 539
    const-string/jumbo v2, "pwd"

    .line 542
    invoke-virtual {v7}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    .line 545
    move-result-object v3

    .line 546
    move-object/from16 v1, p0

    .line 548
    move-wide v4, v11

    .line 549
    move/from16 v6, p7

    .line 551
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 554
    move-object/from16 v2, p5

    .line 556
    move-object/from16 v3, p6

    .line 558
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;JI)V

    .line 561
    :cond_c
    const/4 v4, 0x0

    .line 562
    move-object/from16 v1, p0

    .line 564
    move-wide v2, v11

    .line 565
    move-object/from16 v5, p6

    .line 567
    move-object v6, v9

    .line 568
    move-wide v7, v13

    .line 569
    move/from16 v9, p7

    .line 571
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;[BJI)V

    .line 574
    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    .line 577
    const-string v0, "Enroll Success"

    .line 579
    const/4 v1, 0x0

    .line 580
    invoke-static {v1, v0}, Lcom/samsung/android/lock/LsLog;->enrollFinish(ILjava/lang/String;)V

    .line 583
    return-wide v11

    .line 584
    :cond_d
    move-object/from16 v8, p5

    .line 586
    goto/16 :goto_0
.end method

.method public createSpBlob(Ljava/lang/String;[B[BJ)[B
    .locals 6

    .line 1
    sget-object p0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->PROTECTOR_SECRET_PERSONALIZATION:[B

    .line 3
    const-string p0, "SyntheticPasswordCrypto"

    .line 5
    :try_start_0
    const-string v0, "AES"

    .line 7
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/security/SecureRandom;

    .line 13
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 16
    const/16 v2, 0x100

    .line 18
    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 21
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->getKeyStore()Ljava/security/KeyStore;

    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Landroid/security/keystore/KeyProtection$Builder;

    .line 31
    const/4 v3, 0x2

    .line 32
    invoke-direct {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 35
    const-string v3, "GCM"

    .line 37
    filled-new-array {v3}, [Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 44
    move-result-object v2

    .line 45
    const-string v3, "NoPadding"

    .line 47
    filled-new-array {v3}, [Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 54
    move-result-object v2

    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 59
    move-result-object v2

    .line 60
    const-wide/16 v4, 0x0

    .line 62
    cmp-long v4, p4, v4

    .line 64
    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4, p4, p5}, Landroid/security/keystore/KeyProtection$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;

    .line 73
    move-result-object p4

    .line 74
    const/16 p5, 0xf

    .line 76
    invoke-virtual {p4, p5}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p1

    .line 81
    goto :goto_2

    .line 82
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    .line 85
    move-result-object p4

    .line 86
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setRollbackResistant(Z)Landroid/security/keystore/KeyProtection$Builder;

    .line 89
    invoke-virtual {v2}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    .line 92
    move-result-object p5

    .line 93
    new-instance v2, Ljava/security/KeyStore$SecretKeyEntry;

    .line 95
    invoke-direct {v2, v0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :try_start_1
    invoke-virtual {v1, p1, v2, p5}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 101
    const-string p5, "Using rollback-resistant key"

    .line 103
    invoke-static {p0, p5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    goto :goto_1

    .line 107
    :catch_1
    :try_start_2
    const-string p5, "Rollback-resistant keys unavailable.  Falling back to non-rollback-resistant key"

    .line 109
    invoke-static {p0, p5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v1, p1, v2, p4}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 115
    :goto_1
    sget-object p1, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->PROTECTOR_SECRET_PERSONALIZATION:[B

    .line 117
    invoke-static {p3, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([BLjavax/crypto/SecretKey;)[B

    .line 124
    move-result-object p0
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    return-object p0

    .line 126
    :goto_2
    const-string p2, "Failed to create blob"

    .line 128
    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 133
    const-string p2, "Failed to encrypt blob"

    .line 135
    invoke-direct {p0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    throw p0
.end method

.method public final createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;[BJI)V
    .locals 12

    .line 1
    move v0, p3

    .line 2
    move-object/from16 v1, p4

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v3, :cond_1

    .line 8
    if-ne v0, v2, :cond_0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v4, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    .line 13
    :goto_0
    move-object v7, v4

    .line 14
    goto :goto_2

    .line 15
    :cond_1
    :goto_1
    iget-object v4, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEncryptedEscrowSplit0:[B

    .line 17
    if-nez v4, :cond_2

    .line 19
    const/4 v4, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget-object v5, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    .line 23
    sget-object v6, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    .line 25
    invoke-static {v5, v6, v4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    .line 28
    move-result-object v4

    .line 29
    goto :goto_0

    .line 30
    :goto_2
    invoke-static {p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getProtectorKeyAlias(J)Ljava/lang/String;

    .line 33
    move-result-object v6

    .line 34
    move-object v5, p0

    .line 35
    move-object/from16 v8, p5

    .line 37
    move-wide/from16 v9, p6

    .line 39
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSpBlob(Ljava/lang/String;[B[BJ)[B

    .line 42
    move-result-object v4

    .line 43
    iget-byte v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mVersion:B

    .line 45
    const/4 v5, 0x3

    .line 46
    if-ne v1, v5, :cond_3

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move v5, v2

    .line 50
    :goto_3
    array-length v1, v4

    .line 51
    add-int/2addr v1, v2

    .line 52
    new-array v8, v1, [B

    .line 54
    const/4 v1, 0x0

    .line 55
    aput-byte v5, v8, v1

    .line 57
    aput-byte v0, v8, v3

    .line 59
    array-length v0, v4

    .line 60
    invoke-static {v4, v1, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    const-string/jumbo v7, "spblob"

    .line 66
    move-object v6, p0

    .line 67
    move-wide v9, p1

    .line 68
    move/from16 v11, p8

    .line 70
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 73
    return-void
.end method

.method public final createTokenBasedProtector(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z
    .locals 13

    .line 1
    move-object v9, p0

    .line 2
    move v10, p1

    .line 3
    move-object/from16 v6, p4

    .line 5
    iget-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 18
    return v1

    .line 19
    :cond_0
    iget-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/util/ArrayMap;

    .line 31
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    move-object v11, v0

    .line 40
    check-cast v11, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    .line 42
    if-nez v11, :cond_1

    .line 44
    return v1

    .line 45
    :cond_1
    invoke-virtual {p0, p1, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    .line 48
    move-result v0

    .line 49
    const-string v2, "User is not escrowable"

    .line 51
    const-string v3, "SyntheticPasswordManager"

    .line 53
    if-nez v0, :cond_2

    .line 55
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return v1

    .line 59
    :cond_2
    invoke-virtual {p0, p1, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_3

    .line 65
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return v1

    .line 69
    :cond_3
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    move-result-object v0

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v2

    .line 77
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    const-string v2, "Creating token-based protector %016x for user %d"

    .line 83
    invoke-static {v3, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    .line 89
    move-result-object v0

    .line 90
    const/4 v12, 0x1

    .line 91
    if-eqz v0, :cond_5

    .line 93
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    .line 96
    move-result v7

    .line 97
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v2

    .line 101
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 104
    move-result-object v2

    .line 105
    const-string v4, "Using Weaver slot %d for new token-based protector"

    .line 107
    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-static {v1, v7, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    .line 113
    const/4 v2, 0x0

    .line 114
    iget-object v4, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 116
    invoke-virtual {p0, v0, v7, v2, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(Landroid/hardware/weaver/IWeaver;I[B[B)[B

    .line 119
    move-result-object v0

    .line 120
    if-nez v0, :cond_4

    .line 122
    const-string v0, "Failed to enroll weaver secret when activating token"

    .line 124
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    const-string v2, "Failed to enroll token for user "

    .line 131
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    invoke-static {v7, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 144
    return v1

    .line 145
    :cond_4
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 148
    const/4 v0, 0x5

    .line 149
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 156
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 159
    const-string/jumbo v1, "weaver"

    .line 162
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 165
    move-result-object v2

    .line 166
    move-object v0, p0

    .line 167
    move-wide v3, p2

    .line 168
    move v5, p1

    .line 169
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 172
    iget-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    .line 174
    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotInUse(I)V

    .line 177
    :cond_5
    iget-object v2, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    .line 179
    const-string/jumbo v1, "secdis"

    .line 182
    move-object v0, p0

    .line 183
    move-wide v3, p2

    .line 184
    move v5, p1

    .line 185
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 188
    iget-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mSdpSyntheticPasswordManager:Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;

    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    iget v0, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mType:I

    .line 195
    if-eq v0, v12, :cond_6

    .line 197
    move v3, v12

    .line 198
    goto :goto_0

    .line 199
    :cond_6
    const/4 v0, 0x2

    .line 200
    move v3, v0

    .line 201
    :goto_0
    iget-object v5, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    .line 203
    const-wide/16 v7, 0x0

    .line 205
    move-object v0, p0

    .line 206
    move-wide v1, p2

    .line 207
    move-object/from16 v4, p4

    .line 209
    move-wide v6, v7

    .line 210
    move v8, p1

    .line 211
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;[BJI)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    .line 217
    iget-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 219
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Landroid/util/ArrayMap;

    .line 229
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 238
    if-eqz v0, :cond_7

    .line 240
    move-wide v1, p2

    .line 241
    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;->onEscrowTokenActivated(JI)V

    .line 244
    :cond_7
    return v12
.end method

.method public decryptSpBlob(Ljava/lang/String;[B[B)[B
    .locals 2

    .line 1
    const-string p0, "SP protector key is missing: "

    .line 3
    :try_start_0
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->getKeyStore()Ljava/security/KeyStore;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljavax/crypto/SecretKey;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-static {p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([BLjavax/crypto/SecretKey;)[B

    .line 19
    move-result-object p0

    .line 20
    sget-object p1, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->PROTECTOR_SECRET_PERSONALIZATION:[B

    .line 22
    invoke-static {p3, p1, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 31
    new-instance p3, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {p3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    const-string p1, "SyntheticPasswordCrypto"

    .line 49
    const-string p2, "Failed to decrypt blob"

    .line 51
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    throw p1
.end method

.method public final destroyLskfBasedProtector(IJ)V
    .locals 3

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "SyntheticPasswordManager"

    .line 15
    const-string v2, "Destroying LSKF-based protector %016x for user %d"

    .line 17
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    const-string/jumbo v0, "spblob"

    .line 23
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    .line 26
    invoke-static {p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getProtectorKeyAlias(J)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyProtectorKey(Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "secdis"

    .line 36
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    .line 39
    const-string/jumbo v0, "weaver"

    .line 42
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(IJ)V

    .line 51
    :cond_0
    const-string/jumbo v0, "pwd"

    .line 54
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    .line 57
    const-string/jumbo v0, "metrics"

    .line 60
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    .line 63
    invoke-static {p1, p2, p3}, Lcom/samsung/android/lock/SPBnRManager;->deleteBackup(IJ)Z

    .line 66
    return-void
.end method

.method public destroyProtectorKey(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p0, "SyntheticPasswordCrypto"

    .line 3
    const-string v0, "Deleted SP protector key "

    .line 5
    :try_start_0
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->getKeyStore()Ljava/security/KeyStore;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    const-string v2, "Failed to delete SP protector key "

    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-static {p0, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    :goto_0
    return-void
.end method

.method public final destroyState(ILjava/lang/String;J)V
    .locals 4

    .line 1
    const-string/jumbo v0, "spblob"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x7

    .line 19
    const-string v3, "    "

    .line 21
    invoke-static {v2, v3}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "User %d Spblob destroy [%016x]\n%s"

    .line 31
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordStateFileForUser(ILjava/lang/String;J)Ljava/io/File;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 47
    return-void
.end method

.method public final destroyTokenBasedProtector(IJ)V
    .locals 4

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "Destroying token-based protector %016x for user %d"

    .line 15
    const-string v2, "SyntheticPasswordManager"

    .line 17
    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 22
    const-string/jumbo v1, "spblob"

    .line 25
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    .line 36
    invoke-static {p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getProtectorKeyAlias(J)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyProtectorKey(Ljava/lang/String;)V

    .line 43
    const-string/jumbo v1, "secdis"

    .line 46
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    .line 49
    const-string/jumbo v1, "weaver"

    .line 52
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(IJ)V

    .line 61
    :cond_0
    iget-byte v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    .line 63
    const/4 v1, 0x2

    .line 64
    if-ne v0, v1, :cond_2

    .line 66
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    .line 68
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 71
    move-result v0

    .line 72
    :goto_0
    if-lez v0, :cond_1

    .line 74
    add-int/lit8 v0, v0, -0x1

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    .line 78
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    .line 84
    invoke-interface {v1, p2, p3, p1}, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;->onWeakEscrowTokenRemoved(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception v1

    .line 91
    :try_start_1
    const-string v3, "Exception while notifying WeakEscrowTokenRemovedListener."

    .line 93
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    goto :goto_0

    .line 97
    :goto_1
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    .line 99
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 102
    throw p1

    .line 103
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    .line 105
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 108
    :cond_2
    return-void
.end method

.method public final destroyWeaverSlot(IJ)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(IJ)I

    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "weaver"

    .line 8
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    .line 11
    const/4 p2, -0x1

    .line 12
    if-eq v0, p2, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    .line 17
    move-result-object p2

    .line 18
    const-string p3, "SyntheticPasswordManager"

    .line 20
    if-nez p2, :cond_0

    .line 22
    const-string p0, "Cannot erase Weaver slot because Weaver is unavailable"

    .line 24
    invoke-static {p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    .line 31
    move-result-object v1

    .line 32
    const-string v2, "Destroy weaver slot [ sl : "

    .line 34
    const-string v3, ", u : "

    .line 36
    const-string v4, " ]"

    .line 38
    invoke-static {v0, p1, v2, v3, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-static {v3, v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v2

    .line 50
    check-cast v1, Ljava/util/HashSet;

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_3

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v1

    .line 62
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    const-string v2, "Erasing Weaver slot %d"

    .line 68
    invoke-static {p3, v2, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const/4 p3, 0x0

    .line 72
    invoke-static {p3, v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    .line 75
    invoke-virtual {p0, p2, v0, v3, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(Landroid/hardware/weaver/IWeaver;I[B[B)[B

    .line 78
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 81
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    .line 83
    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->ensureSlotMapLoaded()V

    .line 86
    iget-object p1, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object p2

    .line 92
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_2

    .line 98
    iget-object p1, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object p2

    .line 104
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->getMode()Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_1

    .line 120
    goto :goto_0

    .line 121
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 123
    const-string/jumbo p1, "password slot "

    .line 126
    const-string p2, " cannot be deleted"

    .line 128
    invoke-static {v0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object p1

    .line 132
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    throw p0

    .line 136
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    move-result-object p2

    .line 142
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p0}, Lcom/android/server/locksettings/PasswordSlotManager;->saveSlotMap()V

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object p0

    .line 153
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 156
    move-result-object p0

    .line 157
    const-string p1, "Weaver slot %d was already reused; not erasing it"

    .line 159
    invoke-static {p3, p1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    const-string p0, "Destroying skipped!"

    .line 164
    invoke-static {v3, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_4
    :goto_1
    return-void
.end method

.method public final getFailureCount(Landroid/service/gatekeeper/IGateKeeperService;JI)I
    .locals 5

    .line 12
    const-string/jumbo v0, "getFailureCount = "

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    const-string v2, "Synthetic password not found for user %d"

    const-string v3, "SyntheticPasswordManager"

    const/4 v4, -0x1

    if-nez v1, :cond_0

    .line 13
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "pwd"

    invoke-virtual {p0, p4, v1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 15
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p0

    .line 16
    iget p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    move p2, v4

    :goto_0
    if-ne p2, v4, :cond_2

    .line 17
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_2
    if-eqz p0, :cond_4

    .line 18
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    if-nez p0, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    :try_start_0
    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUserId(I)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/service/gatekeeper/IGateKeeperService;->getFailureCount(I)I

    move-result p0

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "getFailureCount, RemoteException "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    .line 22
    :cond_4
    :goto_1
    const-string p0, "Missing Gatekeeper handle for nonempty LSKF"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public final getFailureCount(Lcom/samsung/android/service/HermesService/IHermesService;JI)I
    .locals 6

    .line 1
    const-string/jumbo v0, "getFailureCount = "

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    const-string v2, "Synthetic password not found for user %d"

    const-string v3, "SyntheticPasswordManager"

    const/4 v4, -0x1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v5, "pwd"

    invoke-virtual {v1, p4, v5, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v1

    .line 5
    iget v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-ne v1, v4, :cond_2

    .line 6
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 7
    :cond_2
    invoke-virtual {p0, p4, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(IJ)I

    move-result p0

    if-ne p0, v4, :cond_3

    .line 8
    const-string p0, "Protector uses Weaver, but Weaver is unavailable"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 9
    :cond_3
    :try_start_0
    invoke-interface {p1, p0}, Lcom/samsung/android/service/HermesService/IHermesService;->getFailureCount(I)I

    move-result p1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "getFailureCount, RemoteException "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public final getNextAvailableWeaverSlot()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    .line 7
    invoke-virtual {v1}, Lcom/android/server/locksettings/PasswordSlotManager;->ensureSlotMapLoaded()V

    .line 10
    iget-object v1, v1, Lcom/android/server/locksettings/PasswordSlotManager;->mSlotMap:Ljava/util/Map;

    .line 12
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 23
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    move-result-object v1

    .line 29
    const-string/jumbo v2, "device_provisioned"

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 42
    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 45
    move-result-object v1

    .line 46
    iget v2, v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 48
    const/4 v4, 0x2

    .line 49
    if-ne v2, v4, :cond_1

    .line 51
    iget v1, v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v1

    .line 57
    move-object v2, v0

    .line 58
    check-cast v2, Ljava/util/HashSet;

    .line 60
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/WeaverConfig;

    .line 65
    iget v1, v1, Landroid/hardware/weaver/WeaverConfig;->slots:I

    .line 67
    if-ge v3, v1, :cond_3

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v1

    .line 73
    move-object v2, v0

    .line 74
    check-cast v2, Ljava/util/HashSet;

    .line 76
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_2

    .line 82
    return v3

    .line 83
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 88
    const-string v0, "Run out of weaver slots."

    .line 90
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p0
.end method

.method public final getPasswordMetrics(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Landroid/app/admin/PasswordMetrics;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    const-string/jumbo v1, "metrics"

    .line 8
    move/from16 v2, p1

    .line 10
    move-wide/from16 v3, p2

    .line 12
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v3, "SyntheticPasswordManager"

    .line 19
    if-nez v0, :cond_0

    .line 21
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v0

    .line 25
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    const-string v2, "Failed to read password metrics file for user %d"

    .line 31
    invoke-static {v3, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    return-object v1

    .line 35
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_METRICS:[B

    .line 40
    move-object/from16 v5, p4

    .line 42
    invoke-virtual {v5, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 45
    move-result-object v4

    .line 46
    const/4 v5, 0x0

    .line 47
    new-array v6, v5, [B

    .line 49
    invoke-static {v4, v6, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    .line 52
    move-result-object v0

    .line 53
    if-nez v0, :cond_1

    .line 55
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v0

    .line 59
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 63
    const-string v2, "Failed to decrypt password metrics file for user %d"

    .line 65
    invoke-static {v3, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-object v1

    .line 69
    :cond_1
    array-length v1, v0

    .line 70
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 73
    move-result-object v1

    .line 74
    array-length v2, v0

    .line 75
    invoke-virtual {v1, v0, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 81
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 84
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    .line 86
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 89
    move-result v7

    .line 90
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 93
    move-result v8

    .line 94
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 97
    move-result v9

    .line 98
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 101
    move-result v10

    .line 102
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 105
    move-result v11

    .line 106
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 109
    move-result v12

    .line 110
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 113
    move-result v13

    .line 114
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 117
    move-result v14

    .line 118
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 121
    move-result v15

    .line 122
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 125
    move-result v16

    .line 126
    move-object v6, v0

    .line 127
    invoke-direct/range {v6 .. v16}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIIIII)V

    .line 130
    return-object v0
.end method

.method public final getPendingTokensForUser(I)Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 20
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroid/util/ArrayMap;

    .line 32
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 39
    return-object v0
.end method

.method public final getSpecialUserPersistentData(I)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    const/16 v0, -0x270f

    .line 5
    if-ne p1, v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/16 v0, -0x270e

    .line 14
    if-ne p1, v0, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRepairModePersistentDataFile()Ljava/io/File;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_1

    .line 26
    sget-object p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 32
    move-result-object p0

    .line 33
    :goto_0
    return-object p0

    .line 34
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    const-string v0, "Unknown special user id "

    .line 38
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0
.end method

.method public final getUsedWeaverSlots()Ljava/util/Set;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 5
    const-string/jumbo v2, "weaver"

    .line 8
    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordProtectorsForAllUsers(Ljava/lang/String;)Ljava/util/Map;

    .line 11
    move-result-object v1

    .line 12
    new-instance v3, Ljava/util/HashSet;

    .line 14
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 17
    new-instance v4, Ljava/util/HashMap;

    .line 19
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 22
    check-cast v1, Landroid/util/ArrayMap;

    .line 24
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 27
    move-result-object v5

    .line 28
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v5

    .line 32
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v6

    .line 36
    const/4 v7, 0x0

    .line 37
    const-string v8, "Slot conflict at slot #"

    .line 39
    if-eqz v6, :cond_3

    .line 41
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    move-result-object v9

    .line 51
    check-cast v9, Ljava/util/List;

    .line 53
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v9

    .line 57
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v10

    .line 61
    if-eqz v10, :cond_0

    .line 63
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v10

    .line 67
    check-cast v10, Ljava/lang/Long;

    .line 69
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 72
    move-result-wide v11

    .line 73
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 76
    move-result-object v13

    .line 77
    check-cast v13, Ljava/lang/Integer;

    .line 79
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 82
    move-result v13

    .line 83
    invoke-virtual {v0, v13, v11, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(IJ)I

    .line 86
    move-result v11

    .line 87
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v12

    .line 91
    invoke-virtual {v3, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 94
    move-result v12

    .line 95
    if-eqz v12, :cond_2

    .line 97
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 100
    move-result-object v12

    .line 101
    check-cast v12, Ljava/lang/Integer;

    .line 103
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 106
    move-result v12

    .line 107
    invoke-static {v12}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 110
    move-result v13

    .line 111
    if-eqz v13, :cond_2

    .line 113
    new-instance v13, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v13

    .line 125
    invoke-static {v7, v13}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v13

    .line 132
    invoke-virtual {v4, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 135
    move-result v13

    .line 136
    if-eqz v13, :cond_1

    .line 138
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    move-result-object v13

    .line 142
    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    move-result-object v13

    .line 146
    check-cast v13, Ljava/util/ArrayList;

    .line 148
    goto :goto_1

    .line 149
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    .line 151
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object v14

    .line 158
    invoke-virtual {v4, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :goto_1
    new-instance v14, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;

    .line 163
    move-object/from16 v16, v8

    .line 165
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 168
    move-result-wide v7

    .line 169
    invoke-direct {v14, v7, v8, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;-><init>(JI)V

    .line 172
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    goto :goto_2

    .line 176
    :cond_2
    move-object/from16 v16, v8

    .line 178
    :goto_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    move-result-object v7

    .line 182
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    move-object/from16 v8, v16

    .line 187
    const/4 v7, 0x0

    .line 188
    goto/16 :goto_0

    .line 190
    :cond_3
    move-object/from16 v16, v8

    .line 192
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 195
    move-result v5

    .line 196
    if-nez v5, :cond_9

    .line 198
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 201
    move-result-object v1

    .line 202
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 205
    move-result-object v1

    .line 206
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    move-result v5

    .line 210
    if-eqz v5, :cond_9

    .line 212
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    move-result-object v5

    .line 216
    check-cast v5, Ljava/util/Map$Entry;

    .line 218
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 221
    move-result-object v6

    .line 222
    check-cast v6, Ljava/lang/Integer;

    .line 224
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 227
    move-result v6

    .line 228
    invoke-static {v6}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 231
    move-result v7

    .line 232
    if-nez v7, :cond_8

    .line 234
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 237
    move-result-object v7

    .line 238
    check-cast v7, Ljava/util/List;

    .line 240
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 243
    move-result-object v7

    .line 244
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 247
    move-result v8

    .line 248
    if-eqz v8, :cond_8

    .line 250
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 253
    move-result-object v8

    .line 254
    check-cast v8, Ljava/lang/Long;

    .line 256
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 259
    move-result-wide v8

    .line 260
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 263
    move-result-object v10

    .line 264
    check-cast v10, Ljava/lang/Integer;

    .line 266
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 269
    move-result v10

    .line 270
    invoke-virtual {v0, v10, v8, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(IJ)I

    .line 273
    move-result v8

    .line 274
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    move-result-object v9

    .line 278
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 281
    move-result v9

    .line 282
    if-eqz v9, :cond_7

    .line 284
    new-instance v9, Ljava/lang/StringBuilder;

    .line 286
    move-object/from16 v10, v16

    .line 288
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    const-string v11, " with user "

    .line 296
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    move-result-object v9

    .line 306
    const/4 v11, 0x0

    .line 307
    invoke-static {v11, v9}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    move-result-object v8

    .line 314
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    move-result-object v8

    .line 318
    check-cast v8, Ljava/util/List;

    .line 320
    if-eqz v8, :cond_6

    .line 322
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 325
    move-result-object v8

    .line 326
    :cond_4
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 329
    move-result v9

    .line 330
    if-eqz v9, :cond_6

    .line 332
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 335
    move-result-object v9

    .line 336
    check-cast v9, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;

    .line 338
    iget-wide v11, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;->handle:J

    .line 340
    iget v9, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;->userId:I

    .line 342
    invoke-static {v9}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 345
    move-result v13

    .line 346
    if-eqz v13, :cond_5

    .line 348
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 351
    move-result-object v13

    .line 352
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    move-result-object v14

    .line 356
    filled-new-array {v13, v14}, [Ljava/lang/Object;

    .line 359
    move-result-object v13

    .line 360
    const-string v14, "Mitigate slot conflict on %x.weaver for virtual user %d"

    .line 362
    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 365
    move-result-object v13

    .line 366
    const/4 v14, 0x0

    .line 367
    invoke-static {v14, v13}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 373
    move-result v13

    .line 374
    const/16 v15, 0x3e8

    .line 376
    if-ne v13, v15, :cond_4

    .line 378
    invoke-virtual {v0, v9, v2, v11, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    .line 381
    goto :goto_5

    .line 382
    :cond_5
    const/4 v14, 0x0

    .line 383
    const-string v11, "Do not handle conflict for normal user "

    .line 385
    const-string v12, "SyntheticPasswordManager"

    .line 387
    invoke-static {v9, v11, v12}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 390
    goto :goto_5

    .line 391
    :cond_6
    :goto_6
    const/4 v14, 0x0

    .line 392
    goto :goto_7

    .line 393
    :cond_7
    move-object/from16 v10, v16

    .line 395
    goto :goto_6

    .line 396
    :goto_7
    move-object/from16 v16, v10

    .line 398
    goto/16 :goto_4

    .line 400
    :cond_8
    move-object/from16 v10, v16

    .line 402
    const/4 v14, 0x0

    .line 403
    move-object/from16 v16, v10

    .line 405
    goto/16 :goto_3

    .line 407
    :cond_9
    return-object v3
.end method

.method public getWeaverHidlService()Landroid/hardware/weaver/V1_0/IWeaver;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 p0, 0x1

    .line 2
    :try_start_0
    invoke-static {p0}, Landroid/hardware/weaver/V1_0/IWeaver;->getService(Z)Landroid/hardware/weaver/V1_0/IWeaver;

    .line 5
    move-result-object p0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-object p0

    .line 7
    :catch_0
    const/4 p0, 0x0

    .line 8
    return-object p0
.end method

.method public final declared-synchronized getWeaverService()Landroid/hardware/weaver/IWeaver;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/IWeaver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverServiceInternal()Landroid/hardware/weaver/IWeaver;

    .line 11
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 15
    monitor-exit p0

    .line 16
    return-object v1

    .line 17
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/hardware/weaver/IWeaver;->getConfig()Landroid/hardware/weaver/WeaverConfig;

    .line 20
    move-result-object v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    if-eqz v2, :cond_3

    .line 23
    :try_start_3
    iget v3, v2, Landroid/hardware/weaver/WeaverConfig;->slots:I

    .line 25
    if-gtz v3, :cond_2

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/IWeaver;

    .line 30
    iput-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/WeaverConfig;

    .line 32
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    .line 34
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/PasswordSlotManager;->refreshActiveSlots(Ljava/util/Set;)V

    .line 41
    const-string v1, "SyntheticPasswordManager"

    .line 43
    const-string v2, "Weaver service initialized"

    .line 45
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    monitor-exit p0

    .line 49
    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    :goto_0
    :try_start_4
    const-string v0, "SyntheticPasswordManager"

    .line 54
    const-string v2, "Invalid weaver config"

    .line 56
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    monitor-exit p0

    .line 60
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    :try_start_5
    const-string v2, "SyntheticPasswordManager"

    .line 64
    const-string v3, "Failed to get weaver config"

    .line 66
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 69
    monitor-exit p0

    .line 70
    return-object v1

    .line 71
    :goto_1
    monitor-exit p0

    .line 72
    throw v0
.end method

.method public final getWeaverServiceInternal()Landroid/hardware/weaver/IWeaver;
    .locals 7

    .line 1
    const-string v0, "SyntheticPasswordManager"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    sget-object v3, Landroid/hardware/weaver/IWeaver;->DESCRIPTOR:Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v4, "/default"

    .line 16
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 26
    move-result-object v2

    .line 27
    sget v4, Landroid/hardware/weaver/IWeaver$Stub;->$r8$clinit:I

    .line 29
    if-nez v2, :cond_0

    .line 31
    move-object v3, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_1

    .line 39
    instance-of v4, v3, Landroid/hardware/weaver/IWeaver;

    .line 41
    if-eqz v4, :cond_1

    .line 43
    check-cast v3, Landroid/hardware/weaver/IWeaver;

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v3, Landroid/hardware/weaver/IWeaver$Stub$Proxy;

    .line 48
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v4, -0x1

    .line 52
    iput v4, v3, Landroid/hardware/weaver/IWeaver$Stub$Proxy;->mCachedVersion:I

    .line 54
    iput-object v2, v3, Landroid/hardware/weaver/IWeaver$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :goto_0
    if-nez v3, :cond_2

    .line 58
    :goto_1
    move-object v3, v1

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    :try_start_1
    invoke-interface {v3}, Landroid/hardware/weaver/IWeaver;->getInterfaceVersion()I

    .line 63
    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    const/4 v4, 0x2

    .line 65
    if-ge v2, v4, :cond_3

    .line 67
    const-string v3, "Ignoring AIDL weaver service v"

    .line 69
    const-string v4, " because only v2 and later are supported"

    .line 71
    invoke-static {v2, v3, v4, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    const-string v4, "Found AIDL weaver service v"

    .line 77
    invoke-static {v2, v4, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    goto :goto_2

    .line 81
    :catch_0
    move-exception v2

    .line 82
    const-string v3, "Cannot get AIDL weaver service version"

    .line 84
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    goto :goto_1

    .line 88
    :catch_1
    const-string v2, "Does not have permissions to get AIDL weaver service"

    .line 90
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    goto :goto_1

    .line 94
    :goto_2
    if-eqz v3, :cond_4

    .line 96
    const-string v1, "Using AIDL weaver service"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :try_start_2
    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 104
    move-result-object v1

    .line 105
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;

    .line 107
    invoke-direct {v2, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    .line 110
    const/4 p0, 0x0

    .line 111
    invoke-interface {v1, v2, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 114
    goto :goto_3

    .line 115
    :catch_2
    move-exception p0

    .line 116
    const-string v1, "Unable to register Weaver death recipient"

    .line 118
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :goto_3
    return-object v3

    .line 122
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverHidlService()Landroid/hardware/weaver/V1_0/IWeaver;

    .line 125
    move-result-object v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 126
    if-eqz v2, :cond_5

    .line 128
    :try_start_4
    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverHidlDeathRecipient:Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;

    .line 130
    move-object v4, v2

    .line 131
    check-cast v4, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;

    .line 133
    const-wide/16 v5, 0x0

    .line 135
    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 138
    goto :goto_4

    .line 139
    :catch_3
    :try_start_5
    const-string v3, "Cannot register a death recipient"

    .line 141
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_4
    const-string v3, "Using HIDL weaver service"

    .line 146
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v3, Lcom/android/server/locksettings/WeaverHidlAdapter;

    .line 151
    invoke-direct {v3, v2}, Lcom/android/server/locksettings/WeaverHidlAdapter;-><init>(Landroid/hardware/weaver/V1_0/IWeaver;)V

    .line 154
    iput-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverHidlService:Lcom/android/server/locksettings/WeaverHidlAdapter;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 156
    return-object v3

    .line 157
    :catch_4
    move-exception p0

    .line 158
    const-string v2, "Failed to get HIDL weaver service."

    .line 160
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    :cond_5
    const-string p0, "Device does not support weaver"

    .line 165
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-object v1
.end method

.method public final hasEscrowData(I)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "e0"

    .line 4
    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const-string/jumbo v0, "p1"

    .line 15
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public hasPasswordData(JI)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "pwd"

    .line 4
    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public hasPasswordMetrics(JI)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "metrics"

    .line 4
    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final hasState(ILjava/lang/String;J)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    .line 10
    move-result p0

    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 13
    return p0
.end method

.method public isAutoPinConfirmationFeatureAvailable()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isAutoPinConfirmFeatureAvailable()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final loadEscrowData(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    const-wide/16 v0, 0x0

    .line 5
    const-string/jumbo v2, "e0"

    .line 8
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 11
    move-result-object v2

    .line 12
    const-string/jumbo v3, "p1"

    .line 15
    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 18
    move-result-object p0

    .line 19
    iput-object v2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEncryptedEscrowSplit0:[B

    .line 21
    iput-object p0, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEscrowSplit1:[B

    .line 23
    if-eqz v2, :cond_0

    .line 25
    if-eqz p0, :cond_0

    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method

.method public final loadWeaverSlot(IJ)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    const-string/jumbo v0, "weaver"

    .line 6
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 9
    move-result-object p0

    .line 10
    const/4 p1, -0x1

    .line 11
    if-eqz p0, :cond_2

    .line 13
    array-length v0, p0

    .line 14
    const/4 v1, 0x5

    .line 15
    if-eq v0, v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    array-length v2, p0

    .line 24
    invoke-virtual {v0, p0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 33
    move-result p0

    .line 34
    const/4 v1, 0x1

    .line 35
    if-eq p0, v1, :cond_1

    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    const-string v0, "Invalid weaver slot version for protector "

    .line 41
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    const-string p2, "SyntheticPasswordManager"

    .line 53
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return p1

    .line 57
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 60
    move-result p0

    .line 61
    return p0

    .line 62
    :cond_2
    :goto_0
    return p1
.end method

.method public final migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {v1, p3}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iget v1, p3, Landroid/content/pm/UserInfo;->id:I

    .line 19
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 21
    const-string/jumbo v3, "pwd"

    .line 24
    invoke-virtual {v2, v1, v3, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, -0x1

    .line 29
    if-nez v1, :cond_0

    .line 31
    move v1, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 36
    move-result-object v1

    .line 37
    iget v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 39
    :goto_0
    if-eq v1, v2, :cond_2

    .line 41
    const-string v1, "SyntheticPasswordManager"

    .line 43
    const-string v4, "Migrating FRP credential to persistent data block"

    .line 45
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget v1, p3, Landroid/content/pm/UserInfo;->id:I

    .line 50
    invoke-virtual {v0, v1, v3, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 57
    move-result-object v0

    .line 58
    iget v1, p3, Landroid/content/pm/UserInfo;->id:I

    .line 60
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(IJ)I

    .line 63
    move-result p1

    .line 64
    if-eq p1, v2, :cond_1

    .line 66
    iget p2, p3, Landroid/content/pm/UserInfo;->id:I

    .line 68
    invoke-virtual {p0, v0, p4, p2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iget p1, p3, Landroid/content/pm/UserInfo;->id:I

    .line 74
    invoke-virtual {p0, v0, p4, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeGatekeeperFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    .line 77
    :cond_2
    :goto_1
    return-void
.end method

.method public final migrateKeyNamespace()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    const-string/jumbo v0, "spblob"

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordProtectorsForAllUsers(Ljava/lang/String;)Ljava/util/Map;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/util/ArrayMap;

    .line 12
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 20
    const/4 v0, 0x1

    .line 21
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/List;

    .line 33
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v1

    .line 37
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/Long;

    .line 49
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 52
    const-string/jumbo v3, "synthetic_password_"

    .line 55
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    const-string v3, "%s%x"

    .line 61
    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    .line 68
    move-result v2

    .line 69
    and-int/2addr v0, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return v0
.end method

.method public final migratePwdDataForKnox(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    const-string/jumbo v1, "pwd"

    .line 6
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    array-length v2, v0

    .line 19
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 22
    move-result-object v2

    .line 23
    array-length v3, v0

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v2, v0, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 31
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 34
    move-result v0

    .line 35
    int-to-short v0, v0

    .line 36
    iput v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 38
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 41
    move-result v0

    .line 42
    iput-byte v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogN:B

    .line 44
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 47
    move-result v0

    .line 48
    iput-byte v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogR:B

    .line 50
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 53
    move-result v0

    .line 54
    iput-byte v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogP:B

    .line 56
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 59
    move-result v0

    .line 60
    new-array v0, v0, [B

    .line 62
    iput-object v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 64
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 70
    move-result v0

    .line 71
    if-lez v0, :cond_1

    .line 73
    new-array v0, v0, [B

    .line 75
    iput-object v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 77
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    .line 82
    iput-object v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 84
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 87
    move-result v0

    .line 88
    const-string v2, "SyntheticPasswordManager"

    .line 90
    if-ltz v0, :cond_2

    .line 92
    const/4 v3, 0x2

    .line 93
    if-gt v0, v3, :cond_2

    .line 95
    const/4 v3, -0x1

    .line 96
    iput v3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    .line 98
    iput v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    const-string v3, "Migration case - secureMode : "

    .line 104
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    iget v3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    invoke-static {v2, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    iput v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    .line 122
    iput v4, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    const-string v3, "Abnormal migration case - pinLength : "

    .line 128
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    iget v3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    const-string v3, ", secureMode : "

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget v3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I

    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    invoke-static {v2, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_1
    const-string/jumbo v4, "pwd"

    .line 156
    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    .line 159
    move-result-object v5

    .line 160
    move-object v3, p0

    .line 161
    move-wide v6, p2

    .line 162
    move v8, p1

    .line 163
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    .line 171
    const-string p2, "Migrated password data for user "

    .line 173
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object p0

    .line 183
    invoke-static {v2, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public final newSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;
    .locals 7

    .line 1
    const-string/jumbo v0, "handle"

    .line 4
    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    .line 9
    invoke-static {p1, v1, v2, v0}, Lcom/samsung/android/lock/SPBnRManager;->deleteBackup(IJLjava/lang/String;)Z

    .line 12
    new-instance v6, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 14
    const/4 v0, 0x3

    .line 15
    invoke-direct {v6, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;-><init>(B)V

    .line 18
    const/16 v0, 0x20

    .line 20
    invoke-static {v0}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    .line 27
    move-result-object v0

    .line 28
    filled-new-array {v1, v0}, [[B

    .line 31
    move-result-object v2

    .line 32
    sget-object v3, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    .line 34
    invoke-static {v3, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B

    .line 41
    move-result-object v2

    .line 42
    iput-object v2, v6, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    .line 44
    sget-object v3, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    .line 46
    invoke-static {v2, v3, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    .line 49
    move-result-object v2

    .line 50
    iput-object v2, v6, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEncryptedEscrowSplit0:[B

    .line 52
    iput-object v0, v6, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEscrowSplit1:[B

    .line 54
    const-wide/16 v3, 0x0

    .line 56
    const-string/jumbo v1, "e0"

    .line 59
    move-object v0, p0

    .line 60
    move v5, p1

    .line 61
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 64
    iget-object v2, v6, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEscrowSplit1:[B

    .line 66
    const-wide/16 v3, 0x0

    .line 68
    const-string/jumbo v1, "p1"

    .line 71
    move-object v0, p0

    .line 72
    move v5, p1

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 76
    return-object v6
.end method

.method public final savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;JI)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_METRICS:[B

    .line 6
    invoke-virtual {p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 9
    move-result-object p2

    .line 10
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [B

    .line 13
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    .line 16
    move-result-object p1

    .line 17
    const/16 v1, 0x2c

    .line 19
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 27
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->credType:I

    .line 29
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 32
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->length:I

    .line 34
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 37
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 39
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 44
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 47
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 49
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 54
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 57
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 59
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 62
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 64
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 67
    iget v2, p1, Landroid/app/admin/PasswordMetrics;->nonNumeric:I

    .line 69
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 72
    iget p1, p1, Landroid/app/admin/PasswordMetrics;->seqLength:I

    .line 74
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 80
    move-result-object p1

    .line 81
    invoke-static {p2, v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    .line 84
    move-result-object v3

    .line 85
    const-string/jumbo v2, "metrics"

    .line 88
    move-object v1, p0

    .line 89
    move-wide v4, p3

    .line 90
    move v6, p5

    .line 91
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 94
    return-void
.end method

.method public final saveState(Ljava/lang/String;[BJI)V
    .locals 4

    .line 1
    const-string/jumbo v0, "spblob"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x7

    .line 19
    const-string v3, "    "

    .line 21
    invoke-static {v2, v3}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "User %d Spblob save [%016x]\n%s"

    .line 31
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 40
    invoke-virtual {p0, p5}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_1

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 53
    :cond_1
    invoke-virtual {p0, p5, p1, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordStateFileForUser(ILjava/lang/String;J)Ljava/io/File;

    .line 56
    move-result-object p1

    .line 57
    const/4 p3, 0x0

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 61
    return-void
.end method

.method public scrypt([B[BIIII)[B
    .locals 7

    .line 1
    new-instance v0, Landroid/security/Scrypt;

    .line 3
    invoke-direct {v0}, Landroid/security/Scrypt;-><init>()V

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    move v6, p6

    .line 12
    invoke-virtual/range {v0 .. v6}, Landroid/security/Scrypt;->scrypt([B[BIIII)[B

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final shouldSynchronizeFrpCredential(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 13
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 16
    move-result-object p2

    .line 17
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 19
    invoke-static {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_1

    .line 25
    return v1

    .line 26
    :cond_1
    if-eqz p1, :cond_2

    .line 28
    iget p1, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 30
    const/4 p2, -0x1

    .line 31
    if-ne p1, p2, :cond_3

    .line 33
    :cond_2
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    move-result-object p0

    .line 39
    const-string/jumbo p1, "device_provisioned"

    .line 42
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_4

    .line 48
    :cond_3
    const/4 p0, 0x1

    .line 49
    return p0

    .line 50
    :cond_4
    const-string p0, "SyntheticPasswordManager"

    .line 52
    const-string p1, "Not clearing FRP credential yet because device is not yet provisioned"

    .line 54
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return v1
.end method

.method public sidFromPasswordHandle([B)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->nativeSidFromPasswordHandle([B)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public stretchLskf(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 7
    sget-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->SECURITY_UNPACK:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 15
    move-result-object v0

    .line 16
    :goto_0
    move-object v2, v0

    .line 17
    goto :goto_2

    .line 18
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    .line 20
    goto :goto_0

    .line 21
    :goto_2
    if-nez p2, :cond_2

    .line 23
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 26
    move-result p0

    .line 27
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 30
    const/16 p0, 0x20

    .line 32
    invoke-static {v2, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_2
    iget-object v3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 39
    iget-byte p1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogN:B

    .line 41
    const/4 v0, 0x1

    .line 42
    shl-int v4, v0, p1

    .line 44
    iget-byte p1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogR:B

    .line 46
    shl-int v5, v0, p1

    .line 48
    iget-byte p1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptLogP:B

    .line 50
    shl-int v6, v0, p1

    .line 52
    const/16 v7, 0x20

    .line 54
    move-object v1, p0

    .line 55
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->scrypt([B[BIIII)[B

    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public final stretchedLskfToWeaverKey([B)[B
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_WEAVER_KEY:[B

    .line 3
    filled-new-array {p1}, [[B

    .line 6
    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    .line 10
    move-result-object p1

    .line 11
    array-length v0, p1

    .line 12
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/WeaverConfig;

    .line 14
    iget p0, p0, Landroid/hardware/weaver/WeaverConfig;->keySize:I

    .line 16
    if-lt v0, p0, :cond_0

    .line 18
    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string/jumbo p1, "weaver key length too small"

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0
.end method

.method public final syncState(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->fsyncDirectory(Ljava/io/File;)V

    .line 10
    return-void
.end method

.method public final synchronizeGatekeeperFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->shouldSynchronizeFrpCredential(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "SyntheticPasswordManager"

    .line 17
    const-string v2, "Syncing Gatekeeper-based FRP credential tied to user %d"

    .line 19
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    const/4 v0, 0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz p1, :cond_1

    .line 26
    iget v2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 28
    const/4 v3, -0x1

    .line 29
    if-ne v2, v3, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v2, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    move v2, v0

    .line 35
    :goto_1
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 37
    if-nez v2, :cond_2

    .line 39
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, v0, p3, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, v1, p3, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 51
    :cond_3
    :goto_2
    return-void
.end method

.method public final synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->shouldSynchronizeFrpCredential(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p3

    .line 11
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 14
    move-result-object p3

    .line 15
    const-string v0, "SyntheticPasswordManager"

    .line 17
    const-string v1, "Syncing Weaver-based FRP credential tied to user %d"

    .line 19
    invoke-static {v0, v1, p3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    const/4 p3, 0x0

    .line 23
    if-eqz p1, :cond_1

    .line 25
    iget v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 27
    const/4 v1, -0x1

    .line 28
    if-ne v0, v1, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, p3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 34
    :goto_1
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 36
    if-nez v0, :cond_2

    .line 38
    const/4 p3, 0x2

    .line 39
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p3, p4, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p3, p3, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 51
    :cond_3
    :goto_2
    return-void
.end method

.method public final unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .locals 22

    .line 1
    move-object/from16 v9, p0

    .line 3
    move-object/from16 v10, p1

    .line 5
    move-wide/from16 v11, p2

    .line 7
    move-object/from16 v13, p4

    .line 9
    move/from16 v14, p5

    .line 11
    new-instance v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 13
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v7, 0x0

    .line 18
    cmp-long v0, v11, v7

    .line 20
    const-string v6, "SyntheticPasswordManager"

    .line 22
    if-nez v0, :cond_0

    .line 24
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v0

    .line 28
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    const-string v1, "Synthetic password not found for user %d"

    .line 34
    invoke-static {v6, v1, v0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 39
    iput-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "SP not found for user "

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->verify(Ljava/lang/String;)V

    .line 58
    return-object v15

    .line 59
    :cond_0
    iget-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 61
    const-string/jumbo v1, "pwd"

    .line 64
    invoke-virtual {v0, v14, v1, v11, v12}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 67
    move-result-object v0

    .line 68
    const/4 v5, -0x1

    .line 69
    const/4 v1, 0x0

    .line 70
    if-eqz v0, :cond_1

    .line 72
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 75
    move-result-object v0

    .line 76
    iget v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 78
    move-object v3, v0

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    move-object v3, v1

    .line 81
    move v2, v5

    .line 82
    :goto_0
    invoke-virtual {v13, v2}, Lcom/android/internal/widget/LockscreenCredential;->checkAgainstStoredType(I)Z

    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_2

    .line 88
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 95
    move-result v1

    .line 96
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 103
    move-result-object v0

    .line 104
    const-string v1, "Credential type mismatch: stored type is %s but provided type is %s"

    .line 106
    invoke-static {v6, v1, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 111
    iput-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 113
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 120
    move-result v1

    .line 121
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    const-string v3, "Credential type mismatch: stored type is "

    .line 129
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v0, " but provided type is "

    .line 137
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->verify(Ljava/lang/String;)V

    .line 150
    return-object v15

    .line 151
    :cond_2
    invoke-virtual {v9, v13, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchLskf(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    .line 154
    move-result-object v4

    .line 155
    iget-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mSdpSyntheticPasswordManager:Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;

    .line 157
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    const-string/jumbo v0, "unlockLskfBasedProtector isSdpMdfppMode ? false"

    .line 163
    invoke-static {v6, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static/range {p5 .. p5}, Lcom/samsung/android/lock/LsLog;->verifyBegin(I)V

    .line 169
    invoke-virtual {v9, v14, v11, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(IJ)I

    .line 172
    move-result v0

    .line 173
    const-wide/16 v7, -0x1

    .line 175
    const/4 v2, 0x1

    .line 176
    if-eq v0, v5, :cond_6

    .line 178
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 181
    move-result v5

    .line 182
    if-eqz v3, :cond_3

    .line 184
    iget-object v1, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 186
    :cond_3
    invoke-static {v5, v0, v11, v12, v1}, Lcom/samsung/android/lock/LsLog;->verifyUpdate(IIJ[B)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    .line 192
    move-result-object v1

    .line 193
    if-nez v1, :cond_4

    .line 195
    const-string v0, "Protector uses Weaver, but Weaver is unavailable"

    .line 197
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 202
    iput-object v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 204
    invoke-static {v2, v7, v8, v0}, Lcom/samsung/android/lock/LsLog;->verifyFinish(IJLjava/lang/String;)V

    .line 207
    return-object v15

    .line 208
    :cond_4
    invoke-static {v2, v0, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    .line 211
    invoke-virtual {v9, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchedLskfToWeaverKey([B)[B

    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v9, v1, v0, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(Landroid/hardware/weaver/IWeaver;I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 218
    move-result-object v0

    .line 219
    iput-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 221
    invoke-static/range {p5 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 224
    iget-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 226
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_5

    .line 232
    return-object v15

    .line 233
    :cond_5
    iget-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 235
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    .line 238
    move-result-object v0

    .line 239
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_WEAVER_PASSWORD:[B

    .line 241
    filled-new-array {v0}, [[B

    .line 244
    move-result-object v0

    .line 245
    invoke-static {v1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    .line 248
    move-result-object v0

    .line 249
    filled-new-array {v4, v0}, [[B

    .line 252
    move-result-object v0

    .line 253
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 256
    move-result-object v0

    .line 257
    move-object v5, v0

    .line 258
    move-object v7, v6

    .line 259
    const-wide/16 v17, 0x0

    .line 261
    goto/16 :goto_9

    .line 263
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 266
    move-result v0

    .line 267
    if-eqz v3, :cond_7

    .line 269
    iget-object v2, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 271
    goto :goto_1

    .line 272
    :cond_7
    move-object v2, v1

    .line 273
    :goto_1
    invoke-static {v0, v5, v11, v12, v2}, Lcom/samsung/android/lock/LsLog;->verifyUpdate(IIJ[B)V

    .line 276
    if-eqz v3, :cond_8

    .line 278
    iget-object v0, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 280
    if-nez v0, :cond_9

    .line 282
    :cond_8
    move-object/from16 v21, v4

    .line 284
    move-wide v2, v7

    .line 285
    const/4 v4, 0x1

    .line 286
    move-object v7, v6

    .line 287
    goto/16 :goto_7

    .line 289
    :cond_9
    invoke-static {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchedLskfToGkPassword([B)[B

    .line 292
    move-result-object v0

    .line 293
    invoke-static/range {p5 .. p5}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_a

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    .line 302
    move-result-object v2

    .line 303
    if-eqz v2, :cond_a

    .line 305
    iget-object v2, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 307
    if-nez v2, :cond_a

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    .line 311
    const-string v5, "Virtual User "

    .line 313
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    const-string v5, " may lost weaver slot."

    .line 321
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    move-result-object v2

    .line 328
    invoke-static {v1, v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v2, 0x0

    .line 332
    new-array v1, v2, [B

    .line 334
    iput-object v1, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 336
    goto :goto_2

    .line 337
    :cond_a
    const/4 v2, 0x0

    .line 338
    :goto_2
    :try_start_0
    invoke-static/range {p5 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUserId(I)I

    .line 341
    move-result v5

    .line 342
    iget-object v1, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 344
    const-wide/16 v19, 0x0

    .line 346
    move-object/from16 v16, v1

    .line 348
    move-object/from16 v1, p1

    .line 350
    move v7, v2

    .line 351
    const/4 v8, 0x1

    .line 352
    move v2, v5

    .line 353
    move-object v5, v3

    .line 354
    move-object/from16 v21, v4

    .line 356
    move-wide/from16 v3, v19

    .line 358
    move-object v8, v5

    .line 359
    move-object/from16 v5, v16

    .line 361
    move-object v7, v6

    .line 362
    move-object v6, v0

    .line 363
    :try_start_1
    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    .line 366
    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    .line 370
    move-result v2

    .line 371
    if-nez v2, :cond_d

    .line 373
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 375
    iput-object v2, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 377
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    .line 380
    move-result v1

    .line 381
    if-eqz v1, :cond_c

    .line 383
    :try_start_2
    invoke-static/range {p5 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUserId(I)I

    .line 386
    move-result v1

    .line 387
    iget-object v2, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 389
    invoke-interface {v10, v1, v2, v0, v0}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    .line 392
    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 393
    goto :goto_3

    .line 394
    :catch_0
    move-exception v0

    .line 395
    const-string v1, "Fail to invoke gatekeeper.enroll"

    .line 397
    invoke-static {v7, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    sget-object v0, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    .line 402
    :goto_3
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    .line 405
    move-result v1

    .line 406
    if-nez v1, :cond_b

    .line 408
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    .line 411
    move-result-object v0

    .line 412
    iput-object v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 414
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 417
    move-result v0

    .line 418
    iput v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 420
    const-string/jumbo v2, "pwd"

    .line 423
    invoke-virtual {v8}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    .line 426
    move-result-object v3

    .line 427
    move-object/from16 v1, p0

    .line 429
    move-wide/from16 v4, p2

    .line 431
    move/from16 v6, p5

    .line 433
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 436
    invoke-virtual {v9, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    .line 439
    const/4 v1, 0x0

    .line 440
    invoke-virtual {v9, v8, v1, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeGatekeeperFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    .line 443
    goto :goto_4

    .line 444
    :cond_b
    const-string v0, "Fail to re-enroll user password for user "

    .line 446
    invoke-static {v14, v0, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_c
    :goto_4
    iget-object v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 451
    invoke-virtual {v9, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    .line 454
    move-result-wide v0

    .line 455
    goto :goto_8

    .line 456
    :cond_d
    const/4 v3, 0x1

    .line 457
    if-ne v2, v3, :cond_e

    .line 459
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    .line 462
    move-result v0

    .line 463
    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 466
    move-result-object v0

    .line 467
    iput-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 469
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    .line 472
    move-result v0

    .line 473
    int-to-long v0, v0

    .line 474
    const-string/jumbo v2, "gatekeeper THROTTLE"

    .line 477
    const/4 v3, 0x3

    .line 478
    invoke-static {v3, v0, v1, v2}, Lcom/samsung/android/lock/LsLog;->verifyFinish(IJLjava/lang/String;)V

    .line 481
    return-object v15

    .line 482
    :cond_e
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 484
    iput-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 486
    const/4 v0, -0x1

    .line 487
    if-ne v2, v0, :cond_f

    .line 489
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    .line 492
    move-result v0

    .line 493
    int-to-long v0, v0

    .line 494
    const-string/jumbo v2, "gatekeeper INCORRECT_KEY"

    .line 497
    const/4 v3, 0x2

    .line 498
    invoke-static {v3, v0, v1, v2}, Lcom/samsung/android/lock/LsLog;->verifyFinish(IJLjava/lang/String;)V

    .line 501
    goto :goto_5

    .line 502
    :cond_f
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    .line 505
    move-result v0

    .line 506
    int-to-long v0, v0

    .line 507
    const-string/jumbo v3, "gatekeeper FAILED"

    .line 510
    invoke-static {v2, v0, v1, v3}, Lcom/samsung/android/lock/LsLog;->verifyFinish(IJLjava/lang/String;)V

    .line 513
    :goto_5
    return-object v15

    .line 514
    :catch_1
    move-exception v0

    .line 515
    goto :goto_6

    .line 516
    :catch_2
    move-exception v0

    .line 517
    move-object v7, v6

    .line 518
    :goto_6
    const-string/jumbo v1, "gatekeeper verify failed"

    .line 521
    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 526
    iput-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 528
    const-wide/16 v2, -0x1

    .line 530
    const/4 v4, 0x1

    .line 531
    invoke-static {v4, v2, v3, v1}, Lcom/samsung/android/lock/LsLog;->verifyFinish(IJLjava/lang/String;)V

    .line 534
    return-object v15

    .line 535
    :goto_7
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 538
    move-result v0

    .line 539
    if-nez v0, :cond_10

    .line 541
    const-string v0, "Missing Gatekeeper password handle for nonempty LSKF"

    .line 543
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 548
    iput-object v1, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 550
    invoke-static {v4, v2, v3, v0}, Lcom/samsung/android/lock/LsLog;->verifyFinish(IJLjava/lang/String;)V

    .line 553
    return-object v15

    .line 554
    :cond_10
    const-wide/16 v0, 0x0

    .line 556
    :goto_8
    iget-object v2, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 558
    const-string/jumbo v3, "secdis"

    .line 561
    invoke-virtual {v2, v14, v3, v11, v12}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 564
    move-result-object v2

    .line 565
    if-nez v2, :cond_11

    .line 567
    const-string/jumbo v0, "secdiscardable file not found"

    .line 570
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 575
    iput-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 577
    return-object v15

    .line 578
    :cond_11
    move-object/from16 v3, v21

    .line 580
    invoke-static {v3, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    .line 583
    move-result-object v2

    .line 584
    move-wide/from16 v17, v0

    .line 586
    move-object v5, v2

    .line 587
    :goto_9
    const-string/jumbo v0, "verify success!"

    .line 590
    const-wide/16 v1, 0x0

    .line 592
    const/4 v3, 0x0

    .line 593
    invoke-static {v3, v1, v2, v0}, Lcom/samsung/android/lock/LsLog;->verifyFinish(IJLjava/lang/String;)V

    .line 596
    if-eqz p6, :cond_12

    .line 598
    :try_start_3
    invoke-interface/range {p6 .. p6}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 601
    goto :goto_a

    .line 602
    :catch_3
    move-exception v0

    .line 603
    move-object v1, v0

    .line 604
    const-string/jumbo v0, "progressCallback throws exception"

    .line 607
    invoke-static {v7, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    :cond_12
    :goto_a
    const/4 v4, 0x0

    .line 611
    move-object/from16 v1, p0

    .line 613
    move-wide/from16 v2, p2

    .line 615
    move-wide/from16 v6, v17

    .line 617
    move/from16 v8, p5

    .line 619
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 622
    move-result-object v0

    .line 623
    iput-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 625
    invoke-virtual {v9, v10, v0, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 628
    move-result-object v0

    .line 629
    iput-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 631
    iget-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 633
    if-eqz v0, :cond_13

    .line 635
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 638
    move-result v0

    .line 639
    if-nez v0, :cond_13

    .line 641
    invoke-virtual {v9, v11, v12, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasPasswordMetrics(JI)Z

    .line 644
    move-result v0

    .line 645
    if-nez v0, :cond_13

    .line 647
    iget-object v3, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 649
    move-object/from16 v1, p0

    .line 651
    move-object/from16 v2, p4

    .line 653
    move-wide/from16 v4, p2

    .line 655
    move/from16 v6, p5

    .line 657
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;JI)V

    .line 660
    invoke-virtual {v9, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    .line 663
    :cond_13
    return-object v15
.end method

.method public final unlockTokenBasedProtector(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    const-string/jumbo v1, "spblob"

    .line 6
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 12
    new-instance p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object p4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 19
    iput-object p4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 21
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    move-result-object p2

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object p1

    .line 29
    filled-new-array {p2, p1}, [Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    const-string p2, "SyntheticPasswordManager"

    .line 35
    const-string/jumbo p3, "spblob not found for protector %016x, user %d"

    .line 38
    invoke-static {p2, p3, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-object p0

    .line 42
    :cond_0
    sget-boolean v1, Lcom/android/server/locksettings/SyntheticPasswordManager;->SECURITY_UNPACK:Z

    .line 44
    if-eqz v1, :cond_1

    .line 46
    sget-object p5, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_TOKEN:[B

    .line 48
    :cond_1
    move-object v6, p5

    .line 49
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    .line 52
    move-result-object p5

    .line 53
    iget-byte v5, p5, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    .line 55
    move-object v1, p0

    .line 56
    move-object v2, p4

    .line 57
    move-wide v3, p2

    .line 58
    move v7, p1

    .line 59
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtectorInternal(Landroid/service/gatekeeper/IGateKeeperService;JB[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method public final unlockTokenBasedProtectorInternal(Landroid/service/gatekeeper/IGateKeeperService;JB[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .locals 11

    .line 1
    move-object v8, p0

    .line 2
    move-wide v1, p2

    .line 3
    move/from16 v9, p6

    .line 5
    new-instance v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 7
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 10
    iget-object v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 12
    const-string/jumbo v3, "secdis"

    .line 15
    invoke-virtual {v0, v9, v3, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 18
    move-result-object v0

    .line 19
    const-string v3, "SyntheticPasswordManager"

    .line 21
    if-nez v0, :cond_0

    .line 23
    const-string/jumbo v0, "secdiscardable file not found"

    .line 26
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 31
    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 33
    return-object v10

    .line 34
    :cond_0
    invoke-virtual {p0, v9, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(IJ)I

    .line 37
    move-result v4

    .line 38
    const/4 v5, -0x1

    .line 39
    if-eq v4, v5, :cond_4

    .line 41
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    .line 44
    move-result-object v5

    .line 45
    if-nez v5, :cond_1

    .line 47
    const-string v0, "Protector uses Weaver, but Weaver is unavailable"

    .line 49
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 54
    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 56
    return-object v10

    .line 57
    :cond_1
    const/4 v6, 0x1

    .line 58
    invoke-static {v6, v4, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    .line 61
    const/4 v6, 0x0

    .line 62
    invoke-virtual {p0, v5, v4, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(Landroid/hardware/weaver/IWeaver;I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 65
    move-result-object v4

    .line 66
    invoke-static/range {p6 .. p6}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 69
    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_3

    .line 75
    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    .line 78
    move-result-object v5

    .line 79
    if-nez v5, :cond_2

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    .line 85
    move-result-object v3

    .line 86
    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_WEAVER_TOKEN:[B

    .line 88
    invoke-static {v3, v4, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    .line 91
    move-result-object v0

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    :goto_0
    const-string v0, "Failed to retrieve Weaver secret when unlocking token-based protector"

    .line 95
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 100
    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 102
    return-object v10

    .line 103
    :cond_4
    :goto_1
    iget-object v3, v8, Lcom/android/server/locksettings/SyntheticPasswordManager;->mSdpSyntheticPasswordManager:Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;

    .line 105
    invoke-static {v3, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->-$$Nest$mgetSecureMode(Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;I)I

    .line 108
    move-object/from16 v3, p5

    .line 110
    invoke-static {v3, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    .line 113
    move-result-object v4

    .line 114
    const-wide/16 v5, 0x0

    .line 116
    move-object v0, p0

    .line 117
    move-wide v1, p2

    .line 118
    move v3, p4

    .line 119
    move/from16 v7, p6

    .line 121
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 124
    move-result-object v0

    .line 125
    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 127
    if-eqz v0, :cond_5

    .line 129
    move-object v1, p1

    .line 130
    invoke-virtual {p0, p1, v0, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 133
    move-result-object v0

    .line 134
    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 136
    if-nez v0, :cond_6

    .line 138
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 140
    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 142
    goto :goto_2

    .line 143
    :cond_5
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 145
    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 147
    :cond_6
    :goto_2
    return-object v10
.end method

.method public final unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v6, p4

    .line 4
    move/from16 v10, p7

    .line 6
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 8
    const-string/jumbo v2, "spblob"

    .line 11
    move-wide v3, p1

    .line 12
    invoke-virtual {v1, v10, v2, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    move-result-object v0

    .line 23
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v1

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "Fail to load spblob for protector %016x for user %d"

    .line 33
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->verify(Ljava/lang/String;)V

    .line 40
    return-object v2

    .line 41
    :cond_0
    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    .line 44
    move-result-object v1

    .line 45
    iget-byte v5, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    .line 47
    const/4 v7, 0x3

    .line 48
    const/4 v8, 0x2

    .line 49
    const/4 v9, 0x1

    .line 50
    if-eq v5, v7, :cond_2

    .line 52
    if-eq v5, v8, :cond_2

    .line 54
    if-ne v5, v9, :cond_1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    const-string v3, "Unknown blob version: "

    .line 63
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iget-byte v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    throw v0

    .line 79
    :cond_2
    :goto_0
    iget-byte v7, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    .line 81
    move/from16 v11, p3

    .line 83
    if-ne v7, v11, :cond_a

    .line 85
    if-ne v5, v9, :cond_4

    .line 87
    invoke-static {p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getProtectorKeyAlias(J)Ljava/lang/String;

    .line 90
    move-result-object v5

    .line 91
    iget-object v7, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mContent:[B

    .line 93
    const-string v11, "SP protector key is missing: "

    .line 95
    :try_start_0
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->getKeyStore()Ljava/security/KeyStore;

    .line 98
    move-result-object v12

    .line 99
    invoke-virtual {v12, v5, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 102
    move-result-object v12

    .line 103
    check-cast v12, Ljavax/crypto/SecretKey;

    .line 105
    if-eqz v12, :cond_3

    .line 107
    sget-object v5, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->PROTECTOR_SECRET_PERSONALIZATION:[B

    .line 109
    invoke-static {v6, v5, v7}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    .line 112
    move-result-object v5

    .line 113
    invoke-static {v5, v12}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([BLjavax/crypto/SecretKey;)[B

    .line 116
    move-result-object v5

    .line 117
    goto :goto_2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v1

    .line 134
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_1
    const-string v1, "SyntheticPasswordCrypto"

    .line 140
    const-string v2, "Failed to decrypt V1 blob"

    .line 142
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 147
    const-string v2, "Failed to decrypt blob"

    .line 149
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    throw v1

    .line 153
    :cond_4
    invoke-static {p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getProtectorKeyAlias(J)Ljava/lang/String;

    .line 156
    move-result-object v5

    .line 157
    iget-object v7, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mContent:[B

    .line 159
    invoke-virtual {p0, v5, v7, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->decryptSpBlob(Ljava/lang/String;[B[B)[B

    .line 162
    move-result-object v5

    .line 163
    :goto_2
    const-string v7, "SyntheticPasswordManager"

    .line 165
    if-nez v5, :cond_5

    .line 167
    const-string v0, "Fail to decrypt SP for user "

    .line 169
    invoke-static {v10, v0, v7}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 172
    return-object v2

    .line 173
    :cond_5
    new-instance v11, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 175
    iget-byte v12, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    .line 177
    invoke-direct {v11, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;-><init>(B)V

    .line 180
    iget-byte v12, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    .line 182
    if-eq v12, v9, :cond_7

    .line 184
    if-ne v12, v8, :cond_6

    .line 186
    goto :goto_3

    .line 187
    :cond_6
    array-length v2, v5

    .line 188
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 191
    move-result-object v2

    .line 192
    iput-object v2, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    .line 194
    goto :goto_4

    .line 195
    :cond_7
    :goto_3
    invoke-virtual {p0, v10, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    .line 198
    move-result v8

    .line 199
    if-nez v8, :cond_8

    .line 201
    const-string v0, "User is not escrowable: "

    .line 203
    invoke-static {v10, v0, v7}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    return-object v2

    .line 207
    :cond_8
    iget-object v2, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEscrowSplit1:[B

    .line 209
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v2, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEncryptedEscrowSplit0:[B

    .line 214
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v2, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mEscrowSplit1:[B

    .line 219
    filled-new-array {v5, v2}, [[B

    .line 222
    move-result-object v2

    .line 223
    sget-object v5, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    .line 225
    invoke-static {v5, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    .line 228
    move-result-object v2

    .line 229
    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B

    .line 232
    move-result-object v2

    .line 233
    iput-object v2, v11, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    .line 235
    :goto_4
    iget-byte v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    .line 237
    if-ne v2, v9, :cond_9

    .line 239
    const-string v2, "Upgrading v1 SP blob for user "

    .line 241
    const-string v5, ", protectorType = "

    .line 243
    invoke-static {v10, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    move-result-object v2

    .line 247
    iget-byte v5, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    .line 249
    invoke-static {v2, v5, v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 252
    iget-byte v5, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    .line 254
    move-object v1, p0

    .line 255
    move-wide v2, p1

    .line 256
    move v4, v5

    .line 257
    move-object v5, v11

    .line 258
    move-object/from16 v6, p4

    .line 260
    move-wide/from16 v7, p5

    .line 262
    move/from16 v9, p7

    .line 264
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;[BJI)V

    .line 267
    invoke-virtual {p0, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    .line 270
    :cond_9
    return-object v11

    .line 271
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    .line 275
    const-string v3, "Invalid protector type: "

    .line 277
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    iget-byte v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    .line 282
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    move-result-object v1

    .line 289
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 292
    throw v0
.end method

.method public final verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 6
    invoke-virtual {p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 9
    move-result-object v6

    .line 10
    const-wide/16 v3, 0x0

    .line 12
    move-object v1, p0

    .line 13
    move v2, p3

    .line 14
    move-object v5, p1

    .line 15
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final verifyChallengeInternal(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 12

    .line 1
    move v7, p1

    .line 2
    const-string v8, "SyntheticPasswordManager"

    .line 4
    const-string/jumbo v0, "handle"

    .line 7
    move-object v9, p0

    .line 8
    iget-object v1, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 10
    const-wide/16 v2, 0x0

    .line 12
    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 19
    return-object v0

    .line 20
    :cond_0
    move-object/from16 v1, p4

    .line 22
    move v2, p1

    .line 23
    move-wide v3, p2

    .line 24
    move-object v5, v0

    .line 25
    move-object/from16 v6, p5

    .line 27
    :try_start_0
    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    .line 30
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_3

    .line 37
    new-instance v2, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    .line 39
    invoke-direct {v2}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    .line 42
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperHAT([B)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 60
    move-object/from16 v10, p4

    .line 62
    move-object/from16 v11, p5

    .line 64
    :try_start_1
    invoke-interface {v10, p1, v0, v0, v11}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    .line 67
    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    move-object v1, v0

    .line 71
    const-string v0, "Failed to invoke gatekeeper.enroll"

    .line 73
    invoke-static {v8, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    sget-object v0, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    .line 78
    :goto_0
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_1

    .line 84
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    .line 87
    move-result-object v3

    .line 88
    const-string/jumbo v2, "handle"

    .line 91
    const-wide/16 v4, 0x0

    .line 93
    move-object v1, p0

    .line 94
    move v6, p1

    .line 95
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    .line 101
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 104
    move-result-object v0

    .line 105
    return-object v0

    .line 106
    :cond_1
    const-string v0, "Fail to re-enroll SP handle for user "

    .line 108
    invoke-static {p1, v0, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_2
    return-object v2

    .line 112
    :cond_3
    const/4 v0, 0x1

    .line 113
    if-ne v2, v0, :cond_4

    .line 115
    const-string v0, "Gatekeeper verification of synthetic password failed with RESPONSE_RETRY"

    .line 117
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    .line 123
    move-result v0

    .line 124
    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 127
    move-result-object v0

    .line 128
    return-object v0

    .line 129
    :cond_4
    const-string v0, "Gatekeeper verification of synthetic password failed with RESPONSE_ERROR"

    .line 131
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 136
    return-object v0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    move-object v1, v0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    const-string v2, "Fail to verify with gatekeeper "

    .line 143
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    invoke-static {v8, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 158
    return-object v0
.end method

.method public final verifySpecialUserCredential(ILandroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSpecialUserPersistentData(I)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SyntheticPasswordManager"

    .line 7
    iget v2, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 9
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    .line 11
    iget v0, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne v0, v4, :cond_0

    .line 16
    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchLskf(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    .line 23
    move-result-object p0

    .line 24
    :try_start_0
    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUserId(I)I

    .line 27
    move-result v4

    .line 28
    iget-object v7, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 30
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchedLskfToGkPassword([B)[B

    .line 33
    move-result-object v8

    .line 34
    const-wide/16 v5, 0x0

    .line 36
    move-object v3, p2

    .line 37
    invoke-interface/range {v3 .. v8}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    .line 40
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    const-string p1, "Persistent data credential verifyChallenge failed"

    .line 49
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 54
    return-object p0

    .line 55
    :cond_0
    const/4 p2, 0x2

    .line 56
    if-ne v0, p2, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    .line 61
    move-result-object p2

    .line 62
    if-nez p2, :cond_1

    .line 64
    const-string p0, "No weaver service to verify SP-based persistent data credential"

    .line 66
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 71
    return-object p0

    .line 72
    :cond_1
    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0, p3, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchLskf(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    .line 79
    move-result-object p3

    .line 80
    :try_start_1
    invoke-static {v4, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    .line 83
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->stretchedLskfToWeaverKey([B)[B

    .line 86
    move-result-object p3

    .line 87
    invoke-virtual {p0, p2, v2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(Landroid/hardware/weaver/IWeaver;I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 94
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 98
    return-object p0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 103
    throw p0

    .line 104
    :cond_2
    const-string/jumbo p0, "persistentData.type must be TYPE_SP_GATEKEEPER or TYPE_SP_WEAVER, but is "

    .line 107
    invoke-static {v0, p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 112
    return-object p0
.end method

.method public final weaverEnroll(Landroid/hardware/weaver/IWeaver;I[B[B)[B
    .locals 4

    .line 1
    const-string v0, "SyntheticPasswordManager"

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p2, v1, :cond_3

    .line 7
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/WeaverConfig;

    .line 9
    iget v1, p0, Landroid/hardware/weaver/WeaverConfig;->slots:I

    .line 11
    if-ge p2, v1, :cond_3

    .line 13
    if-nez p3, :cond_0

    .line 15
    iget p3, p0, Landroid/hardware/weaver/WeaverConfig;->keySize:I

    .line 17
    new-array p3, p3, [B

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    array-length v1, p3

    .line 21
    iget v3, p0, Landroid/hardware/weaver/WeaverConfig;->keySize:I

    .line 23
    if-ne v1, v3, :cond_2

    .line 25
    :goto_0
    if-nez p4, :cond_1

    .line 27
    iget p0, p0, Landroid/hardware/weaver/WeaverConfig;->valueSize:I

    .line 29
    invoke-static {p0}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    .line 32
    move-result-object p4

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/hardware/weaver/IWeaver;->write(I[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-object p4

    .line 38
    :catch_0
    move-exception p1

    .line 39
    new-instance p3, Ljava/lang/StringBuilder;

    .line 41
    const-string/jumbo p4, "weaver write failed, slot: "

    .line 44
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p3

    .line 54
    invoke-static {v0, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    const-string/jumbo p1, "weaver write failed with ServiceSpecificException"

    .line 60
    invoke-static {p2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 63
    const-string/jumbo p1, "weaver write failed"

    .line 66
    invoke-static {v2, p1}, Lcom/samsung/android/lock/LsLog;->enrollFinish(ILjava/lang/String;)V

    .line 69
    return-object p0

    .line 70
    :catch_1
    move-exception p1

    .line 71
    new-instance p3, Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo p4, "weaver write binder call failed, slot: "

    .line 76
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p3

    .line 86
    invoke-static {v0, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    const-string/jumbo p1, "weaver write binder call failed with RemoveException"

    .line 92
    invoke-static {p2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 95
    const-string/jumbo p1, "weaver write binder call failed"

    .line 98
    invoke-static {v2, p1}, Lcom/samsung/android/lock/LsLog;->enrollFinish(ILjava/lang/String;)V

    .line 101
    return-object p0

    .line 102
    :cond_2
    const-string p0, "Invalid key size for weaver"

    .line 104
    invoke-static {p2, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 107
    invoke-static {v2, p0}, Lcom/samsung/android/lock/LsLog;->enrollFinish(ILjava/lang/String;)V

    .line 110
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 112
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    throw p1

    .line 116
    :cond_3
    const-string p0, "Invalid slot for weaver"

    .line 118
    invoke-static {p2, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 121
    invoke-static {v2, p0}, Lcom/samsung/android/lock/LsLog;->enrollFinish(ILjava/lang/String;)V

    .line 124
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 126
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p1
.end method

.method public final weaverVerify(Landroid/hardware/weaver/IWeaver;I[B)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    const-wide/16 v2, -0x1

    .line 5
    if-eq p2, v0, :cond_c

    .line 7
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/WeaverConfig;

    .line 9
    iget v0, p0, Landroid/hardware/weaver/WeaverConfig;->slots:I

    .line 11
    if-ge p2, v0, :cond_c

    .line 13
    if-nez p3, :cond_0

    .line 15
    iget p0, p0, Landroid/hardware/weaver/WeaverConfig;->keySize:I

    .line 17
    new-array p3, p0, [B

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    array-length v0, p3

    .line 21
    iget p0, p0, Landroid/hardware/weaver/WeaverConfig;->keySize:I

    .line 23
    if-ne v0, p0, :cond_b

    .line 25
    :goto_0
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/hardware/weaver/IWeaver;->read(I[B)Landroid/hardware/weaver/WeaverReadResponse;

    .line 28
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    iget p1, p0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    .line 31
    sget-object p3, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mWeaverResults:Landroid/util/SparseArray;

    .line 33
    monitor-enter p3

    .line 34
    :try_start_1
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->getBySlotIdLocked(I)Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;

    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 40
    iput p1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->mStatus:I

    .line 42
    :cond_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    iget p1, p0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    .line 45
    if-eqz p1, :cond_a

    .line 47
    if-eq p1, v1, :cond_9

    .line 49
    const/4 p3, 0x2

    .line 50
    const v0, 0x7fffffff

    .line 53
    const-wide/32 v4, 0x7fffffff

    .line 56
    const-wide/16 v6, 0x0

    .line 58
    if-eq p1, p3, :cond_5

    .line 60
    const/4 p3, 0x3

    .line 61
    if-eq p1, p3, :cond_2

    .line 63
    const-string p1, "SyntheticPasswordManager"

    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo v0, "weaver read unknown status "

    .line 70
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v0, ", slot: "

    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget p0, p0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    .line 95
    const-string/jumbo p1, "weaver read unknown status"

    .line 98
    invoke-static {p0, v2, v3, p1}, Lcom/samsung/android/lock/LsLog;->verifyFinish(IJLjava/lang/String;)V

    .line 101
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 103
    return-object p0

    .line 104
    :cond_2
    const-string p1, "SyntheticPasswordManager"

    .line 106
    const-string/jumbo p3, "weaver read failed (THROTTLE), slot: "

    .line 109
    invoke-static {p2, p3, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    iget p1, p0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    .line 114
    iget-wide p2, p0, Landroid/hardware/weaver/WeaverReadResponse;->timeout:J

    .line 116
    const-string/jumbo v1, "weaver THROTTLE"

    .line 119
    invoke-static {p1, p2, p3, v1}, Lcom/samsung/android/lock/LsLog;->verifyFinish(IJLjava/lang/String;)V

    .line 122
    iget-wide p0, p0, Landroid/hardware/weaver/WeaverReadResponse;->timeout:J

    .line 124
    cmp-long p2, p0, v4

    .line 126
    if-gtz p2, :cond_4

    .line 128
    cmp-long p2, p0, v6

    .line 130
    if-gez p2, :cond_3

    .line 132
    goto :goto_1

    .line 133
    :cond_3
    long-to-int v0, p0

    .line 134
    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :cond_5
    iget-wide v1, p0, Landroid/hardware/weaver/WeaverReadResponse;->timeout:J

    .line 141
    cmp-long p1, v1, v6

    .line 143
    if-nez p1, :cond_6

    .line 145
    const-string p1, "SyntheticPasswordManager"

    .line 147
    const-string/jumbo p3, "weaver read failed (INCORRECT_KEY), slot: "

    .line 150
    invoke-static {p2, p3, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    iget p1, p0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    .line 155
    iget-wide p2, p0, Landroid/hardware/weaver/WeaverReadResponse;->timeout:J

    .line 157
    const-string/jumbo p0, "weaver INCORRECT_KEY"

    .line 160
    invoke-static {p1, p2, p3, p0}, Lcom/samsung/android/lock/LsLog;->verifyFinish(IJLjava/lang/String;)V

    .line 163
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 165
    return-object p0

    .line 166
    :cond_6
    const-string p1, "SyntheticPasswordManager"

    .line 168
    const-string/jumbo p3, "weaver read failed (INCORRECT_KEY/THROTTLE), slot: "

    .line 171
    invoke-static {p2, p3, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    iget p1, p0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    .line 176
    iget-wide p2, p0, Landroid/hardware/weaver/WeaverReadResponse;->timeout:J

    .line 178
    const-string/jumbo v1, "weaver INCORRECT_KEY/THROTTLE"

    .line 181
    invoke-static {p1, p2, p3, v1}, Lcom/samsung/android/lock/LsLog;->verifyFinish(IJLjava/lang/String;)V

    .line 184
    iget-wide p0, p0, Landroid/hardware/weaver/WeaverReadResponse;->timeout:J

    .line 186
    cmp-long p2, p0, v4

    .line 188
    if-gtz p2, :cond_8

    .line 190
    cmp-long p2, p0, v6

    .line 192
    if-gez p2, :cond_7

    .line 194
    goto :goto_2

    .line 195
    :cond_7
    long-to-int v0, p0

    .line 196
    :cond_8
    :goto_2
    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 199
    move-result-object p0

    .line 200
    return-object p0

    .line 201
    :cond_9
    const-string p1, "SyntheticPasswordManager"

    .line 203
    const-string/jumbo p3, "weaver read failed (FAILED), slot: "

    .line 206
    invoke-static {p2, p3, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 209
    iget p0, p0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    .line 211
    const-string/jumbo p1, "weaver FAILED"

    .line 214
    invoke-static {p0, v2, v3, p1}, Lcom/samsung/android/lock/LsLog;->verifyFinish(IJLjava/lang/String;)V

    .line 217
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 219
    return-object p0

    .line 220
    :cond_a
    new-instance p1, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    .line 222
    invoke-direct {p1}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    .line 225
    iget-object p0, p0, Landroid/hardware/weaver/WeaverReadResponse;->value:[B

    .line 227
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperHAT([B)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    .line 230
    move-result-object p0

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 234
    move-result-object p0

    .line 235
    return-object p0

    .line 236
    :catchall_0
    move-exception p0

    .line 237
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    throw p0

    .line 239
    :catch_0
    move-exception p0

    .line 240
    const-string p1, "SyntheticPasswordManager"

    .line 242
    new-instance p3, Ljava/lang/StringBuilder;

    .line 244
    const-string/jumbo v0, "weaver read failed, slot: "

    .line 247
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object p3

    .line 257
    invoke-static {p1, p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    new-instance p0, Ljava/lang/StringBuilder;

    .line 262
    const-string/jumbo p1, "weaver read failed, slot: "

    .line 265
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object p0

    .line 275
    invoke-static {v1, v2, v3, p0}, Lcom/samsung/android/lock/LsLog;->verifyFinish(IJLjava/lang/String;)V

    .line 278
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 280
    return-object p0

    .line 281
    :cond_b
    const-string p0, "Invalid key size for weaver"

    .line 283
    invoke-static {p2, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 286
    new-instance p0, Ljava/lang/StringBuilder;

    .line 288
    const-string p1, "Invalid key size for weaver "

    .line 290
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    array-length p1, p3

    .line 294
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object p0

    .line 301
    invoke-static {v1, v2, v3, p0}, Lcom/samsung/android/lock/LsLog;->verifyFinish(IJLjava/lang/String;)V

    .line 304
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 306
    const-string p1, "Invalid key size for weaver"

    .line 308
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 311
    throw p0

    .line 312
    :cond_c
    const-string p0, "Invalid slot for weaver"

    .line 314
    invoke-static {p2, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 317
    const-string p0, "Invalid slot for weaver"

    .line 319
    invoke-static {v1, v2, v3, p0}, Lcom/samsung/android/lock/LsLog;->verifyFinish(IJLjava/lang/String;)V

    .line 322
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 324
    const-string p1, "Invalid slot for weaver"

    .line 326
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 329
    throw p0
.end method

.method public final writeRepairModeCredentialLocked(IJ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 9
    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->canUserEnterRepairMode(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "SyntheticPasswordManager"

    .line 16
    if-nez v0, :cond_0

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p0

    .line 22
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    const-string p1, "User %d can\'t enter repair mode"

    .line 28
    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeActive(Landroid/content/Context;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 40
    const-string p0, "Can\'t write repair mode credential while repair mode is already active"

    .line 42
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isGsiRunning()Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 52
    const-string p0, "Can\'t write repair mode credential while GSI is running"

    .line 54
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    return v1

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 60
    const-string/jumbo v3, "pwd"

    .line 63
    invoke-virtual {v0, p1, v3, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 66
    move-result-object v3

    .line 67
    if-nez v3, :cond_3

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object p0

    .line 73
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 76
    move-result-object p0

    .line 77
    const-string p1, "Password data not found for user %d"

    .line 79
    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return v1

    .line 83
    :cond_3
    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 86
    move-result-object v3

    .line 87
    iget v4, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 89
    const/4 v5, -0x1

    .line 90
    if-ne v4, v5, :cond_4

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object p0

    .line 96
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 99
    move-result-object p0

    .line 100
    const-string p1, "User %d has NONE credential"

    .line 102
    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return v1

    .line 106
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v4

    .line 110
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 113
    move-result-object v4

    .line 114
    const-string v6, "Writing repair mode credential tied to user %d"

    .line 116
    invoke-static {v2, v6, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(IJ)I

    .line 122
    move-result p0

    .line 123
    const/4 p2, 0x1

    .line 124
    if-eq p0, v5, :cond_5

    .line 126
    invoke-virtual {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRepairModePersistentDataFile()Ljava/io/File;

    .line 133
    move-result-object p3

    .line 134
    const/4 v2, 0x2

    .line 135
    invoke-static {v2, p0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->toBytes(III[B)[B

    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {v0, p3, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 142
    goto :goto_1

    .line 143
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRepairModePersistentDataFile()Ljava/io/File;

    .line 150
    move-result-object p3

    .line 151
    invoke-static {p2, p1, v1, p0}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->toBytes(III[B)[B

    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {v0, p3, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 158
    :goto_1
    return p2
.end method
