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

    .line 2
    .line 3
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/enterprise/general/MiscPolicy;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsCount:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsState:I

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 33
    .line 34
    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sput-object p1, Lcom/android/server/enterprise/general/MiscPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static supportBigFont(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "com.sec.feature.folder_type"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v0, "CountryISO"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v0, "CN"

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 33
    .line 34
    const-string/jumbo v0, "elite"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_0

    .line 42
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v0, :cond_11

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-ltz p0, :cond_10

    .line 29
    .line 30
    const v3, 0xffff

    .line 31
    .line 32
    .line 33
    if-gt p0, v3, :cond_10

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    sget-object p0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 44
    .line 45
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

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    :cond_2
    :goto_1
    move p0, v1

    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :cond_3
    const-string p0, "*"

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_5

    .line 63
    .line 64
    :cond_4
    move p0, v2

    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    const/16 v3, 0xff

    .line 72
    .line 73
    if-le p0, v3, :cond_6

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_6
    const-string p0, "\\."

    .line 77
    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    move v3, v1

    .line 83
    :goto_2
    aget-object v4, p0, v1

    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-ge v3, v4, :cond_2

    .line 90
    .line 91
    aget-object v4, p0, v1

    .line 92
    .line 93
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    const/16 v5, 0x61

    .line 98
    .line 99
    if-lt v4, v5, :cond_7

    .line 100
    .line 101
    const/16 v5, 0x7a

    .line 102
    .line 103
    if-le v4, v5, :cond_8

    .line 104
    .line 105
    :cond_7
    const/16 v5, 0x41

    .line 106
    .line 107
    if-lt v4, v5, :cond_f

    .line 108
    .line 109
    const/16 v5, 0x5a

    .line 110
    .line 111
    if-gt v4, v5, :cond_f

    .line 112
    .line 113
    :cond_8
    move v3, v1

    .line 114
    move v4, v3

    .line 115
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-ge v3, v5, :cond_a

    .line 120
    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    const/16 v6, 0x2e

    .line 126
    .line 127
    if-ne v5, v6, :cond_9

    .line 128
    .line 129
    add-int/lit8 v4, v4, 0x1

    .line 130
    .line 131
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_a
    array-length v0, p0

    .line 135
    if-lt v4, v0, :cond_b

    .line 136
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

    .line 141
    .line 142
    aget-object v4, p0, v3

    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    const/16 v5, 0x3f

    .line 149
    .line 150
    if-le v4, v5, :cond_c

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 154
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

    .line 159
    .line 160
    aget-object v4, p0, v3

    .line 161
    .line 162
    const-string v5, "^[A-Za-z0-9-]+$"

    .line 163
    .line 164
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_2

    .line 169
    .line 170
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    const/16 v6, 0x2d

    .line 175
    .line 176
    if-eq v5, v6, :cond_2

    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    sub-int/2addr v5, v2

    .line 183
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-ne v4, v6, :cond_e

    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :goto_6
    if-nez p0, :cond_12

    .line 198
    .line 199
    :cond_10
    return v1

    .line 200
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-nez v0, :cond_13

    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    if-nez p0, :cond_12

    .line 219
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

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    .line 8
    .line 9
    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 26
    .line 27
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 28
    .line 29
    const-string v1, "MISC"

    .line 30
    .line 31
    const-string/jumbo v5, "nfcStateChangeAllowed"

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    move v3, p2

    .line 36
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->updateAdminsBlockingNfcStateChange()V

    .line 41
    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    :try_start_0
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 50
    .line 51
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const/16 p2, 0x47

    .line 70
    .line 71
    invoke-static {p0, p2, p1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
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

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    .line 9
    .line 10
    move-result v9

    .line 11
    iget-object v2, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    .line 15
    const-string v4, "android"

    .line 16
    .line 17
    const/4 v10, 0x0

    .line 18
    invoke-static {v2, v4, v10, v3}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v11, "MiscPolicy"

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const-string v0, "Could not create context for current user!"

    .line 27
    .line 28
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return v10

    .line 32
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 33
    .line 34
    .line 35
    move-result-wide v12

    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object v14

    .line 40
    invoke-virtual {v0, v9}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v3, -0x1

    .line 45
    if-eq v2, v3, :cond_1

    .line 46
    .line 47
    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 48
    .line 49
    if-eq v2, v3, :cond_1

    .line 50
    .line 51
    const-string/jumbo v0, "changeLockScreenString():get AdminId failed!! "

    .line 52
    .line 53
    .line 54
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return v10

    .line 61
    :cond_1
    const/4 v2, 0x1

    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-gez v3, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    move-object/from16 v3, p2

    .line 72
    .line 73
    move v4, v10

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    :goto_0
    const-string v3, ""

    .line 76
    .line 77
    move v4, v2

    .line 78
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    const/16 v6, 0x100

    .line 83
    .line 84
    if-le v5, v6, :cond_4

    .line 85
    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v3, "..."

    .line 99
    .line 100
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const-string/jumbo v5, "changeLockScreenString():lock screen text is truncated "

    .line 108
    .line 109
    .line 110
    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_4
    move-object v15, v3

    .line 114
    const-string v8, "Couldn\'t write string "

    .line 115
    .line 116
    const-string/jumbo v3, "lock_screen_owner_info"

    .line 117
    .line 118
    .line 119
    if-nez v4, :cond_6

    .line 120
    .line 121
    const-string/jumbo v4, "changeLockScreenString(): apply restriction"

    .line 122
    .line 123
    .line 124
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    iget-object v4, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 128
    .line 129
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 130
    .line 131
    const/16 v18, 0x0

    .line 132
    .line 133
    const-string v20, "MISC"

    .line 134
    .line 135
    const-string/jumbo v21, "lockscreenstring"

    .line 136
    .line 137
    .line 138
    const/16 v19, 0x1

    .line 139
    .line 140
    move-object/from16 v16, v4

    .line 141
    .line 142
    move/from16 v17, v5

    .line 143
    .line 144
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v16

    .line 148
    if-eqz v16, :cond_5

    .line 149
    .line 150
    const-string/jumbo v4, "changeLockScreenString(): ret is true set value"

    .line 151
    .line 152
    .line 153
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings$1()Lcom/android/internal/widget/ILockSettings;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    const-string/jumbo v5, "lock_screen_owner_info_enabled"

    .line 161
    .line 162
    .line 163
    invoke-interface {v4, v5, v2, v9}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V

    .line 164
    .line 165
    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings$1()Lcom/android/internal/widget/ILockSettings;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-interface {v0, v3, v15, v9}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    const-string v6, "MiscPolicy"

    .line 178
    .line 179
    const-string v0, "Admin %d has changed lock screen string to %s"

    .line 180
    .line 181
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 182
    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    filled-new-array {v1, v15}, [Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
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

    .line 201
    .line 202
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

    .line 209
    .line 210
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    :goto_3
    const-string/jumbo v0, "my_profile_enabled"

    .line 227
    .line 228
    .line 229
    invoke-static {v14, v0, v10, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 230
    .line 231
    .line 232
    :cond_5
    :goto_4
    move/from16 v0, v16

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_6
    move-object v10, v8

    .line 236
    const-string/jumbo v2, "changeLockScreenString(): revoke restriction"

    .line 237
    .line 238
    .line 239
    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    iget-object v2, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 243
    .line 244
    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 245
    .line 246
    const/16 v18, 0x0

    .line 247
    .line 248
    const-string v20, "MISC"

    .line 249
    .line 250
    const-string/jumbo v21, "lockscreenstring"

    .line 251
    .line 252
    .line 253
    const/16 v19, 0x0

    .line 254
    .line 255
    move-object/from16 v16, v2

    .line 256
    .line 257
    move/from16 v17, v4

    .line 258
    .line 259
    invoke-virtual/range {v16 .. v21}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v16

    .line 263
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings$1()Lcom/android/internal/widget/ILockSettings;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-interface {v0, v3, v15, v9}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 268
    .line 269
    .line 270
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    const-string v6, "MiscPolicy"

    .line 275
    .line 276
    const-string v0, "Admin %d has cleared the lock screen string."

    .line 277
    .line 278
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 279
    .line 280
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    .line 290
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

    .line 297
    .line 298
    .line 299
    goto :goto_4

    .line 300
    :catch_2
    move-exception v0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    const-string/jumbo v2, "changeLockScreenString():ret:"

    .line 323
    .line 324
    .line 325
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string v2, " "

    .line 332
    .line 333
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 347
    .line 348
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

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/16 v1, 0x3e8

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "globalProxy"

    .line 18
    .line 19
    .line 20
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    const-string v2, "RESTRICTION"

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
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

    .line 4
    .line 5
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6
    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 8
    .line 9
    const-string v3, "RESTRICTION"

    .line 10
    .line 11
    const-string/jumbo v4, "globalProxy"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return v6

    .line 22
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string/jumbo v1, "connectivity"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 44
    .line 45
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 46
    .line 47
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 48
    .line 49
    const-string v1, "RESTRICTION"

    .line 50
    .line 51
    const-string/jumbo v5, "globalProxy"

    .line 52
    .line 53
    .line 54
    move v3, v6

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 59
    .line 60
    const-string v0, "GlobalProxyAuthTable"

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 67
    .line 68
    const-string v0, "GlobalProxyTable"

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    .line 81
    .line 82
    .line 83
    const-string p1, ""

    .line 84
    .line 85
    invoke-static {p1, v6}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    .line 94
    .line 95
    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    .line 97
    .line 98
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    .line 100
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

    .line 108
    .line 109
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

    .line 114
    .line 115
    const-string/jumbo v0, "clearGlobalProxyEnable.SettingNotFoundException"

    .line 116
    .line 117
    .line 118
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 119
    .line 120
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

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final clearGlobalProxyEnableEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final clearNotificationDialog()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isCalledFromProxyHandler(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v2, "Clear notification dialog"

    .line 26
    .line 27
    const-string v3, "LocalProxyManager"

    .line 28
    .line 29
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    new-instance v2, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;

    .line 37
    .line 38
    const/4 v3, 0x7

    .line 39
    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string p0, "NotificationManager is null"

    .line 47
    .line 48
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p1, "  mStartNFCHistoryList.size="

    .line 2
    .line 3
    iget-object p3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v0, "android.permission.DUMP"

    .line 6
    .line 7
    invoke-virtual {p3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const-string p0, "Permission Denial: can\'t dump KioskModeService"

    .line 14
    .line 15
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    .line 20
    .line 21
    monitor-enter p3

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    :goto_0
    if-ge p1, v0, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/String;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "    ["

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v3, "] "

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 p1, p1, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :cond_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string p3, "PAC file url: "

    .line 99
    .line 100
    const-string v0, "Port: "

    .line 101
    .line 102
    const-string v1, "Host: "

    .line 103
    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    const-string v2, "\nEnforced GlobalProxy:"

    .line 107
    .line 108
    invoke-static {p2, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string p1, "\n"

    .line 165
    .line 166
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    if-eqz p1, :cond_3

    .line 174
    .line 175
    const-string v2, "Enforced WifiProxy:"

    .line 176
    .line 177
    invoke-static {p2, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const-string p1, "\n\n"

    .line 234
    .line 235
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_3
    sget-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 239
    .line 240
    if-eqz p1, :cond_4

    .line 241
    .line 242
    sget-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 243
    .line 244
    check-cast p1, Landroid/util/ArrayMap;

    .line 245
    .line 246
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-nez p1, :cond_4

    .line 251
    .line 252
    sget-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 253
    .line 254
    new-instance p3, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda10;

    .line 255
    .line 256
    invoke-direct {p3, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda10;-><init>(Ljava/io/PrintWriter;)V

    .line 257
    .line 258
    .line 259
    check-cast p1, Landroid/util/ArrayMap;

    .line 260
    .line 261
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 262
    .line 263
    .line 264
    :cond_4
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mAdminsBlockingNfcStateChange:Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    if-eqz p1, :cond_5

    .line 271
    .line 272
    const-string p0, "  No admin blocking NFC State change"

    .line 273
    .line 274
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto :goto_1

    .line 278
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    const-string p3, "  NFC State change blocked by admin UID : "

    .line 281
    .line 282
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mAdminsBlockingNfcStateChange:Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    .line 296
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

    .line 2
    .line 3
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_SET_PROXY_CREDENTIAL_INTERNAL"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 14
    .line 15
    const-string v0, "Caller does not have required permission."

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public final enforceOwnerOnlyAndFirewallPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM$15()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    .line 8
    .line 9
    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM$15()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

    .line 8
    .line 9
    .line 10
    const-string v2, "android.permission.NETWORK_STACK"

    .line 11
    .line 12
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM$15()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 8
    .line 9
    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final floatToIndex(F)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 9
    .line 10
    array-length v4, v3

    .line 11
    if-ge v2, v4, :cond_1

    .line 12
    .line 13
    aget v3, v3, v2

    .line 14
    .line 15
    sub-float v4, v3, v0

    .line 16
    .line 17
    const/high16 v5, 0x3f000000    # 0.5f

    .line 18
    .line 19
    mul-float/2addr v4, v5

    .line 20
    add-float/2addr v4, v0

    .line 21
    cmpg-float v0, p1, v4

    .line 22
    .line 23
    if-gez v0, :cond_0

    .line 24
    .line 25
    sub-int/2addr v2, v1

    .line 26
    return v2

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
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

    .line 34
    .line 35
    .line 36
    const-string v0, "MiscPolicy"

    .line 37
    .line 38
    invoke-static {p0, p1, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return p0
.end method

.method public final getAppUidBrowserList()Ljava/util/List;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isCalledFromProxyHandler(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    invoke-direct {v3, p0, v2, v4}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/util/List;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return-object v2

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final getAppUidFromSocketPortNumber(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isCalledFromProxyHandler(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 22
    .line 23
    const-string v2, "/proc/net/tcp"

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getAppUidFromTcpFile(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    const-string p0, "/proc/net/tcp6"

    .line 35
    .line 36
    invoke-static {p1, p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getAppUidFromTcpFile(ILjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final getAuthConfigFromDb()Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "host"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v2, "port"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v3, "username"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v4, "password"

    .line 16
    .line 17
    .line 18
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 23
    .line 24
    const-string v6, "GlobalProxyAuthTable"

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    invoke-virtual {p0, v6, v5, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Landroid/content/ContentValues;

    .line 48
    .line 49
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    new-instance v9, Lcom/samsung/android/knox/net/AuthConfig;

    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-direct {v9, v6, v7, v8, v5}, Lcom/samsung/android/knox/net/AuthConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
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

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "credentials_fails_count"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsCount:I

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    iget p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsState:I

    .line 17
    .line 18
    return p0
.end method

.method public final getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "Couldn\'t get string lock_screen_owner_info"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x3e8

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const-string/jumbo v2, "getCurrentLockScreenString : currentSetAdminId="

    .line 28
    .line 29
    .line 30
    const-string v3, "MiscPolicy"

    .line 31
    .line 32
    invoke-static {v1, v2, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v2, -0x1

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eq v1, v2, :cond_1

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings$1()Lcom/android/internal/widget/ILockSettings;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string/jumbo v5, "lock_screen_owner_info"

    .line 48
    .line 49
    .line 50
    invoke-interface {p0, v5, v4, p1}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
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

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
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

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 14
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

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getAuthConfigFromDb()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string/jumbo v2, "host"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v3, "port"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v4, "pacfile"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v5, "exclusion"

    .line 29
    .line 30
    .line 31
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    .line 37
    const-string v4, "GlobalProxyTable"

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_8

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Landroid/content/ContentValues;

    .line 61
    .line 62
    const-string/jumbo v4, "host"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string/jumbo v5, "port"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    if-nez v5, :cond_2

    .line 77
    .line 78
    const/4 v5, -0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    :goto_1
    const-string/jumbo v6, "exclusion"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    const-string/jumbo v7, "pacfile"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_3

    .line 103
    .line 104
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-nez v7, :cond_1

    .line 109
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

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-nez v7, :cond_4

    .line 118
    .line 119
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-static {v6}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    goto :goto_3

    .line 128
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-nez v8, :cond_5

    .line 138
    .line 139
    const-string v7, ","

    .line 140
    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    :cond_5
    invoke-static {v4, v5, v7}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    :goto_3
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->isValid()Z

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    if-eqz v7, :cond_7

    .line 158
    .line 159
    new-instance v0, Lcom/samsung/android/knox/net/ProxyProperties;

    .line 160
    .line 161
    invoke-direct {v0}, Lcom/samsung/android/knox/net/ProxyProperties;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/net/ProxyProperties;->setHostname(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/net/ProxyProperties;->setPortNumber(I)V

    .line 168
    .line 169
    .line 170
    move-object v4, v1

    .line 171
    check-cast v4, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-nez v4, :cond_6

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/net/ProxyProperties;->setAuthConfigList(Ljava/util/List;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/net/ProxyProperties;->setExclusionList(Ljava/util/List;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/net/ProxyProperties;->setPacFileUrl(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_7
    const-string v3, "MiscPolicy"

    .line 199
    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v5, "Invalid proxy properties, ignoring: "

    .line 206
    .line 207
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    .line 223
    .line 224
    goto/16 :goto_0

    .line 225
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

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, ""

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ":"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    .line 109
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    return-object p1

    .line 120
    :cond_2
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    return-object p0
.end method

.method public final getGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final getLastSimChangeInfo(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM$15()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    .line 8
    .line 9
    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 22
    .line 23
    .line 24
    :try_start_0
    new-instance p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string p1, "SimChangeTime"

    .line 30
    .line 31
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    const-string v0, "-1"

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    move-object p1, v0

    .line 40
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    iput-wide v1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeTime:J

    .line 45
    .line 46
    new-instance p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 47
    .line 48
    invoke-direct {p1}, Lcom/samsung/android/knox/deviceinfo/SimInfo;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 52
    .line 53
    const-string v1, "PreviousSimCountryIso"

    .line 54
    .line 55
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->countryIso:Ljava/lang/String;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 62
    .line 63
    const-string v1, "PreviousSimOperatorName"

    .line 64
    .line 65
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operatorName:Ljava/lang/String;

    .line 70
    .line 71
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 72
    .line 73
    const-string v1, "PreviousSimOperator"

    .line 74
    .line 75
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operator:Ljava/lang/String;

    .line 80
    .line 81
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 82
    .line 83
    const-string v1, "PreviousSimPhoneNumber"

    .line 84
    .line 85
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v1, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 90
    .line 91
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 92
    .line 93
    const-string v1, "PreviousSimSerialNumber"

    .line 94
    .line 95
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iput-object v1, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->serialNumber:Ljava/lang/String;

    .line 100
    .line 101
    const-string p1, "SimChangeOperation"

    .line 102
    .line 103
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-nez p1, :cond_1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    move-object v0, p1

    .line 111
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iput p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeOperation:I

    .line 116
    .line 117
    new-instance p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 118
    .line 119
    invoke-direct {p1}, Lcom/samsung/android/knox/deviceinfo/SimInfo;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 123
    .line 124
    const-string v0, "CurrentSimCountryIso"

    .line 125
    .line 126
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v0, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->countryIso:Ljava/lang/String;

    .line 131
    .line 132
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 133
    .line 134
    const-string v0, "CurrentSimOperatorName"

    .line 135
    .line 136
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iput-object v0, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operatorName:Ljava/lang/String;

    .line 141
    .line 142
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 143
    .line 144
    const-string v0, "CurrentSimOperator"

    .line 145
    .line 146
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iput-object v0, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->operator:Ljava/lang/String;

    .line 151
    .line 152
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 153
    .line 154
    const-string v0, "CurrentSimPhoneNumber"

    .line 155
    .line 156
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iput-object v0, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 161
    .line 162
    iget-object p1, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    .line 163
    .line 164
    const-string v0, "CurrentSimSerialNumber"

    .line 165
    .line 166
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iput-object v0, p1, Lcom/samsung/android/knox/deviceinfo/SimInfo;->serialNumber:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    .line 172
    return-object p0

    .line 173
    :catch_0
    move-exception p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    new-instance p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;

    .line 178
    .line 179
    invoke-direct {p0}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;-><init>()V

    .line 180
    .line 181
    .line 182
    return-object p0
.end method

.method public final getLockSettings$1()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "lock_settings"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 19
    .line 20
    return-object p0
.end method

.method public final getProxyForSsid(Ljava/lang/String;)Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 21
    .line 22
    check-cast p0, Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/samsung/android/knox/net/ProxyProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final getSystemActiveFont(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string/jumbo p1, "getSystemActiveFont():getting active system font:"

    .line 18
    .line 19
    .line 20
    const-string v0, "MiscPolicy"

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    const/4 p1, 0x0

    .line 30
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const-string/jumbo v4, "com.android.settings"

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string/jumbo v4, "prefs"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 56
    .line 57
    new-instance v5, Ljava/io/FileInputStream;

    .line 58
    .line 59
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 60
    .line 61
    .line 62
    const/16 v3, 0x4000

    .line 63
    .line 64
    invoke-direct {v4, v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    .line 66
    .line 67
    :try_start_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    .line 68
    .line 69
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

    .line 85
    .line 86
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    .line 95
    .line 96
    if-eqz v4, :cond_3

    .line 97
    .line 98
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 99
    .line 100
    .line 101
    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 102
    .line 103
    .line 104
    :catch_2
    move-object v3, p1

    .line 105
    :catch_3
    :goto_2
    const/4 v1, 0x0

    .line 106
    if-eqz v3, :cond_4

    .line 107
    .line 108
    const-string v2, "SavedClickedItem"

    .line 109
    .line 110
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Ljava/lang/Integer;

    .line 115
    .line 116
    if-eqz v2, :cond_4

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string/jumbo v3, "getActiveFontPosition():"

    .line 125
    .line 126
    .line 127
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    const-string/jumbo v2, "getSystemFonts():getting all system fonts"

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    if-eqz p0, :cond_5

    .line 151
    .line 152
    aget-object p1, p0, v1

    .line 153
    .line 154
    :cond_5
    return-object p1

    .line 155
    :goto_3
    if-eqz p1, :cond_6

    .line 156
    .line 157
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V

    .line 158
    .line 159
    .line 160
    :cond_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 161
    .line 162
    .line 163
    :catch_4
    throw p0
.end method

.method public final getSystemActiveFontSize(Lcom/samsung/android/knox/ContextInfo;)F
    .locals 5

    .line 1
    const-string p1, "MiscPolicy"

    .line 2
    .line 3
    const-string/jumbo v0, "getSystemActiveFontSize() : resized font index value. "

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/content/res/Configuration;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/general/MiscPolicy;->floatToIndex(F)I

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string/jumbo v3, "font_size"

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 52
    .line 53
    array-length v3, v3

    .line 54
    if-lt v2, v3, :cond_0

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, " -> "

    .line 65
    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 70
    .line 71
    array-length v0, v0

    .line 72
    add-int/lit8 v0, v0, -0x1

    .line 73
    .line 74
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 85
    .line 86
    array-length v0, v0

    .line 87
    add-int/lit8 v2, v0, -0x1

    .line 88
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

    .line 93
    .line 94
    aget p0, p0, v2

    .line 95
    .line 96
    iput p0, v1, Landroid/content/res/Configuration;->fontScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :goto_1
    const-string/jumbo v0, "getSystemActiveFontSize(): Unable to read font size"

    .line 100
    .line 101
    .line 102
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    :cond_1
    :goto_2
    iget p0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 106
    .line 107
    return p0
.end method

.method public final getSystemFontSizes(Lcom/samsung/android/knox/ContextInfo;)[F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 5
    .line 6
    return-object p0
.end method

.method public final getSystemFonts(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const-string p1, "MiscPolicy"

    .line 18
    .line 19
    const-string/jumbo v0, "getSystemFonts():getting all system fonts"

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final isAdminLockScreenStringSet(I)I
    .locals 5

    .line 1
    const-string/jumbo v0, "lockscreenstring"

    .line 2
    .line 3
    .line 4
    const-string v1, "adminUid"

    .line 5
    .line 6
    :try_start_0
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    .line 12
    const-string v3, "MISC"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {p0, v4, p1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/content/ContentValues;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x1

    .line 48
    if-ne v2, v3, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
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

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 4
    .line 5
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

    .line 11
    .line 12
    aget-object v3, p1, v2

    .line 13
    .line 14
    const-string/jumbo v4, "com.android.proxyhandler"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    and-int/2addr v3, v4

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    const-string p0, "MiscPolicy"

    .line 40
    .line 41
    const-string p1, "Allowing Proxy Handler access"

    .line 42
    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return v4

    .line 47
    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 48
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

    .line 2
    .line 3
    const-string v0, "RESTRICTION"

    .line 4
    .line 5
    const-string/jumbo v1, "globalProxy"

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
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

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
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

    .line 22
    .line 23
    const-string v2, "Error on isNFCStarted"

    .line 24
    .line 25
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0

    .line 33
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final isNFCStateChangeAllowed()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const-string v0, "MISC"

    .line 4
    .line 5
    const-string/jumbo v1, "nfcStateChangeAllowed"

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
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

    .line 2
    .line 3
    const-string/jumbo v0, "isRingToneEntryExist : whereClause :"

    .line 4
    .line 5
    .line 6
    const-string v2, "_data=\'"

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    const-wide/16 v5, -0x1

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    move-object/from16 v2, p2

    .line 21
    .line 22
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, "\'"

    .line 26
    .line 27
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v12

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-object v0, p0

    .line 50
    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const-string v0, "_id"

    .line 57
    .line 58
    filled-new-array {v0}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    const/4 v13, 0x0

    .line 63
    const/4 v14, 0x0

    .line 64
    move-object/from16 v10, p1

    .line 65
    .line 66
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    if-eqz v7, :cond_0

    .line 71
    .line 72
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-lez v0, :cond_0

    .line 77
    .line 78
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 79
    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 83
    .line 84
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

    .line 92
    .line 93
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    if-eqz v7, :cond_1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string/jumbo v2, "isRingToneEntryExist : return "

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    return-wide v5

    .line 125
    :goto_4
    if-eqz v7, :cond_2

    .line 126
    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 128
    .line 129
    .line 130
    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    .line 132
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

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->updateSystemUIMonitor$2(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->updateAdminsBlockingNfcStateChange()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isAdminLockScreenStringSet(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ne v0, p1, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getLockSettings$1()Lcom/android/internal/widget/ILockSettings;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string/jumbo v1, "lock_screen_owner_info"

    .line 16
    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v1, "Couldn\'t write string "

    .line 30
    .line 31
    const-string v2, "MiscPolicy"

    .line 32
    .line 33
    invoke-static {v1, v0, v2}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->clearGlobalProxyEnable(Lcom/samsung/android/knox/ContextInfo;)I

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public final refreshCredentialsDialogFails()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    const/16 v3, 0x3e8

    .line 10
    .line 11
    if-eq v2, v3, :cond_0

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string v2, "LocalProxyManager"

    .line 23
    .line 24
    const-string v3, "Refresh proxy credentials dialog"

    .line 25
    .line 26
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance v2, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;

    .line 35
    .line 36
    const/4 v3, 0x5

    .line 37
    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public final retrieveExternalProxy()Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isCalledFromProxyHandler(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "LocalProxyManager"

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    const-string p0, "Get current applied global proxy"

    .line 39
    .line 40
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-object v2, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    if-eqz p0, :cond_2

    .line 46
    .line 47
    const-string v2, "Get current applied default proxy"

    .line 48
    .line 49
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    move-object v2, p0

    .line 53
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    return-object v2

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final retrieveProxyCredentials(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isCalledFromProxyHandler(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 22
    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getProxyCredentials(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final retrieveSystemFontSizes()V
    .locals 7

    .line 1
    const-string/jumbo v0, "com.android.settings"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string v1, "MiscPolicy"

    .line 10
    .line 11
    const-string/jumbo v2, "retrieveSystemFontSizes(): start to retrieve system font sizes."

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    const-string/jumbo p0, "retrieveSystemFontSizes(): failed because Setting Context is null"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
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

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-static {v4}, Lcom/android/server/enterprise/general/MiscPolicy;->supportBigFont(Landroid/content/Context;)Z

    .line 49
    .line 50
    .line 51
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    const-string v6, "array"

    .line 53
    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    :try_start_2
    const-string/jumbo v4, "sec_entryvalues_big_font_size"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v4, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const-string/jumbo v4, "sec_entryvalues_8_step_font_size"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v4, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    :goto_0
    if-nez v0, :cond_3

    .line 72
    .line 73
    const-string/jumbo p0, "retrieveSystemFontSizes() : failed to get resource ID. "

    .line 74
    .line 75
    .line 76
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    :try_start_3
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    array-length v4, v0

    .line 88
    new-array v4, v4, [F

    .line 89
    .line 90
    iput-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    :goto_1
    iget-object v5, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 94
    .line 95
    array-length v6, v5

    .line 96
    if-ge v4, v6, :cond_4

    .line 97
    .line 98
    aget-object v6, v0, v4

    .line 99
    .line 100
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    aput v6, v5, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    .line 106
    add-int/lit8 v4, v4, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :goto_3
    :try_start_4
    const-string/jumbo v0, "retrieveSystemFontSizes() failed: unexpected exception. "

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :goto_4
    return-void

    .line 121
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public final saveAuthConfigToDb(ILcom/samsung/android/knox/net/ProxyProperties;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->isAuthenticationConfigured()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getAuthConfigList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/samsung/android/knox/net/AuthConfig;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 29
    .line 30
    new-instance v3, Landroid/content/ContentValues;

    .line 31
    .line 32
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-string v5, "adminUid"

    .line 40
    .line 41
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getHost()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string/jumbo v5, "host"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getPort()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string/jumbo v5, "port"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    .line 67
    .line 68
    const-string/jumbo v4, "username"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string/jumbo v4, "password"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v0, "GlobalProxyAuthTable"

    .line 89
    .line 90
    invoke-virtual {v2, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    const-wide/16 v4, -0x1

    .line 95
    .line 96
    cmp-long v0, v2, v4

    .line 97
    .line 98
    if-nez v0, :cond_0

    .line 99
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

    .line 2
    .line 3
    new-instance v0, Landroid/content/ContentValues;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-string v2, ""

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    .line 21
    .line 22
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

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 37
    .line 38
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

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    array-length v5, v4

    .line 55
    if-lez v5, :cond_2

    .line 56
    .line 57
    const-string v2, ","

    .line 58
    .line 59
    invoke-static {v2, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :cond_2
    const-string v4, "adminUid"

    .line 64
    .line 65
    const-string/jumbo v5, "host"

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0, v4, v5, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/net/ProxyInfo;->getPort()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string/jumbo p2, "port"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    .line 84
    .line 85
    const-string/jumbo p1, "pacfile"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string/jumbo p1, "exclusion"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string p1, "GlobalProxyTable"

    .line 98
    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 100
    .line 101
    .line 102
    move-result-wide p0

    .line 103
    const-wide/16 v0, -0x1

    .line 104
    .line 105
    cmp-long p0, p0, v0

    .line 106
    .line 107
    if-nez p0, :cond_3

    .line 108
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

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "credentials_fails_count"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iput p2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsCount:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput p2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->credentialsFailsState:I

    .line 17
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

    .line 3
    .line 4
    const-string v1, "KNOX_SECURE_NETWORK"

    .line 5
    .line 6
    const-string/jumbo v2, "setGlobalProxy"

    .line 7
    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "proxyTp"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    xor-int/2addr v2, v6

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "proxyAuth"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->isAuthenticationConfigured()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    xor-int/2addr v2, v6

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Lcom/android/server/enterprise/general/MiscPolicy;->validateProxyProperties(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    .line 43
    .line 44
    .line 45
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const/4 v1, 0x0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return v1

    .line 51
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 58
    .line 59
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 62
    .line 63
    const-string v4, "RESTRICTION"

    .line 64
    .line 65
    const-string/jumbo v5, "globalProxy"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0
    :try_end_2
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    :try_start_3
    const-string p1, "MiscPolicy"

    .line 76
    .line 77
    const-string/jumbo p2, "setGlobalProxy.SettingNotFoundException"

    .line 78
    .line 79
    .line 80
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    .line 82
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

    .line 87
    .line 88
    :cond_2
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    .line 89
    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    const-string/jumbo v2, "connectivity"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 102
    .line 103
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    .line 104
    .line 105
    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    .line 107
    if-nez v0, :cond_4

    .line 108
    .line 109
    monitor-exit p0

    .line 110
    return v1

    .line 111
    :cond_4
    :try_start_5
    invoke-static {p2}, Lcom/android/server/enterprise/utils/NetworkUtils;->convertToProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->isValid()Z

    .line 116
    .line 117
    .line 118
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 119
    if-nez v2, :cond_5

    .line 120
    .line 121
    monitor-exit p0

    .line 122
    return v1

    .line 123
    :cond_5
    :try_start_6
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 124
    .line 125
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 126
    .line 127
    iget v11, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 128
    .line 129
    const-string v8, "RESTRICTION"

    .line 130
    .line 131
    const-string/jumbo v12, "globalProxy"

    .line 132
    .line 133
    .line 134
    move v10, v1

    .line 135
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 139
    if-nez v2, :cond_6

    .line 140
    .line 141
    monitor-exit p0

    .line 142
    return v1

    .line 143
    :cond_6
    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 144
    .line 145
    const-string v3, "GlobalProxyAuthTable"

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 152
    .line 153
    const-string v3, "GlobalProxyTable"

    .line 154
    .line 155
    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 156
    .line 157
    .line 158
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 159
    .line 160
    invoke-virtual {v2, v4}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V

    .line 161
    .line 162
    .line 163
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 164
    .line 165
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->saveAuthConfigToDb(ILcom/samsung/android/knox/net/ProxyProperties;)Z

    .line 166
    .line 167
    .line 168
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 169
    if-nez v2, :cond_7

    .line 170
    .line 171
    monitor-exit p0

    .line 172
    return v1

    .line 173
    :cond_7
    :try_start_8
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 174
    .line 175
    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->saveProxyInfoToDb(ILandroid/net/ProxyInfo;)Z

    .line 176
    .line 177
    .line 178
    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 179
    if-nez v0, :cond_8

    .line 180
    .line 181
    monitor-exit p0

    .line 182
    return v1

    .line 183
    :cond_8
    :try_start_9
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_9

    .line 192
    .line 193
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    .line 199
    .line 200
    if-eqz v0, :cond_9

    .line 201
    .line 202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 203
    .line 204
    .line 205
    move-result-wide v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 206
    :try_start_a
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mCon:Landroid/net/ConnectivityManager;

    .line 207
    .line 208
    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 209
    .line 210
    .line 211
    :try_start_b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :catchall_1
    move-exception p1

    .line 216
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    .line 218
    .line 219
    throw p1

    .line 220
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 221
    .line 222
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateGlobalProxy(Lcom/samsung/android/knox/net/ProxyProperties;)V

    .line 223
    .line 224
    .line 225
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 226
    .line 227
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 228
    .line 229
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 230
    .line 231
    const-string v4, "RESTRICTION"

    .line 232
    .line 233
    const-string/jumbo v8, "globalProxy"

    .line 234
    .line 235
    .line 236
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 237
    .line 238
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

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/samsung/android/knox/net/ProxyProperties;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/samsung/android/knox/net/ProxyProperties;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/net/ProxyProperties;->setHostname(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p3}, Lcom/samsung/android/knox/net/ProxyProperties;->setPortNumber(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p4}, Lcom/samsung/android/knox/net/ProxyProperties;->setExclusionList(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->setGlobalProxy(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final setGlobalProxyEnforcingSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndOldSecurityOrNewGlobalProxyPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->setGlobalProxy(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/ProxyProperties;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final setProxyCredentials(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceMDMAppCaller()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    return-void

    .line 14
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v2, "LocalProxyManager"

    .line 24
    .line 25
    const-string v3, "Set proxy credentials callback to proxy server"

    .line 26
    .line 27
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance v2, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;

    .line 31
    .line 32
    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final setRingerBytes(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p6

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    .line 7
    invoke-virtual {v0, p6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result p6

    .line 15
    iget-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v1, v0, p6}, Lcom/android/server/enterprise/utils/Utils;->isPlatformSignedApp(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 18
    .line 19
    .line 20
    move-result p6

    .line 21
    const-string v0, "MiscPolicy"

    .line 22
    .line 23
    if-eqz p6, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p6

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "MDM_SECURITY Permission is not granted - Check for WRITE_SETTINGS permission "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p6

    .line 41
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p6

    .line 48
    invoke-static {v0, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM$15()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 52
    .line 53
    .line 54
    move-result-object p6

    .line 55
    const-string v1, "android.permission.WRITE_SETTINGS"

    .line 56
    .line 57
    invoke-virtual {p6, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 62
    .line 63
    .line 64
    :goto_0
    const-string p1, "artist"

    .line 65
    .line 66
    const-string p6, "Ringtone entry exist deleting it :"

    .line 67
    .line 68
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    :try_start_1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/general/MiscPolicy;->isRingToneEntryExist(Landroid/net/Uri;Ljava/lang/String;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    const-wide/16 v5, -0x1

    .line 77
    .line 78
    cmp-long v5, v5, v3

    .line 79
    .line 80
    if-eqz v5, :cond_1

    .line 81
    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p6

    .line 94
    invoke-static {v0, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    iget-object p6, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 100
    .line 101
    .line 102
    move-result-object p6

    .line 103
    invoke-static {p2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const/4 v3, 0x0

    .line 108
    invoke-virtual {p6, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    .line 110
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

    .line 117
    .line 118
    invoke-direct {p6}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v0, "_data"

    .line 122
    .line 123
    invoke-virtual {p6, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string/jumbo p3, "title"

    .line 127
    .line 128
    .line 129
    const-string v0, "IT Admin tone"

    .line 130
    .line 131
    invoke-virtual {p6, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string p3, "_size"

    .line 135
    .line 136
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 137
    .line 138
    .line 139
    move-result-object p4

    .line 140
    invoke-virtual {p6, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    .line 142
    .line 143
    const-string/jumbo p3, "mime_type"

    .line 144
    .line 145
    .line 146
    const-string p4, "audio/*"

    .line 147
    .line 148
    invoke-virtual {p6, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p6, p1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string/jumbo p1, "is_ringtone"

    .line 155
    .line 156
    .line 157
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 158
    .line 159
    invoke-virtual {p6, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 160
    .line 161
    .line 162
    const-string/jumbo p1, "is_notification"

    .line 163
    .line 164
    .line 165
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 166
    .line 167
    invoke-virtual {p6, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 168
    .line 169
    .line 170
    const-string/jumbo p1, "is_alarm"

    .line 171
    .line 172
    .line 173
    invoke-virtual {p6, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 174
    .line 175
    .line 176
    const-string/jumbo p1, "is_music"

    .line 177
    .line 178
    .line 179
    invoke-virtual {p6, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p1, p2, p6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 189
    .line 190
    .line 191
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :goto_3
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    .line 198
    .line 199
    goto :goto_2

    .line 200
    :goto_4
    if-eqz p2, :cond_2

    .line 201
    .line 202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 203
    .line 204
    .line 205
    move-result-wide p3

    .line 206
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 207
    .line 208
    const/4 p1, 0x1

    .line 209
    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 210
    .line 211
    .line 212
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 213
    .line 214
    .line 215
    :cond_2
    return-void

    .line 216
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    .line 218
    .line 219
    throw p0
.end method

.method public final setSystemActiveFont(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    iget-object v3, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 13
    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    new-instance v3, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 17
    .line 18
    invoke-direct {v3, v0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;)V

    .line 19
    .line 20
    .line 21
    iput-object v3, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 22
    .line 23
    :cond_1
    iget-object v0, v0, Lcom/android/server/enterprise/general/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string/jumbo v3, "setSystemActiveFont():Start"

    .line 29
    .line 30
    .line 31
    const-string v4, "MiscPolicy"

    .line 32
    .line 33
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    const-string/jumbo v0, "setSystemActiveFont():Invalid input"

    .line 39
    .line 40
    .line 41
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto/16 :goto_f

    .line 45
    .line 46
    :cond_2
    new-instance v3, Lcom/android/server/enterprise/general/font/FontWriter;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    iput-object v5, v3, Lcom/android/server/enterprise/general/font/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 53
    .line 54
    iput-object v5, v3, Lcom/android/server/enterprise/general/font/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 55
    .line 56
    iput-object v5, v3, Lcom/android/server/enterprise/general/font/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 57
    .line 58
    iget-object v6, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    .line 59
    .line 60
    iget-object v7, v6, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    const/4 v9, 0x1

    .line 71
    if-nez v8, :cond_3

    .line 72
    .line 73
    const-string/jumbo v0, "changeFont():Installed font list is null"

    .line 74
    .line 75
    .line 76
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    goto/16 :goto_c

    .line 80
    .line 81
    :cond_3
    move v10, v2

    .line 82
    :goto_0
    array-length v11, v8

    .line 83
    if-ge v10, v11, :cond_5

    .line 84
    .line 85
    aget-object v11, v8, v10

    .line 86
    .line 87
    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v11

    .line 91
    if-eqz v11, :cond_4

    .line 92
    .line 93
    const-string/jumbo v11, "index"

    .line 94
    .line 95
    .line 96
    invoke-static {v10, v11, v4}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_5
    move v10, v2

    .line 104
    :goto_1
    const-string/jumbo v11, "default"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    if-eqz v11, :cond_6

    .line 112
    .line 113
    const-string/jumbo v5, "default#default"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/general/font/FontWriter;->writeLoc(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    aget-object v3, v8, v10

    .line 120
    .line 121
    invoke-virtual {v0, v10, v3}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(ILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string/jumbo v3, "default font is selected..."

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move v2, v9

    .line 143
    goto/16 :goto_c

    .line 144
    .line 145
    :cond_6
    iget-object v8, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/font/TypefaceFinder;

    .line 146
    .line 147
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    const-string/jumbo v11, "findMatchingTypefaceByName:"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v11, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    const-string v12, "TypefaceFinder"

    .line 158
    .line 159
    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move v11, v2

    .line 163
    :goto_2
    iget-object v13, v8, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 164
    .line 165
    check-cast v13, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    if-ge v11, v13, :cond_8

    .line 172
    .line 173
    iget-object v13, v8, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    .line 174
    .line 175
    check-cast v13, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v13

    .line 181
    check-cast v13, Lcom/android/server/enterprise/general/font/Typeface;

    .line 182
    .line 183
    new-instance v14, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string/jumbo v15, "findMatchingTypeface:"

    .line 186
    .line 187
    .line 188
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v15, v13, Lcom/android/server/enterprise/general/font/Typeface;->mName:Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {v14, v15, v12}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object v14, v13, Lcom/android/server/enterprise/general/font/Typeface;->mName:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v14

    .line 202
    if-eqz v14, :cond_7

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_8
    move-object v13, v5

    .line 209
    :goto_3
    if-nez v13, :cond_9

    .line 210
    .line 211
    const-string/jumbo v0, "change font failed"

    .line 212
    .line 213
    .line 214
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    goto/16 :goto_c

    .line 218
    .line 219
    :cond_9
    iget-object v8, v13, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 220
    .line 221
    if-eqz v8, :cond_a

    .line 222
    .line 223
    const-string/jumbo v11, "com.monotype.android.font."

    .line 224
    .line 225
    .line 226
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v11

    .line 230
    if-nez v11, :cond_a

    .line 231
    .line 232
    goto/16 :goto_c

    .line 233
    .line 234
    :cond_a
    iget-object v11, v13, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 235
    .line 236
    const-string v12, ".xml"

    .line 237
    .line 238
    const-string v14, ""

    .line 239
    .line 240
    invoke-virtual {v11, v12, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    const-string v12, " "

    .line 245
    .line 246
    const-string v14, "-"

    .line 247
    .line 248
    invoke-virtual {v11, v12, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v11

    .line 252
    const-string/jumbo v12, "createFontDirectory : Start"

    .line 253
    .line 254
    .line 255
    const-string v14, "FontWriter"

    .line 256
    .line 257
    invoke-static {v14, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    new-instance v12, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v15, "/data/app_fonts/"

    .line 263
    .line 264
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 268
    .line 269
    .line 270
    move-result v15

    .line 271
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v15

    .line 275
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v12

    .line 282
    new-instance v15, Ljava/io/File;

    .line 283
    .line 284
    invoke-direct {v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v15}, Ljava/io/File;->mkdir()Z

    .line 288
    .line 289
    .line 290
    invoke-virtual {v15, v9, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 291
    .line 292
    .line 293
    invoke-virtual {v15, v9, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 294
    .line 295
    .line 296
    invoke-virtual {v15, v9, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 297
    .line 298
    .line 299
    new-instance v12, Ljava/io/File;

    .line 300
    .line 301
    invoke-direct {v12, v15, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v15}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v11

    .line 308
    if-nez v11, :cond_b

    .line 309
    .line 310
    goto/16 :goto_9

    .line 311
    .line 312
    :cond_b
    move v5, v2

    .line 313
    :goto_4
    array-length v2, v11

    .line 314
    if-ge v5, v2, :cond_e

    .line 315
    .line 316
    aget-object v2, v11, v5

    .line 317
    .line 318
    new-instance v9, Ljava/io/File;

    .line 319
    .line 320
    invoke-direct {v9, v15, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    if-eqz v2, :cond_d

    .line 328
    .line 329
    move-object/from16 p3, v11

    .line 330
    .line 331
    const/4 v1, 0x0

    .line 332
    :goto_5
    array-length v11, v2

    .line 333
    if-ge v1, v11, :cond_c

    .line 334
    .line 335
    new-instance v11, Ljava/io/File;

    .line 336
    .line 337
    move-object/from16 v16, v15

    .line 338
    .line 339
    aget-object v15, v2, v1

    .line 340
    .line 341
    invoke-direct {v11, v9, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 345
    .line 346
    .line 347
    add-int/lit8 v1, v1, 0x1

    .line 348
    .line 349
    move-object/from16 v15, v16

    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_c
    move-object/from16 v16, v15

    .line 353
    .line 354
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 355
    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_d
    move-object/from16 p3, v11

    .line 359
    .line 360
    move-object/from16 v16, v15

    .line 361
    .line 362
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 363
    .line 364
    move-object/from16 v1, p2

    .line 365
    .line 366
    move-object/from16 v11, p3

    .line 367
    .line 368
    move-object/from16 v15, v16

    .line 369
    .line 370
    const/4 v9, 0x1

    .line 371
    goto :goto_4

    .line 372
    :cond_e
    invoke-virtual {v12}, Ljava/io/File;->mkdir()Z

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-eqz v1, :cond_f

    .line 377
    .line 378
    const-string v1, "Font directory  : Created"

    .line 379
    .line 380
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    goto :goto_7

    .line 384
    :cond_f
    const-string v1, "Font directory  : Not Created"

    .line 385
    .line 386
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    :goto_7
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .line 397
    .line 398
    const-string/jumbo v5, "chmod 711 "

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    if-nez v1, :cond_10

    .line 427
    .line 428
    goto :goto_8

    .line 429
    :cond_10
    new-instance v1, Ljava/io/IOException;

    .line 430
    .line 431
    const-string v2, "Cannot chmod"

    .line 432
    .line 433
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :catch_0
    const-string v1, "InterruptedException : "

    .line 438
    .line 439
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .line 441
    .line 442
    goto :goto_8

    .line 443
    :catch_1
    const-string v1, "IOException : "

    .line 444
    .line 445
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    :goto_8
    move-object v5, v12

    .line 449
    :goto_9
    if-nez v5, :cond_11

    .line 450
    .line 451
    const-string/jumbo v0, "create fontDir object is null "

    .line 452
    .line 453
    .line 454
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    :goto_a
    const/4 v2, 0x0

    .line 458
    goto :goto_c

    .line 459
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 460
    .line 461
    .line 462
    move-result-wide v1

    .line 463
    const/4 v9, 0x0

    .line 464
    :goto_b
    iget-object v11, v13, Lcom/android/server/enterprise/general/font/Typeface;->mSansFonts:Ljava/util/List;

    .line 465
    .line 466
    check-cast v11, Ljava/util/ArrayList;

    .line 467
    .line 468
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 469
    .line 470
    .line 471
    move-result v11

    .line 472
    if-ge v9, v11, :cond_12

    .line 473
    .line 474
    iget-object v11, v13, Lcom/android/server/enterprise/general/font/Typeface;->mSansFonts:Ljava/util/List;

    .line 475
    .line 476
    check-cast v11, Ljava/util/ArrayList;

    .line 477
    .line 478
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v11

    .line 482
    check-cast v11, Lcom/android/server/enterprise/general/font/TypefaceFile;

    .line 483
    .line 484
    :try_start_1
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 485
    .line 486
    .line 487
    move-result-object v12

    .line 488
    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 489
    .line 490
    .line 491
    move-result-object v12

    .line 492
    new-instance v14, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .line 496
    .line 497
    const-string/jumbo v15, "fonts/"

    .line 498
    .line 499
    .line 500
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    iget-object v15, v11, Lcom/android/server/enterprise/general/font/TypefaceFile;->fileName:Ljava/lang/String;

    .line 504
    .line 505
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v14

    .line 512
    invoke-virtual {v12, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 513
    .line 514
    .line 515
    move-result-object v12

    .line 516
    iget-object v11, v11, Lcom/android/server/enterprise/general/font/TypefaceFile;->droidName:Ljava/lang/String;

    .line 517
    .line 518
    invoke-virtual {v3, v5, v12, v11}, Lcom/android/server/enterprise/general/font/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 519
    .line 520
    .line 521
    add-int/lit8 v9, v9, 0x1

    .line 522
    .line 523
    goto :goto_b

    .line 524
    :catch_2
    move-exception v0

    .line 525
    const-string/jumbo v3, "changeFont():Exception"

    .line 526
    .line 527
    .line 528
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .line 530
    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    const-string v5, "Exception"

    .line 534
    .line 535
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 549
    .line 550
    .line 551
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 552
    .line 553
    .line 554
    goto :goto_a

    .line 555
    :cond_12
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/general/font/FontWriter;->writeLoc(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    iget-object v1, v13, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 566
    .line 567
    invoke-virtual {v0, v10, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(ILjava/lang/String;)V

    .line 568
    .line 569
    .line 570
    const-string/jumbo v0, "change font:Done"

    .line 571
    .line 572
    .line 573
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .line 575
    .line 576
    const/4 v2, 0x1

    .line 577
    :goto_c
    if-nez v2, :cond_13

    .line 578
    .line 579
    :goto_d
    const/4 v2, 0x0

    .line 580
    goto :goto_f

    .line 581
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 582
    .line 583
    .line 584
    move-result-wide v7

    .line 585
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    .line 594
    .line 595
    .line 596
    move-result v3

    .line 597
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 598
    .line 599
    .line 600
    move-result v3

    .line 601
    const/4 v5, 0x1

    .line 602
    add-int/2addr v3, v5

    .line 603
    iput v3, v1, Landroid/content/res/Configuration;->FlipFont:I

    .line 604
    .line 605
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 606
    .line 607
    .line 608
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 609
    .line 610
    .line 611
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 612
    .line 613
    .line 614
    move-result-wide v0

    .line 615
    iget-object v3, v6, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 616
    .line 617
    const-string v4, "activity"

    .line 618
    .line 619
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v3

    .line 623
    check-cast v3, Landroid/app/ActivityManager;

    .line 624
    .line 625
    const/16 v4, 0x32

    .line 626
    .line 627
    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 628
    .line 629
    .line 630
    move-result-object v4

    .line 631
    if-eqz v4, :cond_14

    .line 632
    .line 633
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 638
    .line 639
    .line 640
    move-result v5

    .line 641
    if-eqz v5, :cond_14

    .line 642
    .line 643
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v5

    .line 647
    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 648
    .line 649
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 650
    .line 651
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v5

    .line 655
    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    goto :goto_e

    .line 659
    :cond_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 660
    .line 661
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

    .line 666
    .line 667
    .line 668
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 669
    .line 670
    .line 671
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 672
    .line 673
    .line 674
    goto :goto_d

    .line 675
    :goto_f
    return v2

    .line 676
    :goto_10
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 677
    .line 678
    .line 679
    throw v0
.end method

.method public final setSystemActiveFontSize(Lcom/samsung/android/knox/ContextInfo;F)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy;->enforceOwnerOnlyAndSecurityPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->retrieveSystemFontSizes()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 8
    .line 9
    const-string v0, "MiscPolicy"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const-string/jumbo p0, "setSystemActiveFontSize() : failed to retrieve font datas."

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string/jumbo v2, "font_size"

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/general/MiscPolicy;->floatToIndex(F)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 39
    .line 40
    array-length v3, v3

    .line 41
    const/4 v4, 0x1

    .line 42
    sub-int/2addr v3, v4

    .line 43
    if-ne p1, p2, :cond_1

    .line 44
    .line 45
    const-string/jumbo p0, "setSystemActiveFontSize() : same font size"

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return v4

    .line 52
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 53
    .line 54
    .line 55
    move-result-wide v5

    .line 56
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-static {v7, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    const-string/jumbo v7, "large_font"

    .line 66
    .line 67
    .line 68
    const/high16 v8, 0x1000000

    .line 69
    .line 70
    const-string v9, "android.settings.FONT_SIZE_CHANGED"

    .line 71
    .line 72
    if-ge p1, v3, :cond_2

    .line 73
    .line 74
    if-ne p2, v3, :cond_2

    .line 75
    .line 76
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    .line 77
    .line 78
    invoke-direct {p1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {v3, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    .line 91
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

    .line 96
    .line 97
    if-ge p2, v3, :cond_3

    .line 98
    .line 99
    new-instance p1, Landroid/content/Intent;

    .line 100
    .line 101
    invoke-direct {p1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    invoke-virtual {v3, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    :cond_3
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    .line 117
    .line 118
    new-instance p1, Landroid/content/res/Configuration;

    .line 119
    .line 120
    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v3, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mFontSizes:[F

    .line 124
    .line 125
    aget v3, v3, p2

    .line 126
    .line 127
    iput v3, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 128
    .line 129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 130
    .line 131
    .line 132
    move-result-wide v5

    .line 133
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-interface {v3, p1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    .line 148
    .line 149
    const/4 p1, 0x7

    .line 150
    if-lt p2, p1, :cond_4

    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    const-string p1, "accessiblity_font_switch"

    .line 159
    .line 160
    invoke-static {p0, p1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    .line 162
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

    .line 169
    .line 170
    .line 171
    move v1, v4

    .line 172
    goto :goto_3

    .line 173
    :goto_2
    :try_start_3
    const-string/jumbo p1, "setSystemActiveFontSize(): failed to set font size. "

    .line 174
    .line 175
    .line 176
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 177
    .line 178
    .line 179
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    .line 181
    .line 182
    :goto_3
    return v1

    .line 183
    :goto_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    .line 185
    .line 186
    throw p0

    .line 187
    :goto_5
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    .line 189
    .line 190
    throw p0
.end method

.method public final showCredentialsDialogNotification(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isCalledFromProxyHandler(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v2, "Show credentials dialog notification"

    .line 26
    .line 27
    const-string v3, "LocalProxyManager"

    .line 28
    .line 29
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    new-instance v2, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string p0, "NotificationManager is null"

    .line 52
    .line 53
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method public final startNFC(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getEDM$15()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    .line 8
    .line 9
    .line 10
    filled-new-array {v2}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    sget-object v4, Lcom/android/server/enterprise/general/MiscPolicy;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 37
    .line 38
    new-instance v5, Ljava/util/Date;

    .line 39
    .line 40
    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, " callerUid="

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p1, " value="

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/16 v0, 0xa

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    if-le p1, v0, :cond_0

    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mStartNFCHistoryList:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    if-eqz p2, :cond_1

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 104
    .line 105
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

    .line 112
    .line 113
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

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :catch_0
    :try_start_1
    const-string p0, "MiscPolicy"

    .line 121
    .line 122
    const-string p1, "Error on Start/Stop NFC"

    .line 123
    .line 124
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :goto_2
    return v1

    .line 129
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    .line 131
    .line 132
    throw p0
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->updateAdminsBlockingNfcStateChange()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final updateAdminsBlockingNfcStateChange()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mAdminsBlockingNfcStateChange:Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 9
    .line 10
    const-string/jumbo v1, "nfcStateChangeAllowed"

    .line 11
    .line 12
    .line 13
    const-string v2, "adminUid"

    .line 14
    .line 15
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    const-string v5, "MISC"

    .line 21
    .line 22
    invoke-virtual {v0, v4, v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroid/content/ContentValues;

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    :goto_1
    if-nez v4, :cond_0

    .line 61
    .line 62
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mAdminsBlockingNfcStateChange:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setNFCStateChangeAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
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

    .line 26
    .line 27
    const-string/jumbo v0, "setNFCStateChangeAllowedSystemUI() failed. "

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :goto_1
    return-void

    .line 35
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method
