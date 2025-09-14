.class public final Lcom/android/server/enterprise/general/MiscPolicy;
.super Lcom/samsung/android/knox/IMiscPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final FORMAT:Ljava/text/SimpleDateFormat;

.field public static mPackageManager:Landroid/content/pm/PackageManager;


# instance fields
.field public credentialsFailsCount:I

.field public credentialsFailsState:I

.field public mAdminsBlockingNfcStateChange:Ljava/util/ArrayList;

.field public mCon:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mFontSizes:[F

.field public final mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field public final mStartNFCHistoryList:Ljava/util/ArrayList;

.field public mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 7
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsCount:I

    .line 14
    iput v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsState:I

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    .line 23
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 25
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 32
    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 34
    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Landroid/content/Context;)V

    .line 37
    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 46
    move-result-object p1

    .line 47
    sput-object p1, Lcom/android/server/enterprise/general/MiscPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 49
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V

    .line 56
    return-void
.end method

.method public static supportBigFont(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "com.sec.feature.folder_type"

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 17
    move-result-object p0

    .line 18
    const-string v0, "CountryISO"

    .line 20
    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    const-string v0, "CN"

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 32
    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "elite"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_0

    .line 43
    const/4 p0, 0x1

    .line 44
    return p0

    .line 45
    :cond_0
    const/4 p0, 0x0

    .line 46
    return p0
.end method

.method public static validateProxyProperties(Lcom/samsung/android/knox/net/ProxyProperties;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->isValid()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v0, :cond_11

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    .line 27
    move-result p0

    .line 28
    if-ltz p0, :cond_10

    .line 30
    const v3, 0xffff

    .line 33
    if-gt p0, v3, :cond_10

    .line 35
    if-eqz v0, :cond_1

    .line 37
    sget-object p0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    .line 39
    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 46
    move-result p0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move p0, v1

    .line 49
    :goto_0
    if-nez p0, :cond_12

    .line 51
    if-nez v0, :cond_3

    .line 53
    :cond_2
    :goto_1
    move p0, v1

    .line 54
    goto/16 :goto_6

    .line 56
    :cond_3
    const-string p0, "*"

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_5

    .line 64
    :cond_4
    move p0, v2

    .line 65
    goto/16 :goto_6

    .line 67
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 70
    move-result p0

    .line 71
    const/16 v3, 0xff

    .line 73
    if-le p0, v3, :cond_6

    .line 75
    goto :goto_1

    .line 76
    :cond_6
    const-string p0, "\\."

    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    move v3, v1

    .line 83
    :goto_2
    aget-object v4, p0, v1

    .line 85
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 88
    move-result v4

    .line 89
    if-ge v3, v4, :cond_2

    .line 91
    aget-object v4, p0, v1

    .line 93
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 96
    move-result v4

    .line 97
    const/16 v5, 0x61

    .line 99
    if-lt v4, v5, :cond_7

    .line 101
    const/16 v5, 0x7a

    .line 103
    if-le v4, v5, :cond_8

    .line 105
    :cond_7
    const/16 v5, 0x41

    .line 107
    if-lt v4, v5, :cond_f

    .line 109
    const/16 v5, 0x5a

    .line 111
    if-gt v4, v5, :cond_f

    .line 113
    :cond_8
    move v3, v1

    .line 114
    move v4, v3

    .line 115
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 118
    move-result v5

    .line 119
    if-ge v3, v5, :cond_a

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 124
    move-result v5

    .line 125
    const/16 v6, 0x2e

    .line 127
    if-ne v5, v6, :cond_9

    .line 129
    add-int/lit8 v4, v4, 0x1

    .line 131
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 133
    goto :goto_3

    .line 134
    :cond_a
    array-length v0, p0

    .line 135
    if-lt v4, v0, :cond_b

    .line 137
    goto :goto_1

    .line 138
    :cond_b
    array-length v0, p0

    .line 139
    move v3, v1

    .line 140
    :goto_4
    if-ge v3, v0, :cond_d

    .line 142
    aget-object v4, p0, v3

    .line 144
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 147
    move-result v4

    .line 148
    const/16 v5, 0x3f

    .line 150
    if-le v4, v5, :cond_c

    .line 152
    goto :goto_1

    .line 153
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 155
    goto :goto_4

    .line 156
    :cond_d
    array-length v0, p0

    .line 157
    move v3, v1

    .line 158
    :goto_5
    if-ge v3, v0, :cond_4

    .line 160
    aget-object v4, p0, v3

    .line 162
    const-string v5, "^[A-Za-z0-9-]+$"

    .line 164
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_2

    .line 170
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 173
    move-result v5

    .line 174
    const/16 v6, 0x2d

    .line 176
    if-eq v5, v6, :cond_2

    .line 178
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 181
    move-result v5

    .line 182
    sub-int/2addr v5, v2

    .line 183
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 186
    move-result v4

    .line 187
    if-ne v4, v6, :cond_e

    .line 189
    goto/16 :goto_1

    .line 191
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 193
    goto :goto_5

    .line 194
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 196
    goto :goto_2

    .line 197
    :goto_6
    if-nez p0, :cond_12

    .line 199
    :cond_10
    return v1

    .line 200
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    .line 203
    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_13

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    .line 213
    move-result-object p0

    .line 214
    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 217
    move-result p0

    .line 218
    if-nez p0, :cond_12

    .line 220
    goto :goto_7

    .line 221
    :cond_12
    return v2

    .line 222
    :cond_13
    :goto_7
    return v1
.end method


# virtual methods
.method public final allowNFCStateChange(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM$15()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 27
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 29
    const-string v1, "MISC"

    .line 31
    const-string/jumbo v5, "nfcStateChangeAllowed"

    .line 34
    const/4 v4, 0x0

    .line 35
    move v3, p2

    .line 36
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 39
    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->updateAdminsBlockingNfcStateChange()V

    .line 43
    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 48
    move-result-wide v1

    .line 49
    :try_start_0
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 51
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 54
    move-result p0

    .line 55
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object p1

    .line 61
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    move-result-object p2

    .line 65
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 68
    move-result-object p1

    .line 69
    const/16 p2, 0x47

    .line 71
    invoke-static {p0, p2, p1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    throw p0

    .line 83
    :cond_0
    :goto_0
    return v0
.end method

.method public final changeLockScreenString(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 10
    move-result v9

    .line 11
    iget-object v2, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 13
    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    const-string v4, "android"

    .line 17
    const/4 v10, 0x0

    .line 18
    invoke-static {v2, v4, v10, v3}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 21
    move-result-object v2

    .line 22
    const-string v11, "MiscPolicy"

    .line 24
    if-nez v2, :cond_0

    .line 26
    const-string v0, "Could not create context for current user!"

    .line 28
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return v10

    .line 32
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 35
    move-result-wide v12

    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    move-result-object v14

    .line 40
    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    .line 43
    move-result v2

    .line 44
    const/4 v3, -0x1

    .line 45
    if-eq v2, v3, :cond_1

    .line 47
    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 49
    if-eq v2, v3, :cond_1

    .line 51
    const-string/jumbo v0, "changeLockScreenString():get AdminId failed!! "

    .line 54
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    return v10

    .line 61
    :cond_1
    const/4 v2, 0x1

    .line 62
    if-eqz p2, :cond_3

    .line 64
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 67
    move-result v3

    .line 68
    if-gez v3, :cond_2

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move-object/from16 v3, p2

    .line 73
    move v4, v10

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    :goto_0
    const-string v3, ""

    .line 77
    move v4, v2

    .line 78
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 81
    move-result v5

    .line 82
    const/16 v6, 0x100

    .line 84
    if-le v5, v6, :cond_4

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-virtual {v3, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v3, "..."

    .line 100
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v3

    .line 107
    const-string/jumbo v5, "changeLockScreenString():lock screen text is truncated "

    .line 110
    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_4
    move-object v15, v3

    .line 114
    const-string v8, "Couldn\'t write string "

    .line 116
    const-string/jumbo v3, "lock_screen_owner_info"

    .line 119
    if-nez v4, :cond_6

    .line 121
    const-string/jumbo v4, "changeLockScreenString(): apply restriction"

    .line 124
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v4, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 129
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 131
    const/16 v18, 0x0

    .line 133
    const-string v20, "MISC"

    .line 135
    const-string/jumbo v21, "lockscreenstring"

    .line 138
    const/16 v19, 0x1

    .line 140
    move-object/from16 v16, v4

    .line 142
    move/from16 v17, v5

    .line 144
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 147
    move-result v16

    .line 148
    if-eqz v16, :cond_5

    .line 150
    const-string/jumbo v4, "changeLockScreenString(): ret is true set value"

    .line 153
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings$1()Lcom/android/internal/widget/ILockSettings;

    .line 159
    move-result-object v4

    .line 160
    const-string/jumbo v5, "lock_screen_owner_info_enabled"

    .line 163
    invoke-interface {v4, v5, v2, v9}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings$1()Lcom/android/internal/widget/ILockSettings;

    .line 169
    move-result-object v0

    .line 170
    invoke-interface {v0, v3, v15, v9}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 176
    move-result v5

    .line 177
    const-string v6, "MiscPolicy"

    .line 179
    const-string v0, "Admin %d has changed lock screen string to %s"

    .line 181
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    move-result-object v1

    .line 187
    filled-new-array {v1, v15}, [Ljava/lang/Object;

    .line 190
    move-result-object v1

    .line 191
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 194
    move-result-object v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    const/4 v2, 0x5

    .line 196
    const/4 v3, 0x1

    .line 197
    const/4 v4, 0x1

    .line 198
    move-object v1, v8

    .line 199
    move v8, v9

    .line 200
    :try_start_1
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    goto :goto_3

    .line 204
    :catch_0
    move-exception v0

    .line 205
    goto :goto_2

    .line 206
    :catch_1
    move-exception v0

    .line 207
    move-object v1, v8

    .line 208
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 210
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_3
    const-string/jumbo v0, "my_profile_enabled"

    .line 229
    invoke-static {v14, v0, v10, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 232
    :cond_5
    :goto_4
    move/from16 v0, v16

    .line 234
    goto :goto_5

    .line 235
    :cond_6
    move-object v10, v8

    .line 236
    const-string/jumbo v2, "changeLockScreenString(): revoke restriction"

    .line 239
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v2, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 244
    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 246
    const/16 v18, 0x0

    .line 248
    const-string v20, "MISC"

    .line 250
    const-string/jumbo v21, "lockscreenstring"

    .line 253
    const/16 v19, 0x0

    .line 255
    move-object/from16 v16, v2

    .line 257
    move/from16 v17, v4

    .line 259
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 262
    move-result v16

    .line 263
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings$1()Lcom/android/internal/widget/ILockSettings;

    .line 266
    move-result-object v0

    .line 267
    invoke-interface {v0, v3, v15, v9}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 270
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 273
    move-result v5

    .line 274
    const-string v6, "MiscPolicy"

    .line 276
    const-string v0, "Admin %d has cleared the lock screen string."

    .line 278
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 280
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    move-result-object v1

    .line 284
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 287
    move-result-object v1

    .line 288
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 291
    move-result-object v7

    .line 292
    const/4 v2, 0x5

    .line 293
    const/4 v3, 0x1

    .line 294
    const/4 v4, 0x1

    .line 295
    move v8, v9

    .line 296
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 299
    goto :goto_4

    .line 300
    :catch_2
    move-exception v0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    .line 303
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    move-result-object v0

    .line 316
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    goto :goto_4

    .line 320
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 322
    const-string/jumbo v2, "changeLockScreenString():ret:"

    .line 325
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 331
    const-string v2, " "

    .line 333
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object v1

    .line 343
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 349
    return v0
.end method

.method public final declared-synchronized clearAllGlobalProxy()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/16 v1, 0x3e8

    .line 8
    if-eq v0, v1, :cond_0

    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    .line 14
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 17
    const-string/jumbo v1, "globalProxy"

    .line 20
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 25
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    .line 27
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 29
    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v2, "RESTRICTION"

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit p0

    .line 42
    throw v0
.end method

.method public final declared-synchronized clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    const/4 v6, 0x0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 5
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 9
    const-string v3, "RESTRICTION"

    .line 11
    const-string/jumbo v4, "globalProxy"

    .line 14
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 17
    move-result v0
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-nez v0, :cond_0

    .line 20
    monitor-exit p0

    .line 21
    return v6

    .line 22
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    .line 24
    if-nez v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 28
    const-string/jumbo v1, "connectivity"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 37
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    .line 41
    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 45
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 47
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 49
    const-string v1, "RESTRICTION"

    .line 51
    const-string/jumbo v5, "globalProxy"

    .line 54
    move v3, v6

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 58
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 60
    const-string v0, "GlobalProxyAuthTable"

    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 66
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    const-string v0, "GlobalProxyTable"

    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 73
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 75
    invoke-virtual {p1, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V

    .line 78
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 80
    invoke-virtual {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    .line 83
    const-string p1, ""

    .line 85
    invoke-static {p1, v6}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    .line 88
    move-result-object p1

    .line 89
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 92
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    .line 95
    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    monitor-exit p0

    .line 102
    const/4 p0, 0x1

    .line 103
    return p0

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    goto :goto_0

    .line 106
    :catchall_1
    move-exception p1

    .line 107
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    :cond_2
    monitor-exit p0

    .line 112
    return v6

    .line 113
    :catch_0
    :try_start_5
    const-string p1, "MiscPolicy"

    .line 115
    const-string/jumbo v0, "clearGlobalProxyEnable.SettingNotFoundException"

    .line 118
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    monitor-exit p0

    .line 122
    return v6

    .line 123
    :goto_0
    monitor-exit p0

    .line 124
    throw p1
.end method

.method public final clearGlobalProxyEnableEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final clearGlobalProxyEnableEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final clearNotificationDialog()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isCalledFromProxyHandler(I)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    const-string v2, "Clear notification dialog"

    .line 27
    const-string v3, "LocalProxyManager"

    .line 29
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 34
    if-eqz v2, :cond_1

    .line 36
    new-instance v2, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;

    .line 38
    const/4 v3, 0x7

    .line 39
    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    .line 42
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string p0, "NotificationManager is null"

    .line 48
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p1, "  mStartNFCHistoryList.size="

    .line 3
    iget-object p3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 5
    const-string v0, "android.permission.DUMP"

    .line 7
    invoke-virtual {p3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 10
    move-result p3

    .line 11
    if-eqz p3, :cond_0

    .line 13
    const-string p0, "Permission Denial: can\'t dump KioskModeService"

    .line 15
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    .line 21
    monitor-enter p3

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    const/4 p1, 0x0

    .line 44
    :goto_0
    if-ge p1, v0, :cond_1

    .line 46
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/String;

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string v3, "    ["

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v3, "] "

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    add-int/lit8 p1, p1, 0x1

    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto/16 :goto_2

    .line 88
    :cond_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 97
    move-result-object p1

    .line 98
    const-string p3, "PAC file url: "

    .line 100
    const-string v0, "Port: "

    .line 102
    const-string v1, "Host: "

    .line 104
    if-eqz p1, :cond_2

    .line 106
    const-string v2, "\nEnforced GlobalProxy:"

    .line 108
    invoke-static {p2, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    .line 134
    move-result v3

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    const-string p1, "\n"

    .line 166
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 172
    move-result-object p1

    .line 173
    if-eqz p1, :cond_3

    .line 175
    const-string v2, "Enforced WifiProxy:"

    .line 177
    invoke-static {p2, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    .line 203
    move-result v0

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    .line 216
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    const-string p1, "\n\n"

    .line 235
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    :cond_3
    sget-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 240
    if-eqz p1, :cond_4

    .line 242
    sget-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 244
    check-cast p1, Landroid/util/ArrayMap;

    .line 246
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 249
    move-result p1

    .line 250
    if-nez p1, :cond_4

    .line 252
    sget-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 254
    new-instance p3, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda10;

    .line 256
    invoke-direct {p3, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda10;-><init>(Ljava/io/PrintWriter;)V

    .line 259
    check-cast p1, Landroid/util/ArrayMap;

    .line 261
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 264
    :cond_4
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mAdminsBlockingNfcStateChange:Ljava/util/ArrayList;

    .line 266
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 269
    move-result p1

    .line 270
    if-eqz p1, :cond_5

    .line 272
    const-string p0, "  No admin blocking NFC State change"

    .line 274
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    goto :goto_1

    .line 278
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 280
    const-string p3, "  NFC State change blocked by admin UID : "

    .line 282
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mAdminsBlockingNfcStateChange:Ljava/util/ArrayList;

    .line 287
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object p0

    .line 294
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    :goto_1
    return-void

    .line 298
    :goto_2
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    throw p0
.end method

.method public final enforceMDMAppCaller()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_SET_PROXY_CREDENTIAL_INTERNAL"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 15
    const-string v0, "Caller does not have required permission."

    .line 17
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0
.end method

.method public final enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM$15()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM$15()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

    .line 10
    const-string v2, "android.permission.NETWORK_STACK"

    .line 12
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM$15()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final floatToIndex(F)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 6
    const/4 v1, 0x1

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 10
    array-length v4, v3

    .line 11
    if-ge v2, v4, :cond_1

    .line 13
    aget v3, v3, v2

    .line 15
    sub-float v4, v3, v0

    .line 17
    const/high16 v5, 0x3f000000    # 0.5f

    .line 19
    mul-float/2addr v4, v5

    .line 20
    add-float/2addr v4, v0

    .line 21
    cmpg-float v0, p1, v4

    .line 23
    if-gez v0, :cond_0

    .line 25
    sub-int/2addr v2, v1

    .line 26
    return v2

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    move v0, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    array-length p0, v3

    .line 32
    sub-int/2addr p0, v1

    .line 33
    const-string/jumbo p1, "floatToIndex(): "

    .line 36
    const-string v0, "MiscPolicy"

    .line 38
    invoke-static {p0, p1, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    return p0
.end method

.method public final getAppUidBrowserList()Ljava/util/List;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isCalledFromProxyHandler(I)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v3, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;

    .line 33
    const/4 v4, 0x1

    .line 34
    invoke-direct {v3, p0, v2, v4}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/util/List;I)V

    .line 37
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    return-object v2

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    throw p0
.end method

.method public final getAppUidFromSocketPortNumber(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isCalledFromProxyHandler(I)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 23
    const-string v2, "/proc/net/tcp"

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-static {p1, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getAppUidFromTcpFile(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    if-nez p0, :cond_1

    .line 34
    const-string p0, "/proc/net/tcp6"

    .line 36
    invoke-static {p1, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getAppUidFromTcpFile(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    throw p0
.end method

.method public final getAuthConfigFromDb()Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string/jumbo v1, "host"

    .line 9
    const-string/jumbo v2, "port"

    .line 12
    const-string/jumbo v3, "username"

    .line 15
    const-string/jumbo v4, "password"

    .line 18
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 21
    move-result-object v5

    .line 22
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 24
    const-string v6, "GlobalProxyAuthTable"

    .line 26
    const/4 v7, 0x0

    .line 27
    invoke-virtual {p0, v6, v5, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p0

    .line 37
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_0

    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Landroid/content/ContentValues;

    .line 49
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v5

    .line 65
    new-instance v9, Lcom/samsung/android/knox/net/AuthConfig;

    .line 67
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 70
    move-result v7

    .line 71
    invoke-direct {v9, v6, v7, v8, v5}, Lcom/samsung/android/knox/net/AuthConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    return-object v0
.end method

.method public final getCredentialsFails(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceMDMAppCaller()V

    .line 4
    const-string/jumbo v0, "credentials_fails_count"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsCount:I

    .line 15
    return p0

    .line 16
    :cond_0
    iget p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsState:I

    .line 18
    return p0
.end method

.method public final getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "Couldn\'t get string lock_screen_owner_info"

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x3e8

    .line 13
    if-eq v1, v2, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 18
    move-result-object p1

    .line 19
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    .line 26
    move-result v1

    .line 27
    const-string/jumbo v2, "getCurrentLockScreenString : currentSetAdminId="

    .line 30
    const-string v3, "MiscPolicy"

    .line 32
    invoke-static {v1, v2, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v2, -0x1

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eq v1, v2, :cond_1

    .line 39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 42
    move-result-wide v1

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings$1()Lcom/android/internal/widget/ILockSettings;

    .line 46
    move-result-object p0

    .line 47
    const-string/jumbo v5, "lock_screen_owner_info"

    .line 50
    invoke-interface {p0, v5, v4, p1}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 53
    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception p0

    .line 61
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    goto :goto_0

    .line 77
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    throw p0

    .line 81
    :cond_1
    :goto_2
    return-object v4
.end method

.method public final getEDM$15()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    return-object p0
.end method

.method public final declared-synchronized getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 10
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getAuthConfigFromDb()Ljava/util/List;

    .line 18
    move-result-object v1

    .line 19
    const-string/jumbo v2, "host"

    .line 22
    const-string/jumbo v3, "port"

    .line 25
    const-string/jumbo v4, "pacfile"

    .line 28
    const-string/jumbo v5, "exclusion"

    .line 31
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    const-string v4, "GlobalProxyTable"

    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v2

    .line 50
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_8

    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Landroid/content/ContentValues;

    .line 62
    const-string/jumbo v4, "host"

    .line 65
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 69
    const-string/jumbo v5, "port"

    .line 72
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 75
    move-result-object v5

    .line 76
    if-nez v5, :cond_2

    .line 78
    const/4 v5, -0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 83
    move-result v5

    .line 84
    :goto_1
    const-string/jumbo v6, "exclusion"

    .line 87
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v6

    .line 91
    const-string/jumbo v7, "pacfile"

    .line 94
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_3

    .line 104
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    move-result v7

    .line 108
    if-nez v7, :cond_1

    .line 110
    goto :goto_2

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    goto :goto_4

    .line 113
    :cond_3
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    move-result v7

    .line 117
    if-nez v7, :cond_4

    .line 119
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 122
    move-result-object v6

    .line 123
    invoke-static {v6}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    .line 126
    move-result-object v6

    .line 127
    goto :goto_3

    .line 128
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    .line 130
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    move-result v8

    .line 137
    if-nez v8, :cond_5

    .line 139
    const-string v7, ","

    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 144
    move-result-object v6

    .line 145
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 148
    move-result-object v7

    .line 149
    :cond_5
    invoke-static {v4, v5, v7}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    .line 152
    move-result-object v6

    .line 153
    :goto_3
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->isValid()Z

    .line 156
    move-result v7

    .line 157
    if-eqz v7, :cond_7

    .line 159
    new-instance v0, Lcom/samsung/android/knox/net/ProxyProperties;

    .line 161
    invoke-direct {v0}, Lcom/samsung/android/knox/net/ProxyProperties;-><init>()V

    .line 164
    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/net/ProxyProperties;->setHostname(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/net/ProxyProperties;->setPortNumber(I)V

    .line 170
    move-object v4, v1

    .line 171
    check-cast v4, Ljava/util/ArrayList;

    .line 173
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 176
    move-result v4

    .line 177
    if-nez v4, :cond_6

    .line 179
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/net/ProxyProperties;->setAuthConfigList(Ljava/util/List;)V

    .line 182
    :cond_6
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    .line 185
    move-result-object v4

    .line 186
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/net/ProxyProperties;->setExclusionList(Ljava/util/List;)V

    .line 193
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/net/ProxyProperties;->setPacFileUrl(Ljava/lang/String;)V

    .line 196
    goto/16 :goto_0

    .line 198
    :cond_7
    const-string v3, "MiscPolicy"

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    .line 202
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    const-string v5, "Invalid proxy properties, ignoring: "

    .line 207
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    .line 213
    move-result-object v5

    .line 214
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v4

    .line 221
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    goto/16 :goto_0

    .line 226
    :cond_8
    monitor-exit p0

    .line 227
    return-object v0

    .line 228
    :goto_4
    monitor-exit p0

    .line 229
    throw v0
.end method

.method public final getGlobalProxyEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    const-string v0, ""

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v2, ":"

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    .line 98
    move-result-object p0

    .line 99
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object p0

    .line 103
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_1

    .line 109
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    return-object p1

    .line 120
    :cond_2
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    .line 122
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    return-object p0
.end method

.method public final getGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM$15()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    :try_start_0
    new-instance p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;-><init>()V

    .line 29
    const-string p1, "SimChangeTime"

    .line 31
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    const-string v0, "-1"

    .line 37
    if-nez p1, :cond_0

    .line 39
    move-object p1, v0

    .line 40
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 43
    move-result-wide v1

    .line 44
    iput-wide v1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeTime:J

    .line 46
    new-instance p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 48
    invoke-direct {p1}, Lcom/samsung/android/knox/deviceinfo/SimInfo;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 53
    const-string v1, "PreviousSimCountryIso"

    .line 55
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->countryIso:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 63
    const-string v1, "PreviousSimOperatorName"

    .line 65
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    iput-object v1, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operatorName:Ljava/lang/String;

    .line 71
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 73
    const-string v1, "PreviousSimOperator"

    .line 75
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    iput-object v1, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operator:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 83
    const-string v1, "PreviousSimPhoneNumber"

    .line 85
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    iput-object v1, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 91
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 93
    const-string v1, "PreviousSimSerialNumber"

    .line 95
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    iput-object v1, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->serialNumber:Ljava/lang/String;

    .line 101
    const-string p1, "SimChangeOperation"

    .line 103
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    if-nez p1, :cond_1

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    move-object v0, p1

    .line 111
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 114
    move-result p1

    .line 115
    iput p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeOperation:I

    .line 117
    new-instance p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 119
    invoke-direct {p1}, Lcom/samsung/android/knox/deviceinfo/SimInfo;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 124
    const-string v0, "CurrentSimCountryIso"

    .line 126
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    iput-object v0, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->countryIso:Ljava/lang/String;

    .line 132
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 134
    const-string v0, "CurrentSimOperatorName"

    .line 136
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    iput-object v0, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operatorName:Ljava/lang/String;

    .line 142
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 144
    const-string v0, "CurrentSimOperator"

    .line 146
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    iput-object v0, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operator:Ljava/lang/String;

    .line 152
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 154
    const-string v0, "CurrentSimPhoneNumber"

    .line 156
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 160
    iput-object v0, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 162
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 164
    const-string v0, "CurrentSimSerialNumber"

    .line 166
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    iput-object v0, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->serialNumber:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    return-object p0

    .line 173
    :catch_0
    move-exception p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    new-instance p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;-><init>()V

    .line 182
    return-object p0
.end method

.method public final getLockSettings$1()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string/jumbo v0, "lock_settings"

    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 20
    return-object p0
.end method

.method public final getProxyForSsid(Ljava/lang/String;)Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 22
    check-cast p0, Landroid/util/ArrayMap;

    .line 24
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/samsung/android/knox/net/ProxyProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    throw p0
.end method

.method public final getSystemActiveFont(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 3
    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 7
    invoke-direct {p1, p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;)V

    .line 10
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const-string/jumbo p1, "getSystemActiveFont():getting active system font:"

    .line 20
    const-string v0, "MiscPolicy"

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    move-result-wide v1

    .line 29
    const/4 p1, 0x0

    .line 30
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    .line 32
    iget-object v3, v3, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 34
    const-string/jumbo v4, "com.android.settings"

    .line 37
    const/4 v5, 0x2

    .line 38
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 41
    move-result-object v3

    .line 42
    const-string/jumbo v4, "prefs"

    .line 45
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 55
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 57
    new-instance v5, Ljava/io/FileInputStream;

    .line 59
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 62
    const/16 v3, 0x4000

    .line 64
    invoke-direct {v4, v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    :try_start_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    .line 70
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    move-object p1, v4

    .line 74
    goto :goto_3

    .line 75
    :catch_0
    move-exception v3

    .line 76
    goto :goto_1

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    goto :goto_3

    .line 79
    :catch_1
    move-exception v3

    .line 80
    move-object v4, p1

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    move-object v3, p1

    .line 83
    move-object v4, v3

    .line 84
    :goto_0
    if-eqz v4, :cond_2

    .line 86
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 89
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 92
    goto :goto_2

    .line 93
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    if-eqz v4, :cond_3

    .line 98
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 101
    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 104
    :catch_2
    move-object v3, p1

    .line 105
    :catch_3
    :goto_2
    const/4 v1, 0x0

    .line 106
    if-eqz v3, :cond_4

    .line 108
    const-string v2, "SavedClickedItem"

    .line 110
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Ljava/lang/Integer;

    .line 116
    if-eqz v2, :cond_4

    .line 118
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 121
    move-result v1

    .line 122
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo v3, "getActiveFontPosition():"

    .line 127
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v2

    .line 137
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string/jumbo v2, "getSystemFonts():getting all system fonts"

    .line 143
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    .line 149
    move-result-object p0

    .line 150
    if-eqz p0, :cond_5

    .line 152
    aget-object p1, p0, v1

    .line 154
    :cond_5
    return-object p1

    .line 155
    :goto_3
    if-eqz p1, :cond_6

    .line 157
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V

    .line 160
    :cond_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 163
    :catch_4
    throw p0
.end method

.method public final getSystemActiveFontSize(Lcom/samsung/android/knox/ContextInfo;)F
    .locals 5

    .line 1
    const-string p1, "MiscPolicy"

    .line 3
    const-string/jumbo v0, "getSystemActiveFontSize() : resized font index value. "

    .line 6
    new-instance v1, Landroid/content/res/Configuration;

    .line 8
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 11
    const/4 v2, 0x0

    .line 12
    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 14
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 25
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 28
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 30
    if-eqz v2, :cond_1

    .line 32
    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 34
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/general/MiscPolicy;->floatToIndex(F)I

    .line 37
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    move-result-object v2

    .line 43
    const-string/jumbo v3, "font_size"

    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 50
    move-result v2

    .line 51
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 53
    array-length v3, v3

    .line 54
    if-lt v2, v3, :cond_0

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, " -> "

    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 71
    array-length v0, v0

    .line 72
    add-int/lit8 v0, v0, -0x1

    .line 74
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 86
    array-length v0, v0

    .line 87
    add-int/lit8 v2, v0, -0x1

    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 94
    aget p0, p0, v2

    .line 96
    iput p0, v1, Landroid/content/res/Configuration;->fontScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_2

    .line 99
    :goto_1
    const-string/jumbo v0, "getSystemActiveFontSize(): Unable to read font size"

    .line 102
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :cond_1
    :goto_2
    iget p0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 107
    return p0
.end method

.method public final getSystemFontSizes(Lcom/samsung/android/knox/ContextInfo;)[F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 4
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 6
    return-object p0
.end method

.method public final getSystemFonts(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 3
    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 7
    invoke-direct {p1, p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;)V

    .line 10
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const-string p1, "MiscPolicy"

    .line 19
    const-string/jumbo v0, "getSystemFonts():getting all system fonts"

    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final isAdminLockScreenStringSet(I)I
    .locals 5

    .line 1
    const-string/jumbo v0, "lockscreenstring"

    .line 4
    const-string v1, "adminUid"

    .line 6
    :try_start_0
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 12
    const-string v3, "MISC"

    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {p0, v4, p1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/content/ContentValues;

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x1

    .line 48
    if-ne v2, v3, :cond_0

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 57
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    long-to-int p0, p0

    .line 59
    return p0

    .line 60
    :catch_0
    :cond_1
    const/4 p0, -0x1

    .line 61
    return p0
.end method

.method public final isCalledFromProxyHandler(I)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    aget-object v3, p1, v2

    .line 14
    const-string/jumbo v4, "com.android.proxyhandler"

    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 23
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 32
    move-result-object v3

    .line 33
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    const/4 v4, 0x1

    .line 36
    and-int/2addr v3, v4

    .line 37
    if-eqz v3, :cond_0

    .line 39
    const-string p0, "MiscPolicy"

    .line 41
    const-string p1, "Allowing Proxy Handler access"

    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return v4

    .line 47
    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return v1
.end method

.method public final isGlobalProxyAllowed()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v0, "RESTRICTION"

    .line 5
    const-string/jumbo v1, "globalProxy"

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    return v2

    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    return p0
.end method

.method public final isNFCStarted()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    :try_start_1
    const-string p0, "MiscPolicy"

    .line 23
    const-string v2, "Error on isNFCStarted"

    .line 25
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0

    .line 33
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    throw p0
.end method

.method public final isNFCStateChangeAllowed()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v0, "MISC"

    .line 5
    const-string/jumbo v1, "nfcStateChangeAllowed"

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0
.end method

.method public final isRingToneEntryExist(Landroid/net/Uri;Ljava/lang/String;)J
    .locals 15

    .line 1
    const-string v1, "MiscPolicy"

    .line 3
    const-string/jumbo v0, "isRingToneEntryExist : whereClause :"

    .line 6
    const-string v2, "_data=\'"

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    move-result-wide v3

    .line 12
    const-wide/16 v5, -0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    move-object/from16 v2, p2

    .line 22
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, "\'"

    .line 27
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v12

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    move-object v0, p0

    .line 50
    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    move-result-object v9

    .line 56
    const-string v0, "_id"

    .line 58
    filled-new-array {v0}, [Ljava/lang/String;

    .line 61
    move-result-object v11

    .line 62
    const/4 v13, 0x0

    .line 63
    const/4 v14, 0x0

    .line 64
    move-object/from16 v10, p1

    .line 66
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 69
    move-result-object v7

    .line 70
    if-eqz v7, :cond_0

    .line 72
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 75
    move-result v0

    .line 76
    if-lez v0, :cond_0

    .line 78
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 85
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto :goto_4

    .line 89
    :catch_0
    move-exception v0

    .line 90
    goto :goto_2

    .line 91
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 93
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    goto :goto_3

    .line 100
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    if-eqz v7, :cond_1

    .line 105
    goto :goto_1

    .line 106
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v2, "isRingToneEntryExist : return "

    .line 111
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-wide v5

    .line 125
    :goto_4
    if-eqz v7, :cond_2

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    throw v0
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 7
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 10
    move-result p1

    .line 11
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 14
    move-result v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->updateSystemUIMonitor$2(I)V

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->updateAdminsBlockingNfcStateChange()V

    .line 23
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    .line 8
    move-result v0

    .line 9
    if-ne v0, p1, :cond_0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings$1()Lcom/android/internal/widget/ILockSettings;

    .line 14
    move-result-object v0

    .line 15
    const-string/jumbo v1, "lock_screen_owner_info"

    .line 18
    const-string v2, ""

    .line 20
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 23
    move-result v3

    .line 24
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v1, "Couldn\'t write string "

    .line 31
    const-string v2, "MiscPolicy"

    .line 33
    invoke-static {v1, v0, v2}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 36
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 42
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I

    .line 51
    :cond_1
    return-void
.end method

.method public final refreshCredentialsDialogFails()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    const/16 v3, 0x3e8

    .line 11
    if-eq v2, v3, :cond_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    const-string v2, "LocalProxyManager"

    .line 24
    const-string v3, "Refresh proxy credentials dialog"

    .line 26
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 31
    if-nez v2, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v2, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;

    .line 36
    const/4 v3, 0x5

    .line 37
    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    .line 40
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    throw p0
.end method

.method public final retrieveExternalProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v0, v1, :cond_0

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isCalledFromProxyHandler(I)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    return-object v2

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 33
    move-result-object v3

    .line 34
    const-string v4, "LocalProxyManager"

    .line 36
    if-eqz v3, :cond_1

    .line 38
    const-string p0, "Get current applied global proxy"

    .line 40
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    move-object v2, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    if-eqz p0, :cond_2

    .line 47
    const-string v2, "Get current applied default proxy"

    .line 49
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    move-object v2, p0

    .line 53
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    return-object v2

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    throw p0
.end method

.method public final retrieveProxyCredentials(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isCalledFromProxyHandler(I)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getProxyCredentials(ILjava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    throw p0
.end method

.method public final retrieveSystemFontSizes()V
    .locals 7

    .line 1
    const-string/jumbo v0, "com.android.settings"

    .line 4
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 6
    if-eqz v1, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    const-string v1, "MiscPolicy"

    .line 11
    const-string/jumbo v2, "retrieveSystemFontSizes(): start to retrieve system font sizes."

    .line 14
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    move-result-wide v2

    .line 21
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 23
    const/4 v5, 0x2

    .line 24
    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 27
    move-result-object v4

    .line 28
    if-nez v4, :cond_1

    .line 30
    const-string/jumbo p0, "retrieveSystemFontSizes(): failed because Setting Context is null"

    .line 33
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_5

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_3

    .line 44
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v5

    .line 48
    invoke-static {v4}, Lcom/android/server/enterprise/general/MiscPolicy;->supportBigFont(Landroid/content/Context;)Z

    .line 51
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    const-string v6, "array"

    .line 54
    if-eqz v4, :cond_2

    .line 56
    :try_start_2
    const-string/jumbo v4, "sec_entryvalues_big_font_size"

    .line 59
    invoke-virtual {v5, v4, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    move-result v0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const-string/jumbo v4, "sec_entryvalues_8_step_font_size"

    .line 67
    invoke-virtual {v5, v4, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    move-result v0

    .line 71
    :goto_0
    if-nez v0, :cond_3

    .line 73
    const-string/jumbo p0, "retrieveSystemFontSizes() : failed to get resource ID. "

    .line 76
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    return-void

    .line 83
    :cond_3
    :try_start_3
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    array-length v4, v0

    .line 88
    new-array v4, v4, [F

    .line 90
    iput-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 92
    const/4 v4, 0x0

    .line 93
    :goto_1
    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 95
    array-length v6, v5

    .line 96
    if-ge v4, v6, :cond_4

    .line 98
    aget-object v6, v0, v4

    .line 100
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 103
    move-result v6

    .line 104
    aput v6, v5, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    add-int/lit8 v4, v4, 0x1

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    goto :goto_4

    .line 113
    :goto_3
    :try_start_4
    const-string/jumbo v0, "retrieveSystemFontSizes() failed: unexpected exception. "

    .line 116
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    goto :goto_2

    .line 120
    :goto_4
    return-void

    .line 121
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    throw p0
.end method

.method public final saveAuthConfigToDb(ILcom/samsung/android/knox/net/ProxyProperties;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->isAuthenticationConfigured()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getAuthConfigList()Ljava/util/List;

    .line 11
    move-result-object p2

    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p2

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/samsung/android/knox/net/AuthConfig;

    .line 28
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 30
    new-instance v3, Landroid/content/ContentValues;

    .line 32
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v4

    .line 39
    const-string v5, "adminUid"

    .line 41
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getHost()Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 48
    const-string/jumbo v5, "host"

    .line 51
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getPort()I

    .line 57
    move-result v4

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v4

    .line 62
    const-string/jumbo v5, "port"

    .line 65
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string/jumbo v4, "username"

    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v4, "password"

    .line 81
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "GlobalProxyAuthTable"

    .line 90
    invoke-virtual {v2, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 93
    move-result-wide v2

    .line 94
    const-wide/16 v4, -0x1

    .line 96
    cmp-long v0, v2, v4

    .line 98
    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 101
    move v1, v0

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    return v1
.end method

.method public final saveProxyInfoToDb(ILandroid/net/ProxyInfo;)Z
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    new-instance v0, Landroid/content/ContentValues;

    .line 5
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 8
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v1

    .line 16
    const-string v2, ""

    .line 18
    if-nez v1, :cond_0

    .line 20
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, v2

    .line 26
    :goto_0
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_1

    .line 32
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v3, v2

    .line 42
    :goto_1
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 46
    if-eqz v4, :cond_2

    .line 48
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_2

    .line 54
    array-length v5, v4

    .line 55
    if-lez v5, :cond_2

    .line 57
    const-string v2, ","

    .line 59
    invoke-static {v2, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    :cond_2
    const-string v4, "adminUid"

    .line 65
    const-string/jumbo v5, "host"

    .line 68
    invoke-static {p1, v0, v4, v5, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getPort()I

    .line 74
    move-result p1

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object p1

    .line 79
    const-string/jumbo p2, "port"

    .line 82
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    const-string/jumbo p1, "pacfile"

    .line 88
    invoke-virtual {v0, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo p1, "exclusion"

    .line 94
    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string p1, "GlobalProxyTable"

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 102
    move-result-wide p0

    .line 103
    const-wide/16 v0, -0x1

    .line 105
    cmp-long p0, p0, v0

    .line 107
    if-nez p0, :cond_3

    .line 109
    const/4 p0, 0x0

    .line 110
    goto :goto_2

    .line 111
    :cond_3
    const/4 p0, 0x1

    .line 112
    :goto_2
    return p0
.end method

.method public final setCredentialsFails(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceMDMAppCaller()V

    .line 4
    const-string/jumbo v0, "credentials_fails_count"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iput p2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsCount:I

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput p2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsState:I

    .line 18
    :goto_0
    return-void
.end method

.method public final declared-synchronized setGlobalProxy(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 4
    const-string v1, "KNOX_SECURE_NETWORK"

    .line 6
    const-string/jumbo v2, "setGlobalProxy"

    .line 9
    const/4 v6, 0x1

    .line 10
    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 13
    const-string/jumbo v1, "proxyTp"

    .line 16
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v2

    .line 24
    xor-int/2addr v2, v6

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 28
    const-string/jumbo v1, "proxyAuth"

    .line 31
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->isAuthenticationConfigured()Z

    .line 34
    move-result v2

    .line 35
    xor-int/2addr v2, v6

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 39
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 42
    invoke-static {p2}, Lcom/android/server/enterprise/general/MiscPolicy;->validateProxyProperties(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    .line 45
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const/4 v1, 0x0

    .line 47
    if-nez v0, :cond_0

    .line 49
    monitor-exit p0

    .line 50
    return v1

    .line 51
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 57
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 59
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 63
    const-string v4, "RESTRICTION"

    .line 65
    const-string/jumbo v5, "globalProxy"

    .line 68
    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 71
    move-result v0
    :try_end_2
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    if-eqz v0, :cond_1

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    :try_start_3
    const-string p1, "MiscPolicy"

    .line 77
    const-string/jumbo p2, "setGlobalProxy.SettingNotFoundException"

    .line 80
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    :cond_1
    monitor-exit p0

    .line 84
    return v1

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto/16 :goto_2

    .line 88
    :cond_2
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    .line 90
    if-nez v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 94
    const-string/jumbo v2, "connectivity"

    .line 97
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 103
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    if-nez v0, :cond_4

    .line 109
    monitor-exit p0

    .line 110
    return v1

    .line 111
    :cond_4
    :try_start_5
    invoke-static {p2}, Lcom/android/server/enterprise/utils/NetworkUtils;->convertToProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;

    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->isValid()Z

    .line 118
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 119
    if-nez v2, :cond_5

    .line 121
    monitor-exit p0

    .line 122
    return v1

    .line 123
    :cond_5
    :try_start_6
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 125
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 127
    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 129
    const-string v8, "RESTRICTION"

    .line 131
    const-string/jumbo v12, "globalProxy"

    .line 134
    move v10, v1

    .line 135
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 138
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 139
    if-nez v2, :cond_6

    .line 141
    monitor-exit p0

    .line 142
    return v1

    .line 143
    :cond_6
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 145
    const-string v3, "GlobalProxyAuthTable"

    .line 147
    const/4 v4, 0x0

    .line 148
    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 151
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 153
    const-string v3, "GlobalProxyTable"

    .line 155
    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 158
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 160
    invoke-virtual {v2, v4}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V

    .line 163
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 165
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->saveAuthConfigToDb(ILcom/samsung/android/knox/net/ProxyProperties;)Z

    .line 168
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 169
    if-nez v2, :cond_7

    .line 171
    monitor-exit p0

    .line 172
    return v1

    .line 173
    :cond_7
    :try_start_8
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 175
    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->saveProxyInfoToDb(ILandroid/net/ProxyInfo;)Z

    .line 178
    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 179
    if-nez v0, :cond_8

    .line 181
    monitor-exit p0

    .line 182
    return v1

    .line 183
    :cond_8
    :try_start_9
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_9

    .line 193
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    .line 200
    if-eqz v0, :cond_9

    .line 202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 205
    move-result-wide v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 206
    :try_start_a
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    .line 208
    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 211
    :try_start_b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    goto :goto_1

    .line 215
    :catchall_1
    move-exception p1

    .line 216
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 219
    throw p1

    .line 220
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 222
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V

    .line 225
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 227
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 229
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 231
    const-string v4, "RESTRICTION"

    .line 233
    const-string/jumbo v8, "globalProxy"

    .line 236
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 239
    move-result p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 240
    monitor-exit p0

    .line 241
    return p1

    .line 242
    :goto_2
    monitor-exit p0

    .line 243
    throw p1
.end method

.method public final setGlobalProxyEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ILjava/util/List;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/samsung/android/knox/net/ProxyProperties;

    .line 7
    invoke-direct {v0}, Lcom/samsung/android/knox/net/ProxyProperties;-><init>()V

    .line 10
    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/net/ProxyProperties;->setHostname(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p3}, Lcom/samsung/android/knox/net/ProxyProperties;->setPortNumber(I)V

    .line 16
    invoke-virtual {v0, p4}, Lcom/samsung/android/knox/net/ProxyProperties;->setExclusionList(Ljava/util/List;)V

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->setGlobalProxy(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I

    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final setGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->setGlobalProxy(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final setProxyCredentials(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceMDMAppCaller()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    return-void

    .line 14
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v0

    .line 18
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const-string v2, "LocalProxyManager"

    .line 25
    const-string v3, "Set proxy credentials callback to proxy server"

    .line 27
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v2, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;

    .line 32
    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;Landroid/os/Bundle;)V

    .line 35
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    throw p0
.end method

.method public final setRingerBytes(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result p6

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    invoke-virtual {v0, p6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {p6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    move-result p6

    .line 15
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 17
    invoke-static {v1, v0, p6}, Lcom/android/server/enterprise/utils/Utils;->isPlatformSignedApp(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 20
    move-result p6

    .line 21
    const-string v0, "MiscPolicy"

    .line 23
    if-eqz p6, :cond_0

    .line 25
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p6

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    const-string v2, "MDM_SECURITY Permission is not granted - Check for WRITE_SETTINGS permission "

    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 40
    move-result-object p6

    .line 41
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p6

    .line 48
    invoke-static {v0, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM$15()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 54
    move-result-object p6

    .line 55
    const-string v1, "android.permission.WRITE_SETTINGS"

    .line 57
    invoke-virtual {p6, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 64
    :goto_0
    const-string p1, "artist"

    .line 66
    const-string p6, "Ringtone entry exist deleting it :"

    .line 68
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 71
    move-result-wide v1

    .line 72
    :try_start_1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->isRingToneEntryExist(Landroid/net/Uri;Ljava/lang/String;)J

    .line 75
    move-result-wide v3

    .line 76
    const-wide/16 v5, -0x1

    .line 78
    cmp-long v5, v5, v3

    .line 80
    if-eqz v5, :cond_1

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p6

    .line 94
    invoke-static {v0, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 102
    move-result-object p6

    .line 103
    invoke-static {p2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 106
    move-result-object v0

    .line 107
    const/4 v3, 0x0

    .line 108
    invoke-virtual {p6, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    goto :goto_1

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    goto :goto_5

    .line 114
    :catch_1
    move-exception p1

    .line 115
    goto :goto_3

    .line 116
    :cond_1
    :goto_1
    new-instance p6, Landroid/content/ContentValues;

    .line 118
    invoke-direct {p6}, Landroid/content/ContentValues;-><init>()V

    .line 121
    const-string v0, "_data"

    .line 123
    invoke-virtual {p6, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo p3, "title"

    .line 129
    const-string v0, "IT Admin tone"

    .line 131
    invoke-virtual {p6, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string p3, "_size"

    .line 136
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 139
    move-result-object p4

    .line 140
    invoke-virtual {p6, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    const-string/jumbo p3, "mime_type"

    .line 146
    const-string p4, "audio/*"

    .line 148
    invoke-virtual {p6, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p6, p1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo p1, "is_ringtone"

    .line 157
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 159
    invoke-virtual {p6, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 162
    const-string/jumbo p1, "is_notification"

    .line 165
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 167
    invoke-virtual {p6, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 170
    const-string/jumbo p1, "is_alarm"

    .line 173
    invoke-virtual {p6, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 176
    const-string/jumbo p1, "is_music"

    .line 179
    invoke-virtual {p6, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 182
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1, p2, p6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 191
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    goto :goto_4

    .line 196
    :goto_3
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    goto :goto_2

    .line 200
    :goto_4
    if-eqz p2, :cond_2

    .line 202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 205
    move-result-wide p3

    .line 206
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 208
    const/4 p1, 0x1

    .line 209
    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 212
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    :cond_2
    return-void

    .line 216
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 219
    throw p0
.end method

.method public final setSystemActiveFont(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p3, :cond_0

    .line 11
    return v2

    .line 12
    :cond_0
    iget-object v3, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 14
    if-nez v3, :cond_1

    .line 16
    new-instance v3, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 18
    invoke-direct {v3, v0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;)V

    .line 21
    iput-object v3, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 23
    :cond_1
    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    const-string/jumbo v3, "setSystemActiveFont():Start"

    .line 31
    const-string v4, "MiscPolicy"

    .line 33
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    if-nez v1, :cond_2

    .line 38
    const-string/jumbo v0, "setSystemActiveFont():Invalid input"

    .line 41
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    goto/16 :goto_f

    .line 46
    :cond_2
    new-instance v3, Lcom/android/server/enterprise/general/font/FontWriter;

    .line 48
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v5, 0x0

    .line 52
    iput-object v5, v3, Lcom/android/server/enterprise/general/font/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 54
    iput-object v5, v3, Lcom/android/server/enterprise/general/font/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 56
    iput-object v5, v3, Lcom/android/server/enterprise/general/font/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 58
    iget-object v6, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    .line 60
    iget-object v7, v6, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    .line 69
    move-result-object v8

    .line 70
    const/4 v9, 0x1

    .line 71
    if-nez v8, :cond_3

    .line 73
    const-string/jumbo v0, "changeFont():Installed font list is null"

    .line 76
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    goto/16 :goto_c

    .line 81
    :cond_3
    move v10, v2

    .line 82
    :goto_0
    array-length v11, v8

    .line 83
    if-ge v10, v11, :cond_5

    .line 85
    aget-object v11, v8, v10

    .line 87
    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 90
    move-result v11

    .line 91
    if-eqz v11, :cond_4

    .line 93
    const-string/jumbo v11, "index"

    .line 96
    invoke-static {v10, v11, v4}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    move v10, v2

    .line 104
    :goto_1
    const-string/jumbo v11, "default"

    .line 107
    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 110
    move-result v11

    .line 111
    if-eqz v11, :cond_6

    .line 113
    const-string/jumbo v5, "default#default"

    .line 116
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/general/font/FontWriter;->writeLoc(Ljava/lang/String;)V

    .line 119
    aget-object v3, v8, v10

    .line 121
    invoke-virtual {v0, v10, v3}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(ILjava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo v3, "default font is selected..."

    .line 129
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    move v2, v9

    .line 143
    goto/16 :goto_c

    .line 145
    :cond_6
    iget-object v8, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/font/TypefaceFinder;

    .line 147
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    const-string/jumbo v11, "findMatchingTypefaceByName:"

    .line 153
    invoke-virtual {v11, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object v11

    .line 157
    const-string v12, "TypefaceFinder"

    .line 159
    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    move v11, v2

    .line 163
    :goto_2
    iget-object v13, v8, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 165
    check-cast v13, Ljava/util/ArrayList;

    .line 167
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 170
    move-result v13

    .line 171
    if-ge v11, v13, :cond_8

    .line 173
    iget-object v13, v8, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 175
    check-cast v13, Ljava/util/ArrayList;

    .line 177
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    move-result-object v13

    .line 181
    check-cast v13, Lcom/android/server/enterprise/general/font/Typeface;

    .line 183
    new-instance v14, Ljava/lang/StringBuilder;

    .line 185
    const-string/jumbo v15, "findMatchingTypeface:"

    .line 188
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    iget-object v15, v13, Lcom/android/server/enterprise/general/font/Typeface;->mName:Ljava/lang/String;

    .line 193
    invoke-static {v14, v15, v12}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v14, v13, Lcom/android/server/enterprise/general/font/Typeface;->mName:Ljava/lang/String;

    .line 198
    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 201
    move-result v14

    .line 202
    if-eqz v14, :cond_7

    .line 204
    goto :goto_3

    .line 205
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 207
    goto :goto_2

    .line 208
    :cond_8
    move-object v13, v5

    .line 209
    :goto_3
    if-nez v13, :cond_9

    .line 211
    const-string/jumbo v0, "change font failed"

    .line 214
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    goto/16 :goto_c

    .line 219
    :cond_9
    iget-object v8, v13, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 221
    if-eqz v8, :cond_a

    .line 223
    const-string/jumbo v11, "com.monotype.android.font."

    .line 226
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 229
    move-result v11

    .line 230
    if-nez v11, :cond_a

    .line 232
    goto/16 :goto_c

    .line 234
    :cond_a
    iget-object v11, v13, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 236
    const-string v12, ".xml"

    .line 238
    const-string v14, ""

    .line 240
    invoke-virtual {v11, v12, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    move-result-object v11

    .line 244
    const-string v12, " "

    .line 246
    const-string v14, "-"

    .line 248
    invoke-virtual {v11, v12, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    move-result-object v11

    .line 252
    const-string/jumbo v12, "createFontDirectory : Start"

    .line 255
    const-string v14, "FontWriter"

    .line 257
    invoke-static {v14, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v12, Ljava/lang/StringBuilder;

    .line 262
    const-string v15, "/data/app_fonts/"

    .line 264
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 270
    move-result v15

    .line 271
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 274
    move-result-object v15

    .line 275
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    move-result-object v12

    .line 282
    new-instance v15, Ljava/io/File;

    .line 284
    invoke-direct {v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v15}, Ljava/io/File;->mkdir()Z

    .line 290
    invoke-virtual {v15, v9, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 293
    invoke-virtual {v15, v9, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 296
    invoke-virtual {v15, v9, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 299
    new-instance v12, Ljava/io/File;

    .line 301
    invoke-direct {v12, v15, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v15}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 307
    move-result-object v11

    .line 308
    if-nez v11, :cond_b

    .line 310
    goto/16 :goto_9

    .line 312
    :cond_b
    move v5, v2

    .line 313
    :goto_4
    array-length v2, v11

    .line 314
    if-ge v5, v2, :cond_e

    .line 316
    aget-object v2, v11, v5

    .line 318
    new-instance v9, Ljava/io/File;

    .line 320
    invoke-direct {v9, v15, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 326
    move-result-object v2

    .line 327
    if-eqz v2, :cond_d

    .line 329
    move-object/from16 p3, v11

    .line 331
    const/4 v1, 0x0

    .line 332
    :goto_5
    array-length v11, v2

    .line 333
    if-ge v1, v11, :cond_c

    .line 335
    new-instance v11, Ljava/io/File;

    .line 337
    move-object/from16 v16, v15

    .line 339
    aget-object v15, v2, v1

    .line 341
    invoke-direct {v11, v9, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 347
    add-int/lit8 v1, v1, 0x1

    .line 349
    move-object/from16 v15, v16

    .line 351
    goto :goto_5

    .line 352
    :cond_c
    move-object/from16 v16, v15

    .line 354
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 357
    goto :goto_6

    .line 358
    :cond_d
    move-object/from16 p3, v11

    .line 360
    move-object/from16 v16, v15

    .line 362
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 364
    move-object/from16 v1, p2

    .line 366
    move-object/from16 v11, p3

    .line 368
    move-object/from16 v15, v16

    .line 370
    const/4 v9, 0x1

    .line 371
    goto :goto_4

    .line 372
    :cond_e
    invoke-virtual {v12}, Ljava/io/File;->mkdir()Z

    .line 375
    move-result v1

    .line 376
    if-eqz v1, :cond_f

    .line 378
    const-string v1, "Font directory  : Created"

    .line 380
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    goto :goto_7

    .line 384
    :cond_f
    const-string v1, "Font directory  : Not Created"

    .line 386
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_7
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 392
    move-result-object v1

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    .line 395
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    const-string/jumbo v5, "chmod 711 "

    .line 401
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 407
    move-result-object v5

    .line 408
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 422
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    .line 425
    move-result v1

    .line 426
    if-nez v1, :cond_10

    .line 428
    goto :goto_8

    .line 429
    :cond_10
    new-instance v1, Ljava/io/IOException;

    .line 431
    const-string v2, "Cannot chmod"

    .line 433
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 436
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :catch_0
    const-string v1, "InterruptedException : "

    .line 439
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    goto :goto_8

    .line 443
    :catch_1
    const-string v1, "IOException : "

    .line 445
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :goto_8
    move-object v5, v12

    .line 449
    :goto_9
    if-nez v5, :cond_11

    .line 451
    const-string/jumbo v0, "create fontDir object is null "

    .line 454
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :goto_a
    const/4 v2, 0x0

    .line 458
    goto :goto_c

    .line 459
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 462
    move-result-wide v1

    .line 463
    const/4 v9, 0x0

    .line 464
    :goto_b
    iget-object v11, v13, Lcom/android/server/enterprise/general/font/Typeface;->mSansFonts:Ljava/util/List;

    .line 466
    check-cast v11, Ljava/util/ArrayList;

    .line 468
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 471
    move-result v11

    .line 472
    if-ge v9, v11, :cond_12

    .line 474
    iget-object v11, v13, Lcom/android/server/enterprise/general/font/Typeface;->mSansFonts:Ljava/util/List;

    .line 476
    check-cast v11, Ljava/util/ArrayList;

    .line 478
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 481
    move-result-object v11

    .line 482
    check-cast v11, Lcom/android/server/enterprise/general/font/TypefaceFile;

    .line 484
    :try_start_1
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 487
    move-result-object v12

    .line 488
    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 491
    move-result-object v12

    .line 492
    new-instance v14, Ljava/lang/StringBuilder;

    .line 494
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    const-string/jumbo v15, "fonts/"

    .line 500
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    iget-object v15, v11, Lcom/android/server/enterprise/general/font/TypefaceFile;->fileName:Ljava/lang/String;

    .line 505
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    move-result-object v14

    .line 512
    invoke-virtual {v12, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 515
    move-result-object v12

    .line 516
    iget-object v11, v11, Lcom/android/server/enterprise/general/font/TypefaceFile;->droidName:Ljava/lang/String;

    .line 518
    invoke-virtual {v3, v5, v12, v11}, Lcom/android/server/enterprise/general/font/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 521
    add-int/lit8 v9, v9, 0x1

    .line 523
    goto :goto_b

    .line 524
    :catch_2
    move-exception v0

    .line 525
    const-string/jumbo v3, "changeFont():Exception"

    .line 528
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    .line 533
    const-string v5, "Exception"

    .line 535
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    move-result-object v3

    .line 545
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 551
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 554
    goto :goto_a

    .line 555
    :cond_12
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 558
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 561
    move-result-object v1

    .line 562
    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/general/font/FontWriter;->writeLoc(Ljava/lang/String;)V

    .line 565
    iget-object v1, v13, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 567
    invoke-virtual {v0, v10, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(ILjava/lang/String;)V

    .line 570
    const-string/jumbo v0, "change font:Done"

    .line 573
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v2, 0x1

    .line 577
    :goto_c
    if-nez v2, :cond_13

    .line 579
    :goto_d
    const/4 v2, 0x0

    .line 580
    goto :goto_f

    .line 581
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 584
    move-result-wide v7

    .line 585
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 588
    move-result-object v0

    .line 589
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    .line 592
    move-result-object v1

    .line 593
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 596
    move-result v3

    .line 597
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 600
    move-result v3

    .line 601
    const/4 v5, 0x1

    .line 602
    add-int/2addr v3, v5

    .line 603
    iput v3, v1, Landroid/content/res/Configuration;->FlipFont:I

    .line 605
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 608
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 611
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 614
    move-result-wide v0

    .line 615
    iget-object v3, v6, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 617
    const-string v4, "activity"

    .line 619
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 622
    move-result-object v3

    .line 623
    check-cast v3, Landroid/app/ActivityManager;

    .line 625
    const/16 v4, 0x32

    .line 627
    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 630
    move-result-object v4

    .line 631
    if-eqz v4, :cond_14

    .line 633
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 636
    move-result-object v4

    .line 637
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 640
    move-result v5

    .line 641
    if-eqz v5, :cond_14

    .line 643
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 646
    move-result-object v5

    .line 647
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 649
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 651
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 654
    move-result-object v5

    .line 655
    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 658
    goto :goto_e

    .line 659
    :cond_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 662
    goto :goto_f

    .line 663
    :catchall_0
    move-exception v0

    .line 664
    goto :goto_10

    .line 665
    :catch_3
    :try_start_3
    const-string/jumbo v0, "setSystemActiveFont():Exception"

    .line 668
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 671
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    goto :goto_d

    .line 675
    :goto_f
    return v2

    .line 676
    :goto_10
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 679
    throw v0
.end method

.method public final setSystemActiveFontSize(Lcom/samsung/android/knox/ContextInfo;F)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 7
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 9
    const-string v0, "MiscPolicy"

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 14
    const-string/jumbo p0, "setSystemActiveFontSize() : failed to retrieve font datas."

    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return v1

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object p1

    .line 27
    const-string/jumbo v2, "font_size"

    .line 30
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->floatToIndex(F)I

    .line 37
    move-result p2

    .line 38
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 40
    array-length v3, v3

    .line 41
    const/4 v4, 0x1

    .line 42
    sub-int/2addr v3, v4

    .line 43
    if-ne p1, p2, :cond_1

    .line 45
    const-string/jumbo p0, "setSystemActiveFontSize() : same font size"

    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v4

    .line 52
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 55
    move-result-wide v5

    .line 56
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    move-result-object v7

    .line 62
    invoke-static {v7, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    const-string/jumbo v7, "large_font"

    .line 68
    const/high16 v8, 0x1000000

    .line 70
    const-string v9, "android.settings.FONT_SIZE_CHANGED"

    .line 72
    if-ge p1, v3, :cond_2

    .line 74
    if-ne p2, v3, :cond_2

    .line 76
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    .line 78
    invoke-direct {p1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v3, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto :goto_5

    .line 95
    :cond_2
    if-ne p1, v3, :cond_3

    .line 97
    if-ge p2, v3, :cond_3

    .line 99
    new-instance p1, Landroid/content/Intent;

    .line 101
    invoke-direct {p1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {v3, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :cond_3
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    new-instance p1, Landroid/content/res/Configuration;

    .line 120
    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 123
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 125
    aget v3, v3, p2

    .line 127
    iput v3, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 132
    move-result-wide v5

    .line 133
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 136
    move-result-object v3

    .line 137
    invoke-interface {v3, p1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 140
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    const/4 p1, 0x7

    .line 150
    if-lt p2, p1, :cond_4

    .line 152
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 157
    move-result-object p0

    .line 158
    const-string p1, "accessiblity_font_switch"

    .line 160
    invoke-static {p0, p1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    goto :goto_1

    .line 164
    :catchall_1
    move-exception p0

    .line 165
    goto :goto_4

    .line 166
    :catch_0
    move-exception p0

    .line 167
    goto :goto_2

    .line 168
    :cond_4
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 171
    move v1, v4

    .line 172
    goto :goto_3

    .line 173
    :goto_2
    :try_start_3
    const-string/jumbo p1, "setSystemActiveFontSize(): failed to set font size. "

    .line 176
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 179
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 182
    :goto_3
    return v1

    .line 183
    :goto_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    throw p0

    .line 187
    :goto_5
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    throw p0
.end method

.method public final showCredentialsDialogNotification(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isCalledFromProxyHandler(I)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    const-string v2, "Show credentials dialog notification"

    .line 27
    const-string v3, "LocalProxyManager"

    .line 29
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 34
    if-nez v2, :cond_1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 39
    if-eqz v2, :cond_2

    .line 41
    new-instance v2, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;

    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/Object;I)V

    .line 47
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string p0, "NotificationManager is null"

    .line 53
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    throw p0
.end method

.method public final startNFC(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM$15()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    move-result-wide v2

    .line 36
    sget-object v4, Lcom/android/server/enterprise/general/MiscPolicy;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 38
    new-instance v5, Ljava/util/Date;

    .line 40
    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 43
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v2, " callerUid="

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string p1, " value="

    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 80
    move-result p1

    .line 81
    const/16 v0, 0xa

    .line 83
    const/4 v1, 0x0

    .line 84
    if-le p1, v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 91
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 94
    move-result-wide v2

    .line 95
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 97
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 100
    move-result-object p0

    .line 101
    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 106
    move-result p0

    .line 107
    :goto_0
    move v1, p0

    .line 108
    goto :goto_1

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_3

    .line 111
    :cond_1
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 114
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    goto :goto_0

    .line 116
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    goto :goto_2

    .line 120
    :catch_0
    :try_start_1
    const-string p0, "MiscPolicy"

    .line 122
    const-string p1, "Error on Start/Stop NFC"

    .line 124
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    goto :goto_1

    .line 128
    :goto_2
    return v1

    .line 129
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    throw p0
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->updateAdminsBlockingNfcStateChange()V

    .line 4
    return-void
.end method

.method public final updateAdminsBlockingNfcStateChange()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mAdminsBlockingNfcStateChange:Ljava/util/ArrayList;

    .line 8
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    const-string/jumbo v1, "nfcStateChangeAllowed"

    .line 13
    const-string v2, "adminUid"

    .line 15
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    const-string v5, "MISC"

    .line 22
    invoke-virtual {v0, v4, v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v0

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/content/ContentValues;

    .line 44
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 47
    move-result-object v4

    .line 48
    if-nez v4, :cond_1

    .line 50
    const/4 v4, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    move-result v4

    .line 60
    :goto_1
    if-nez v4, :cond_0

    .line 62
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_0

    .line 68
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mAdminsBlockingNfcStateChange:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    return-void
.end method

.method public final updateSystemUIMonitor$2(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setNFCStateChangeAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :catch_0
    move-exception p0

    .line 25
    :try_start_1
    const-string p1, "MiscPolicy"

    .line 27
    const-string/jumbo v0, "setNFCStateChangeAllowedSystemUI() failed. "

    .line 30
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    goto :goto_0

    .line 34
    :goto_1
    return-void

    .line 35
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    throw p0
.end method
