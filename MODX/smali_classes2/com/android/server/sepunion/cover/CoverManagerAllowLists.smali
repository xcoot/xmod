.class public final Lcom/android/server/sepunion/cover/CoverManagerAllowLists;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAllowList:Ljava/util/HashMap;

.field public mPrefixPackage:Ljava/util/ArrayList;

.field public mSignaturesMap:Landroid/util/SparseArray;


# direct methods
.method public static getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 30
    .line 31
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 32
    .line 33
    if-ne v1, p1, :cond_0

    .line 34
    .line 35
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method


# virtual methods
.method public final isAllowedToUse(Landroid/content/Context;II)Z
    .locals 7

    .line 1
    const-string v0, "CoverManager_CoverManagerAllowLists"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/16 v2, 0x3e8

    .line 8
    .line 9
    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    invoke-static {p1, p3}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->getPackageForPid(Landroid/content/Context;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const/4 v6, 0x4

    .line 34
    invoke-virtual {p1, v5, v6, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v5

    .line 40
    const-string v6, "Error creating user context"

    .line 41
    .line 42
    invoke-static {v0, v6, v5}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    :goto_0
    const/4 v5, 0x0

    .line 46
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/16 v6, 0x40

    .line 51
    .line 52
    invoke-virtual {p1, p3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    goto :goto_1

    .line 65
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "Package "

    .line 68
    .line 69
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, " not found for user!"

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    const/4 p1, -0x1

    .line 88
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    if-eq p1, p2, :cond_1

    .line 93
    .line 94
    const-string p0, "isAllowedToUse : pkg does not match uid"

    .line 95
    .line 96
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    return v1

    .line 100
    :cond_1
    if-nez v5, :cond_2

    .line 101
    .line 102
    const-string p0, "isAllowedToUse : pkgInfo is null"

    .line 103
    .line 104
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    return v1

    .line 108
    :cond_2
    iget-object p1, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 109
    .line 110
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 111
    .line 112
    and-int/lit16 p1, p1, 0x81

    .line 113
    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    return v2

    .line 117
    :cond_3
    const-string p1, "eng"

    .line 118
    .line 119
    sget-object p2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    return v2

    .line 128
    :cond_4
    iget-object p1, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 129
    .line 130
    const/4 p2, 0x7

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isMatchedSignature([Landroid/content/pm/Signature;I)Z

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    if-eqz p2, :cond_5

    .line 136
    .line 137
    return v2

    .line 138
    :cond_5
    if-eqz p3, :cond_7

    .line 139
    .line 140
    :try_start_2
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 141
    .line 142
    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    const/4 v2, 0x2

    .line 147
    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mPrefixPackage:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_7

    .line 162
    .line 163
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    check-cast v2, Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 173
    if-eqz v3, :cond_6

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :catch_2
    move-exception p2

    .line 177
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    :cond_7
    move-object v2, p3

    .line 181
    :goto_2
    iget-object p2, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mAllowList:Ljava/util/HashMap;

    .line 182
    .line 183
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    check-cast p2, Ljava/lang/Integer;

    .line 188
    .line 189
    if-nez p2, :cond_8

    .line 190
    .line 191
    new-instance p0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string p1, "isAllowedToUse : cover manager allow lists does not include this App : "

    .line 194
    .line 195
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    return v1

    .line 209
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->isMatchedSignature([Landroid/content/pm/Signature;I)Z

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    return p0
.end method

.method public final isMatchedSignature([Landroid/content/pm/Signature;I)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    const/16 v3, 0xe

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-ge v2, v3, :cond_1

    .line 12
    .line 13
    shl-int v3, v4, v2

    .line 14
    .line 15
    and-int v4, p2, v3

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/server/sepunion/cover/CoverManagerAllowLists;->mSignaturesMap:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/content/pm/Signature;

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    if-eqz p1, :cond_4

    .line 34
    .line 35
    array-length p0, p1

    .line 36
    move p2, v1

    .line 37
    :goto_1
    if-ge p2, p0, :cond_4

    .line 38
    .line 39
    aget-object v2, p1, p2

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_3

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Landroid/content/pm/Signature;

    .line 56
    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    invoke-virtual {v5, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    return v4

    .line 66
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    return v1
.end method
