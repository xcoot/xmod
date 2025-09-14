.class public final Lcom/android/server/pm/UserSystemPackageInstaller;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUm:Lcom/android/server/pm/UserManagerService;

.field public final mUserTypes:[Ljava/lang/String;

.field public final mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    .line 3
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    const/16 v0, 0x40

    if-gt p1, v0, :cond_1

    .line 8
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->determineWhitelistedPackagesForUserTypes(Lcom/android/server/SystemConfig;)Landroid/util/ArrayMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    return-void

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Device contains "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " user types. However, UserSystemPackageInstaller does not work if there are more than 64 user types."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/util/ArrayMap;[Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    .line 12
    iput-object p3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    return-void
.end method

.method public static getWhitelistMode()I
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.debug.user.package_whitelist_mode"

    .line 2
    .line 3
    .line 4
    const/4 v1, -0x1

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const v1, 0x10e0165

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, -0x3e8

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p0, v0, :cond_0

    .line 7
    .line 8
    const-string v0, "USER_TYPE_PACKAGE_WHITELIST_MODE_"

    .line 9
    .line 10
    int-to-long v1, p0

    .line 11
    const-class p0, Lcom/android/server/pm/UserSystemPackageInstaller;

    .line 12
    .line 13
    invoke-static {p0, v0, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string p0, "DEVICE_DEFAULT"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    const-string p0, "NONE"

    .line 22
    .line 23
    return-object p0
.end method

.method public static shouldInstallPackage(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/util/ArrayMap;Ljava/util/Set;Z)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isOverlayIsStatic()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    if-eqz p3, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 p0, 0x0

    .line 38
    goto :goto_2

    .line 39
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 40
    :goto_2
    return p0
.end method

.method public static showIssues(Landroid/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string p1, "No "

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 21
    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 32
    .line 33
    .line 34
    :cond_2
    const/4 p3, 0x0

    .line 35
    :goto_0
    if-ge p3, v0, :cond_3

    .line 36
    .line 37
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 p3, p3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    if-eqz p1, :cond_4

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 52
    .line 53
    .line 54
    :cond_4
    return-void
.end method


# virtual methods
.method public determineWhitelistedPackagesForUserTypes(Lcom/android/server/SystemConfig;)Landroid/util/ArrayMap;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    move v5, v4

    .line 7
    const-wide/16 v6, 0x0

    .line 8
    .line 9
    const-wide/16 v8, 0x0

    .line 10
    .line 11
    const-wide/16 v10, 0x0

    .line 12
    .line 13
    :goto_0
    iget-object v12, v0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    .line 14
    .line 15
    array-length v13, v12

    .line 16
    const/4 v14, 0x1

    .line 17
    if-ge v5, v13, :cond_3

    .line 18
    .line 19
    aget-object v13, v12, v5

    .line 20
    .line 21
    iget-object v15, v0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    .line 22
    .line 23
    iget-object v2, v15, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/pm/UserTypeDetails;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget v2, v2, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    .line 34
    .line 35
    and-int/lit16 v2, v2, 0x400

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    shl-int v2, v14, v5

    .line 40
    .line 41
    int-to-long v2, v2

    .line 42
    or-long/2addr v6, v2

    .line 43
    :cond_0
    aget-object v2, v12, v5

    .line 44
    .line 45
    iget-object v3, v15, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/android/server/pm/UserTypeDetails;

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    iget v2, v2, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    .line 56
    .line 57
    and-int/lit16 v2, v2, 0x800

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    shl-int v2, v14, v5

    .line 62
    .line 63
    int-to-long v2, v2

    .line 64
    or-long/2addr v8, v2

    .line 65
    :cond_1
    aget-object v2, v12, v5

    .line 66
    .line 67
    iget-object v3, v15, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/android/server/pm/UserTypeDetails;

    .line 74
    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/android/server/pm/UserTypeDetails;->isProfile()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    shl-int v2, v14, v5

    .line 84
    .line 85
    int-to-long v2, v2

    .line 86
    or-long/2addr v10, v2

    .line 87
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    new-instance v2, Landroid/util/ArrayMap;

    .line 91
    .line 92
    const/4 v3, 0x3

    .line 93
    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const-string v5, "FULL"

    .line 101
    .line 102
    invoke-virtual {v2, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const-string v5, "SYSTEM"

    .line 110
    .line 111
    invoke-virtual {v2, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-string v5, "PROFILE"

    .line 119
    .line 120
    invoke-virtual {v2, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    iget-object v3, v1, Lcom/android/server/SystemConfig;->mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

    .line 124
    .line 125
    new-instance v5, Landroid/util/ArrayMap;

    .line 126
    .line 127
    invoke-direct {v5, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 128
    .line 129
    .line 130
    iput-object v5, v1, Lcom/android/server/SystemConfig;->mPackageToUserTypeWhitelist:Landroid/util/ArrayMap;

    .line 131
    .line 132
    new-instance v5, Landroid/util/ArrayMap;

    .line 133
    .line 134
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    add-int/2addr v6, v14

    .line 139
    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    .line 140
    .line 141
    .line 142
    move v6, v4

    .line 143
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-ge v6, v7, :cond_5

    .line 148
    .line 149
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    check-cast v8, Ljava/lang/Iterable;

    .line 164
    .line 165
    invoke-virtual {v0, v8, v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J

    .line 166
    .line 167
    .line 168
    move-result-wide v8

    .line 169
    const-wide/16 v10, 0x0

    .line 170
    .line 171
    cmp-long v12, v8, v10

    .line 172
    .line 173
    if-eqz v12, :cond_4

    .line 174
    .line 175
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_5
    iget-object v3, v1, Lcom/android/server/SystemConfig;->mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

    .line 186
    .line 187
    new-instance v6, Landroid/util/ArrayMap;

    .line 188
    .line 189
    invoke-direct {v6, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 190
    .line 191
    .line 192
    iput-object v6, v1, Lcom/android/server/SystemConfig;->mPackageToUserTypeBlacklist:Landroid/util/ArrayMap;

    .line 193
    .line 194
    :goto_2
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-ge v4, v1, :cond_8

    .line 199
    .line 200
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    check-cast v1, Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    check-cast v6, Ljava/lang/Iterable;

    .line 215
    .line 216
    invoke-virtual {v0, v6, v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J

    .line 217
    .line 218
    .line 219
    move-result-wide v6

    .line 220
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    check-cast v8, Ljava/lang/Long;

    .line 225
    .line 226
    if-eqz v8, :cond_6

    .line 227
    .line 228
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 229
    .line 230
    .line 231
    move-result-wide v8

    .line 232
    not-long v6, v6

    .line 233
    and-long/2addr v6, v8

    .line 234
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v5, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    const-wide/16 v8, 0x0

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_6
    const-wide/16 v8, 0x0

    .line 245
    .line 246
    cmp-long v6, v6, v8

    .line 247
    .line 248
    if-eqz v6, :cond_7

    .line 249
    .line 250
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-virtual {v5, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_8
    const-wide/16 v0, -0x1

    .line 261
    .line 262
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    const-string v1, "android"

    .line 267
    .line 268
    invoke-virtual {v5, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    return-object v5
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 13

    .line 1
    invoke-static {}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Whitelisted packages per user type"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 11
    .line 12
    .line 13
    const-string v1, "Mode: "

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 19
    .line 20
    .line 21
    and-int/lit8 v1, v0, 0x1

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v2

    .line 30
    :goto_0
    const-string v4, ""

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const-string v1, " (enforced)"

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v1, v4

    .line 38
    :goto_1
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    and-int/lit8 v1, v0, 0x2

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const-string v1, " (logged)"

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move-object v1, v4

    .line 49
    :goto_2
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    and-int/lit8 v1, v0, 0x4

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    const-string v1, " (implicit)"

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    move-object v1, v4

    .line 60
    :goto_3
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    and-int/lit8 v1, v0, 0x10

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    const-string v4, " (ignore OTAs)"

    .line 68
    .line 69
    :cond_4
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 79
    .line 80
    .line 81
    const-string v1, "Legend"

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 87
    .line 88
    .line 89
    move v1, v2

    .line 90
    :goto_4
    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    .line 91
    .line 92
    array-length v5, v4

    .line 93
    if-ge v1, v5, :cond_5

    .line 94
    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v6, " -> "

    .line 104
    .line 105
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    aget-object v4, v4, v1

    .line 109
    .line 110
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    add-int/lit8 v1, v1, 0x1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-nez v1, :cond_6

    .line 139
    .line 140
    const-string p0, "No packages"

    .line 141
    .line 142
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_6
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 150
    .line 151
    .line 152
    const-string v5, " packages:"

    .line 153
    .line 154
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 158
    .line 159
    .line 160
    move v5, v2

    .line 161
    :goto_5
    if-ge v5, v1, :cond_9

    .line 162
    .line 163
    iget-object v6, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    .line 164
    .line 165
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    check-cast v6, Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string v6, ": "

    .line 175
    .line 176
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v6, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    .line 180
    .line 181
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    check-cast v6, Ljava/lang/Long;

    .line 186
    .line 187
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 188
    .line 189
    .line 190
    move-result-wide v6

    .line 191
    move v8, v2

    .line 192
    :goto_6
    array-length v9, v4

    .line 193
    if-ge v8, v9, :cond_8

    .line 194
    .line 195
    shl-int v9, v3, v8

    .line 196
    .line 197
    int-to-long v9, v9

    .line 198
    and-long/2addr v9, v6

    .line 199
    const-wide/16 v11, 0x0

    .line 200
    .line 201
    cmp-long v9, v9, v11

    .line 202
    .line 203
    if-eqz v9, :cond_7

    .line 204
    .line 205
    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 206
    .line 207
    .line 208
    const-string v9, " "

    .line 209
    .line 210
    invoke-virtual {p1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 217
    .line 218
    .line 219
    add-int/lit8 v5, v5, 0x1

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, p1, v0, v3, v2}, Lcom/android/server/pm/UserSystemPackageInstaller;->dumpPackageWhitelistProblems(Landroid/util/IndentingPrintWriter;IZZ)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 235
    .line 236
    .line 237
    return-void
.end method

.method public final dumpPackageWhitelistProblems(Landroid/util/IndentingPrintWriter;IZZ)V
    .locals 2

    .line 1
    const/16 v0, -0x3e8

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    if-ne p2, v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const v0, 0x10e0165

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 25
    .line 26
    and-int/lit8 p2, p2, -0x3

    .line 27
    .line 28
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "dumpPackageWhitelistProblems(): using mode "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->modeToString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "UserSystemPackageInstaller"

    .line 47
    .line 48
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistErrors(I)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const-string v0, "errors"

    .line 56
    .line 57
    invoke-static {p1, p3, p2, v0}, Lcom/android/server/pm/UserSystemPackageInstaller;->showIssues(Landroid/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    if-eqz p4, :cond_3

    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/UserSystemPackageInstaller;->getPackagesWhitelistWarnings()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string/jumbo p2, "warnings"

    .line 68
    .line 69
    .line 70
    invoke-static {p1, p3, p0, p2}, Lcom/android/server/pm/UserSystemPackageInstaller;->showIssues(Landroid/util/IndentingPrintWriter;ZLjava/util/List;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final getInstallablePackagesForUserType(Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    and-int/lit8 v1, v0, 0x4

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    and-int/lit8 v0, v0, 0x8

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUm:Lcom/android/server/pm/UserManagerService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserTypes:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/server/pm/UserTypeDetails;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget v0, v0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    .line 31
    .line 32
    and-int/lit16 v0, v0, 0x800

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    :goto_0
    const/4 v0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getWhitelistedPackagesForUserType(Ljava/lang/String;)Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v1, Landroid/util/ArraySet;

    .line 44
    .line 45
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 46
    .line 47
    .line 48
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 49
    .line 50
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 55
    .line 56
    new-instance v3, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;

    .line 57
    .line 58
    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/UserSystemPackageInstaller;Ljava/util/Set;ZLjava/util/Set;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_2
    const/4 p0, 0x0

    .line 66
    return-object p0
.end method

.method public final getPackagesWhitelistErrors(I)Ljava/util/List;
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    and-int/lit8 v0, p1, 0x4

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :cond_0
    and-int/lit8 p1, p1, 0x2

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 31
    .line 32
    new-instance v1, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final getPackagesWhitelistWarnings()Ljava/util/List;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_4

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    :goto_1
    if-nez v4, :cond_2

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v2, " is allowlisted but not present."

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_3

    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, " is allowlisted and present but not a system package."

    .line 86
    .line 87
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isOverlayIsStatic()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_0

    .line 103
    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v2, " is allowlisted unnecessarily since it\'s a static overlay."

    .line 113
    .line 114
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    return-object v0
.end method

.method public final getTypesBitSet(Ljava/lang/Iterable;Ljava/util/Map;)J
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    move-wide v2, v0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-eqz v4, :cond_2

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Ljava/lang/String;

    .line 19
    .line 20
    move-object v5, p2

    .line 21
    check-cast v5, Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Ljava/lang/Long;

    .line 28
    .line 29
    if-eqz v5, :cond_0

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    or-long/2addr v2, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserSystemPackageInstaller;->getUserTypeMask(Ljava/lang/String;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    cmp-long v7, v5, v0

    .line 42
    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    or-long/2addr v2, v5

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v5, "SystemConfig contained an invalid user type: "

    .line 48
    .line 49
    const-string v6, "UserSystemPackageInstaller"

    .line 50
    .line 51
    invoke-static {v5, v4, v6}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-wide v2
.end method

.method public getUserTypeMask(Ljava/lang/String;)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mUserTypes:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-ltz p0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    shl-int p0, p1, p0

    .line 11
    .line 12
    int-to-long p0, p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/16 p0, 0x0

    .line 15
    .line 16
    :goto_0
    return-wide p0
.end method

.method public getWhitelistedPackagesForUserType(Ljava/lang/String;)Ljava/util/Set;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserSystemPackageInstaller;->getUserTypeMask(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance p1, Landroid/util/ArraySet;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-direct {p1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ge v2, v3, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/pm/UserSystemPackageInstaller;->mWhitelistedPackagesForUserTypes:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/Long;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    and-long/2addr v4, v0

    .line 46
    const-wide/16 v6, 0x0

    .line 47
    .line 48
    cmp-long v4, v4, v6

    .line 49
    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-object p1
.end method
