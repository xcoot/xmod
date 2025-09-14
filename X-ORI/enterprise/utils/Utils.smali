.class public abstract Lcom/android/server/enterprise/utils/Utils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final HEX_DIGITS:[C

.field public static final MY_PID:I

.field public static final customPermissions:[Ljava/lang/String;

.field public static final daAllowedPermission:[Ljava/lang/String;

.field public static final premiumPermissions:[Ljava/lang/String;

.field public static final standardPermissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->HEX_DIGITS:[C

    .line 9
    .line 10
    const-string/jumbo v30, "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v31, "com.samsung.android.knox.permission.KNOX_WIFI"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_APN"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_BLUETOOTH"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_LDAP"

    .line 32
    .line 33
    .line 34
    const-string/jumbo v7, "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

    .line 35
    .line 36
    .line 37
    const-string/jumbo v8, "com.samsung.android.knox.permission.KNOX_LOCATION"

    .line 38
    .line 39
    .line 40
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    .line 41
    .line 42
    .line 43
    const-string/jumbo v10, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v11, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v12, "com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v13, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    .line 53
    .line 54
    .line 55
    const-string/jumbo v14, "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    .line 56
    .line 57
    .line 58
    const-string/jumbo v15, "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

    .line 59
    .line 60
    .line 61
    const-string/jumbo v16, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    .line 62
    .line 63
    .line 64
    const-string/jumbo v17, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    .line 65
    .line 66
    .line 67
    const-string/jumbo v18, "com.samsung.android.knox.permission.KNOX_DEX"

    .line 68
    .line 69
    .line 70
    const-string/jumbo v19, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    .line 71
    .line 72
    .line 73
    const-string/jumbo v20, "com.samsung.android.knox.permission.KNOX_EMAIL"

    .line 74
    .line 75
    .line 76
    const-string/jumbo v21, "com.samsung.android.knox.permission.KNOX_ROAMING"

    .line 77
    .line 78
    .line 79
    const-string/jumbo v22, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    .line 80
    .line 81
    .line 82
    const-string/jumbo v23, "com.samsung.android.knox.permission.KNOX_SECURITY"

    .line 83
    .line 84
    .line 85
    const-string/jumbo v24, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    .line 86
    .line 87
    .line 88
    const-string/jumbo v25, "com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

    .line 89
    .line 90
    .line 91
    const-string/jumbo v26, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    .line 92
    .line 93
    .line 94
    const-string/jumbo v27, "com.samsung.android.knox.permission.KNOX_SPDCONTROL"

    .line 95
    .line 96
    .line 97
    const-string/jumbo v28, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    .line 98
    .line 99
    .line 100
    const-string/jumbo v29, "com.samsung.android.knox.permission.KNOX_VPN"

    .line 101
    .line 102
    .line 103
    const-string/jumbo v32, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    .line 104
    .line 105
    .line 106
    const-string/jumbo v33, "com.samsung.android.knox.permission.KNOX_ENHANCED_ATTESTATION"

    .line 107
    .line 108
    .line 109
    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->standardPermissions:[Ljava/lang/String;

    .line 114
    .line 115
    const-string/jumbo v19, "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

    .line 116
    .line 117
    .line 118
    const-string/jumbo v20, "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

    .line 119
    .line 120
    .line 121
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT"

    .line 122
    .line 123
    .line 124
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_DLP_MGMT"

    .line 125
    .line 126
    .line 127
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 128
    .line 129
    .line 130
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_EBILLING"

    .line 131
    .line 132
    .line 133
    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

    .line 134
    .line 135
    .line 136
    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_NPA"

    .line 137
    .line 138
    .line 139
    const-string/jumbo v7, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    .line 140
    .line 141
    .line 142
    const-string/jumbo v8, "com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

    .line 143
    .line 144
    .line 145
    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

    .line 146
    .line 147
    .line 148
    const-string/jumbo v10, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    .line 149
    .line 150
    .line 151
    const-string/jumbo v11, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    .line 152
    .line 153
    .line 154
    const-string/jumbo v12, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    .line 155
    .line 156
    .line 157
    const-string/jumbo v13, "com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT"

    .line 158
    .line 159
    .line 160
    const-string/jumbo v14, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    .line 161
    .line 162
    .line 163
    const-string/jumbo v15, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 164
    .line 165
    .line 166
    const-string/jumbo v16, "com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

    .line 167
    .line 168
    .line 169
    const-string/jumbo v17, "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    .line 170
    .line 171
    .line 172
    const-string/jumbo v18, "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    .line 173
    .line 174
    .line 175
    const-string/jumbo v21, "com.samsung.android.knox.permission.KNOX_HDM"

    .line 176
    .line 177
    .line 178
    const-string/jumbo v22, "com.samsung.android.knox.permission.KNOX_CRITICAL_COMMUNICATIONS"

    .line 179
    .line 180
    .line 181
    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->premiumPermissions:[Ljava/lang/String;

    .line 186
    .line 187
    const-string/jumbo v0, "com.samsung.android.knox.permission.CUSTOM_PROKIOSK"

    .line 188
    .line 189
    .line 190
    const-string/jumbo v1, "com.samsung.android.knox.permission.CUSTOM_SETTING"

    .line 191
    .line 192
    .line 193
    const-string/jumbo v2, "com.samsung.android.knox.permission.CUSTOM_SYSTEM"

    .line 194
    .line 195
    .line 196
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

    .line 197
    .line 198
    .line 199
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->customPermissions:[Ljava/lang/String;

    .line 204
    .line 205
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_API_ACCESS_GRANT"

    .line 206
    .line 207
    .line 208
    filled-new-array {v0}, [Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->daAllowedPermission:[Ljava/lang/String;

    .line 213
    .line 214
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    sput v0, Lcom/android/server/enterprise/utils/Utils;->MY_PID:I

    .line 219
    .line 220
    return-void

    .line 221
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static comparePackageSignature(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_6

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto/16 :goto_6

    .line 7
    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const/high16 v3, 0x8000000

    .line 13
    .line 14
    const/16 v4, 0x40

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    move-object v5, p1

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_5

    .line 39
    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :catch_1
    move-exception p1

    .line 43
    move-object p0, v5

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v6, p2, v4, p0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, p2, v3, p0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 58
    .line 59
    .line 60
    move-result-object p0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    move-object v5, p0

    .line 62
    move-object p0, v4

    .line 63
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catch_2
    move-exception p1

    .line 68
    move-object p0, v4

    .line 69
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :goto_2
    const/4 p1, 0x1

    .line 74
    if-eqz p0, :cond_3

    .line 75
    .line 76
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 77
    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    array-length p2, p0

    .line 81
    move v1, v0

    .line 82
    :goto_3
    if-ge v1, p2, :cond_3

    .line 83
    .line 84
    aget-object v2, p0, v1

    .line 85
    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_2

    .line 97
    .line 98
    return p1

    .line 99
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_3
    if-eqz v5, :cond_5

    .line 103
    .line 104
    iget-object p0, v5, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 105
    .line 106
    if-eqz p0, :cond_5

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    array-length p2, p0

    .line 113
    move v1, v0

    .line 114
    :goto_4
    if-ge v1, p2, :cond_5

    .line 115
    .line 116
    aget-object v2, p0, v1

    .line 117
    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    return p1

    .line 131
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_5
    return v0

    .line 135
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :cond_6
    :goto_6
    const-string p0, "EnterpriseUtils"

    .line 140
    .line 141
    const-string p1, "Invalid arguments"

    .line 142
    .line 143
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    return v0
.end method

.method public static compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v1, "android"

    .line 7
    .line 8
    const/16 v2, 0x40

    .line 9
    .line 10
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const-string v1, "EnterpriseUtils"

    .line 17
    .line 18
    const-string v2, "Could not Read package info"

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    if-eqz p0, :cond_3

    .line 24
    .line 25
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    new-instance v1, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 37
    .line 38
    array-length v2, p0

    .line 39
    move v3, v0

    .line 40
    :goto_0
    if-ge v3, v2, :cond_1

    .line 41
    .line 42
    aget-object v4, p0, v3

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p0, Ljava/util/HashSet;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 53
    .line 54
    .line 55
    array-length v2, p1

    .line 56
    move v3, v0

    .line 57
    :goto_1
    if-ge v3, v2, :cond_2

    .line 58
    .line 59
    aget-object v4, p1, v3

    .line 60
    .line 61
    invoke-virtual {p0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_3

    .line 72
    .line 73
    const/4 p0, 0x1

    .line 74
    return p0

    .line 75
    :cond_3
    return v0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    return v0
.end method

.method public static convertStringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    const-string v1, ","

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public static createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;
    .locals 5

    .line 1
    const-string v0, "Package name "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Creating context as user "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "EnterpriseUtils"

    .line 18
    .line 19
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    :try_start_0
    new-instance v1, Landroid/os/UserHandle;

    .line 27
    .line 28
    invoke-direct {v1, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, p2, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception p0

    .line 42
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " could not be found! "

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    :goto_0
    return-object p0

    .line 74
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public static deserializeObject([B)Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    .line 3
    .line 4
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 5
    .line 6
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :catch_0
    return-object v0
.end method

.method public static getAllUsers(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    const-string/jumbo v0, "user"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/os/UserManager;

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    :try_start_0
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_4

    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :goto_3
    return-object v0

    .line 68
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public static getApplicationPubKeyMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    goto :goto_3

    .line 7
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const/16 p0, 0x40

    .line 33
    .line 34
    invoke-static {p0, v2, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/16 p1, 0xb

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    :goto_0
    iget-object v4, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 48
    .line 49
    array-length v5, v4

    .line 50
    if-ge v2, v5, :cond_2

    .line 51
    .line 52
    aget-object v4, v4, v2

    .line 53
    .line 54
    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->getEncodedPubKey(Landroid/content/pm/Signature;)[B

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    invoke-static {v4, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-eqz v2, :cond_4

    .line 91
    .line 92
    const-string v3, "MD5"

    .line 93
    .line 94
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    move-object v2, v0

    .line 104
    :goto_2
    if-eqz v2, :cond_3

    .line 105
    .line 106
    invoke-static {v2, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_5
    return-object v1

    .line 115
    :cond_6
    :goto_3
    return-object v0
.end method

.method public static getApplicationSignaturesSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const/16 p0, 0x40

    .line 28
    .line 29
    invoke-static {p0, v0, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_6

    .line 34
    .line 35
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 36
    .line 37
    if-eqz p1, :cond_6

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    move v0, p1

    .line 41
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 42
    .line 43
    array-length v3, v2

    .line 44
    if-ge v0, v3, :cond_6

    .line 45
    .line 46
    aget-object v2, v2, v0

    .line 47
    .line 48
    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->getEncodedPubKey(Landroid/content/pm/Signature;)[B

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    const-string v3, "SHA-256"

    .line 55
    .line 56
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_5

    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    array-length v4, v2

    .line 69
    const/4 v5, 0x2

    .line 70
    mul-int/2addr v4, v5

    .line 71
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    .line 73
    .line 74
    move v4, p1

    .line 75
    :goto_1
    array-length v6, v2

    .line 76
    if-ge v4, v6, :cond_4

    .line 77
    .line 78
    aget-byte v6, v2, v4

    .line 79
    .line 80
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    const/4 v8, 0x1

    .line 89
    if-ne v7, v8, :cond_1

    .line 90
    .line 91
    const-string v9, "0"

    .line 92
    .line 93
    invoke-virtual {v9, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    :cond_1
    if-le v7, v5, :cond_2

    .line 98
    .line 99
    add-int/lit8 v9, v7, -0x2

    .line 100
    .line 101
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    array-length v6, v2

    .line 113
    sub-int/2addr v6, v8

    .line 114
    if-ge v4, v6, :cond_3

    .line 115
    .line 116
    const/16 v6, 0x3a

    .line 117
    .line 118
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_6
    return-object v1

    .line 135
    :cond_7
    :goto_2
    const/4 p0, 0x0

    .line 136
    return-object p0
.end method

.method public static getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 19
    .line 20
    const-class v1, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 27
    .line 28
    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 29
    .line 30
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string/jumbo v1, "getCallingOrCurrentUserId(): move: cxtInfo.mContainerId = "

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 50
    .line 51
    const-string v2, "EnterpriseUtils"

    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 57
    .line 58
    return p0

    .line 59
    :cond_2
    sget v0, Lcom/android/server/enterprise/utils/Utils;->MY_PID:I

    .line 60
    .line 61
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-ne v0, v1, :cond_3

    .line 66
    .line 67
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 72
    .line 73
    .line 74
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    return p0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_3
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 85
    .line 86
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    return p0
.end method

.method public static getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->$r8$clinit:I

    .line 13
    .line 14
    sget-object p0, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 17
    .line 18
    check-cast p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 19
    .line 20
    iget p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 24
    .line 25
    const-class v1, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 32
    .line 33
    iget v1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 34
    .line 35
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 47
    .line 48
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 49
    .line 50
    invoke-static {v0, p0}, Landroid/os/UserHandle;->getUid(II)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_2
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 56
    .line 57
    return p0
.end method

.method public static getEncodedPubKey(Landroid/content/pm/Signature;)[B
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "X.509"

    .line 6
    .line 7
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_1
    return-object v0
.end method

.method public static getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I
    .locals 5

    .line 1
    const-string v0, "adminUid"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Landroid/content/ContentValues;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-string/jumbo v4, "proxyUid"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    .line 21
    .line 22
    const-string v3, "PROXY_ADMIN_INFO"

    .line 23
    .line 24
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroid/content/ContentValues;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-eqz p0, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    :cond_0
    return p1
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5
    .line 6
    aget-object v3, p2, v2

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-nez v4, :cond_1

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    :try_start_0
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-interface {v4, v3, p1, v5}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :catch_0
    move-exception v3

    .line 50
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return v1
.end method

.method public static isPlatformSignedApp(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x40

    .line 13
    .line 14
    invoke-static {v1, p2, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p2

    .line 20
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    :goto_0
    if-nez p2, :cond_1

    .line 25
    .line 26
    const-string p0, "Couldnt get Package Info for package "

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "EnterpriseUtils"

    .line 33
    .line 34
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v0

    .line 38
    :cond_1
    :try_start_1
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 39
    .line 40
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->compareSystemSignature(Landroid/content/Context;[Landroid/content/pm/Signature;)Z

    .line 41
    .line 42
    .line 43
    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    return p0

    .line 45
    :catch_1
    move-exception p0

    .line 46
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    return v0
.end method

.method public static readPropertyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "="

    .line 2
    .line 3
    const-string v1, "/data/system/SimCard.dat"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, "EnterpriseUtils"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const-string p0, "File Not Found : /data/system/SimCard.dat"

    .line 15
    .line 16
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-object v4

    .line 20
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/io/BufferedReader;

    .line 26
    .line 27
    const/16 v3, 0x200

    .line 28
    .line 29
    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_4

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const/4 v6, 0x0

    .line 43
    aget-object v5, v5, v6

    .line 44
    .line 45
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    array-length v0, p0

    .line 56
    const/4 v3, 0x2

    .line 57
    if-ne v0, v3, :cond_2

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    aget-object p0, p0, v0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_6

    .line 65
    :catch_0
    move-exception p0

    .line 66
    goto :goto_4

    .line 67
    :cond_2
    const-string p0, ""

    .line 68
    .line 69
    :goto_0
    const-string/jumbo v0, "null"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move-object v4, p0

    .line 80
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catch_1
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    :goto_2
    return-object v4

    .line 92
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :catch_2
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    :goto_3
    return-object v4

    .line 104
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    .line 106
    .line 107
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 111
    .line 112
    .line 113
    goto :goto_5

    .line 114
    :catch_3
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    :goto_5
    return-object v4

    .line 119
    :goto_6
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 123
    .line 124
    .line 125
    goto :goto_7

    .line 126
    :catch_4
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    :goto_7
    throw p0

    .line 131
    :catch_5
    move-exception p0

    .line 132
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    const-string p0, "File access error /data/system/SimCard.dat"

    .line 136
    .line 137
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    return-object v4
.end method

.method public static serializeObject(Ljava/lang/Object;)[B
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public static writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 3
    .line 4
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const/16 v2, 0x1a4

    .line 21
    .line 22
    const/4 v3, -0x1

    .line 23
    invoke-static {p2, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    move-object p1, v0

    .line 29
    move-object v2, p1

    .line 30
    goto/16 :goto_b

    .line 31
    .line 32
    :catch_0
    move-exception p0

    .line 33
    move-object p1, v0

    .line 34
    move-object v2, p1

    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_0
    :goto_0
    new-instance p2, Ljava/io/FileReader;

    .line 38
    .line 39
    invoke-direct {p2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    .line 43
    .line 44
    const/16 v3, 0x200

    .line 45
    .line 46
    invoke-direct {v2, p2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 47
    .line 48
    .line 49
    :try_start_2
    new-instance v3, Ljava/lang/StringBuffer;

    .line 50
    .line 51
    const-string v4, ""

    .line 52
    .line 53
    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    move v5, v4

    .line 58
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    const-string/jumbo v7, "line.separator"

    .line 63
    .line 64
    .line 65
    const-string v8, "="

    .line 66
    .line 67
    if-eqz v6, :cond_2

    .line 68
    .line 69
    :try_start_3
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    aget-object v9, v9, v4

    .line 74
    .line 75
    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_1

    .line 80
    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    const/4 v5, 0x1

    .line 100
    goto :goto_4

    .line 101
    :catchall_1
    move-exception p0

    .line 102
    move-object p1, v0

    .line 103
    :goto_2
    move-object v0, p2

    .line 104
    goto/16 :goto_b

    .line 105
    .line 106
    :catch_1
    move-exception p0

    .line 107
    move-object p1, v0

    .line 108
    :goto_3
    move-object v0, p2

    .line 109
    goto/16 :goto_6

    .line 110
    .line 111
    :cond_1
    :goto_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    .line 113
    .line 114
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    if-nez v5, :cond_3

    .line 123
    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    .line 144
    .line 145
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    .line 151
    .line 152
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    .line 154
    .line 155
    :try_start_4
    new-instance p0, Ljava/io/PrintStream;

    .line 156
    .line 157
    invoke-direct {p0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 158
    .line 159
    .line 160
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 165
    .line 166
    .line 167
    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 168
    .line 169
    .line 170
    goto :goto_5

    .line 171
    :catch_2
    move-exception p1

    .line 172
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    .line 174
    .line 175
    :goto_5
    invoke-virtual {p0}, Ljava/io/PrintStream;->close()V

    .line 176
    .line 177
    .line 178
    goto :goto_a

    .line 179
    :catchall_2
    move-exception p1

    .line 180
    move-object v2, v0

    .line 181
    move-object v0, p2

    .line 182
    move-object v10, p1

    .line 183
    move-object p1, p0

    .line 184
    move-object p0, v10

    .line 185
    goto :goto_b

    .line 186
    :catch_3
    move-exception p1

    .line 187
    move-object v2, v0

    .line 188
    move-object v0, p2

    .line 189
    move-object v10, p1

    .line 190
    move-object p1, p0

    .line 191
    move-object p0, v10

    .line 192
    goto :goto_6

    .line 193
    :catchall_3
    move-exception p0

    .line 194
    move-object p1, v0

    .line 195
    move-object v2, p1

    .line 196
    goto :goto_2

    .line 197
    :catch_4
    move-exception p0

    .line 198
    move-object p1, v0

    .line 199
    move-object v2, p1

    .line 200
    goto :goto_3

    .line 201
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 202
    .line 203
    .line 204
    if-eqz v0, :cond_4

    .line 205
    .line 206
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 207
    .line 208
    .line 209
    goto :goto_7

    .line 210
    :catch_5
    move-exception p0

    .line 211
    goto :goto_8

    .line 212
    :cond_4
    :goto_7
    if-eqz v2, :cond_5

    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 215
    .line 216
    .line 217
    goto :goto_9

    .line 218
    :goto_8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 219
    .line 220
    .line 221
    :cond_5
    :goto_9
    if-eqz p1, :cond_6

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/io/PrintStream;->close()V

    .line 224
    .line 225
    .line 226
    :cond_6
    :goto_a
    return-void

    .line 227
    :catchall_4
    move-exception p0

    .line 228
    :goto_b
    if-eqz v0, :cond_7

    .line 229
    .line 230
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 231
    .line 232
    .line 233
    goto :goto_c

    .line 234
    :catch_6
    move-exception p2

    .line 235
    goto :goto_d

    .line 236
    :cond_7
    :goto_c
    if-eqz v2, :cond_8

    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 239
    .line 240
    .line 241
    goto :goto_e

    .line 242
    :goto_d
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    .line 244
    .line 245
    :cond_8
    :goto_e
    if-eqz p1, :cond_9

    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/io/PrintStream;->close()V

    .line 248
    .line 249
    .line 250
    :cond_9
    throw p0
.end method
