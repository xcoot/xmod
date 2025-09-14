.class public abstract Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;

.field public static final sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    const-string/jumbo v1, "storage_native_boot"

    .line 11
    .line 12
    .line 13
    const-string v2, "forced_scoped_storage_whitelist"

    .line 14
    .line 15
    const-string v3, ""

    .line 16
    .line 17
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v2, ","

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 38
    new-array v1, v1, [Ljava/lang/String;

    .line 39
    .line 40
    :goto_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;

    .line 48
    .line 49
    return-void
.end method

.method public static forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    .line 15
    .line 16
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-nez v6, :cond_3

    .line 21
    .line 22
    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 23
    .line 24
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-nez v6, :cond_0

    .line 29
    .line 30
    sget-object v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v6, v3, v7, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    and-int/lit16 v3, v3, 0x3800

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v4, v5

    .line 51
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    move v0, v5

    .line 56
    move v5, v4

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v0, v5

    .line 59
    :goto_1
    new-instance v1, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;

    .line 60
    .line 61
    invoke-direct {v1, v0, v5}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;-><init>(IZ)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_3
    if-eqz v1, :cond_b

    .line 66
    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const-class v7, Landroid/os/storage/StorageManagerInternal;

    .line 72
    .line 73
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    check-cast v7, Landroid/os/storage/StorageManagerInternal;

    .line 78
    .line 79
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v6, v3, v8, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    and-int/lit16 v3, v3, 0x3800

    .line 86
    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    move v3, v4

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    move v3, v5

    .line 92
    :goto_2
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 93
    .line 94
    invoke-virtual {v7, v6}, Landroid/os/storage/StorageManagerInternal;->hasLegacyExternalStorage(I)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 99
    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    if-nez v9, :cond_6

    .line 109
    .line 110
    :cond_5
    move v7, v5

    .line 111
    goto :goto_4

    .line 112
    :cond_6
    invoke-static {v7}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    array-length v10, v9

    .line 117
    move v11, v5

    .line 118
    :goto_3
    if-ge v11, v10, :cond_5

    .line 119
    .line 120
    aget-object v12, v9, v11

    .line 121
    .line 122
    :try_start_0
    invoke-virtual {v8, v12, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    .line 123
    .line 124
    .line 125
    move-result-object v12
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->hasRequestedLegacyExternalStorage()Z

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    if-eqz v12, :cond_7

    .line 131
    .line 132
    move v7, v4

    .line 133
    goto :goto_4

    .line 134
    :catch_0
    :cond_7
    add-int/2addr v11, v4

    .line 135
    goto :goto_3

    .line 136
    :goto_4
    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 137
    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    if-nez v8, :cond_8

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_8
    array-length v10, v8

    .line 150
    move v11, v5

    .line 151
    :goto_5
    if-ge v11, v10, :cond_a

    .line 152
    .line 153
    aget-object v12, v8, v11

    .line 154
    .line 155
    const-string v13, "android.permission.WRITE_MEDIA_STORAGE"

    .line 156
    .line 157
    invoke-virtual {v9, v13, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    if-nez v12, :cond_9

    .line 162
    .line 163
    move v5, v4

    .line 164
    goto :goto_6

    .line 165
    :cond_9
    add-int/2addr v11, v4

    .line 166
    goto :goto_5

    .line 167
    :cond_a
    :goto_6
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/AndroidPackage;->hasPreserveLegacyExternalStorage()Z

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    xor-int/lit8 v2, v3, 0x1

    .line 176
    .line 177
    sget-object v4, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->sForcedScopedStorageAppWhitelist:Ljava/util/HashSet;

    .line 178
    .line 179
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    move v11, v0

    .line 186
    move v13, v1

    .line 187
    move v12, v2

    .line 188
    move v10, v3

    .line 189
    move v14, v5

    .line 190
    move v15, v6

    .line 191
    move/from16 v16, v7

    .line 192
    .line 193
    move/from16 v17, v8

    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_b
    move v10, v5

    .line 197
    move v11, v10

    .line 198
    move v12, v11

    .line 199
    move v13, v12

    .line 200
    move v14, v13

    .line 201
    move v15, v14

    .line 202
    move/from16 v16, v15

    .line 203
    .line 204
    move/from16 v17, v16

    .line 205
    .line 206
    :goto_7
    new-instance v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;

    .line 207
    .line 208
    move-object v9, v0

    .line 209
    invoke-direct/range {v9 .. v17}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;-><init>(ZIZZZZZZ)V

    .line 210
    .line 211
    .line 212
    return-object v0
.end method

.method public static getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 6
    .line 7
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    if-ge v4, v2, :cond_1

    .line 19
    .line 20
    aget-object v5, v1, v4

    .line 21
    .line 22
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-nez v6, :cond_0

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p0, v5, v3, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 35
    .line 36
    invoke-static {v0, v5}, Ljava/lang/Integer;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    :catch_0
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return v0
.end method


# virtual methods
.method public getExtraAppOpCode()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public mayAllowExtraAppOp()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public mayDenyExtraAppOpIfGranted()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract mayGrantPermission()Z
.end method
