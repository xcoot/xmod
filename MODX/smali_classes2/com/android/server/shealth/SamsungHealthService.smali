.class public final Lcom/android/server/shealth/SamsungHealthService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final HEALTH_KEY_LIST:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "14aafbdad4dd99765346a1de191320328465b8420713bc22cc4f8b211b87cd3a"

    .line 2
    .line 3
    const-string v1, "c88c9048f6d0fe9d8561926240f2ccc1982e24721150929350384659aa54aef6"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/server/shealth/SamsungHealthService;->HEALTH_KEY_LIST:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method public static backgroundAllowlist(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-string v0, "SamsungHealthService"

    .line 2
    .line 3
    const-string v1, "backgroundAllowlist: bad uid: "

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "com.sec.android.app.shealth"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/16 v4, 0x3e8

    .line 23
    .line 24
    if-lt v2, v4, :cond_2

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/android/server/shealth/SamsungHealthService;->hasValidSignature(Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    const-string p0, "backgroundAllowlist: invalied signature"

    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0, v2}, Landroid/app/IActivityManager;->backgroundAllowlistUid(I)V

    .line 48
    .line 49
    .line 50
    const-string p0, "backgroundAllowlist successfully called"

    .line 51
    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", uidString: "

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :goto_1
    const-string v1, "backgroundAllowlist exception "

    .line 81
    .line 82
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    :goto_2
    return-void
.end method

.method public static hasValidSignature(Landroid/content/Context;)Z
    .locals 13

    .line 1
    const-string v0, "SamsungHealthService"

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    const-string v3, "SHA-256"

    .line 10
    .line 11
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v4, "com.sec.android.app.shealth"

    .line 20
    .line 21
    const/16 v5, 0x40

    .line 22
    .line 23
    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 28
    .line 29
    array-length v4, p0

    .line 30
    move v5, v2

    .line 31
    :goto_0
    if-ge v5, v4, :cond_3

    .line 32
    .line 33
    aget-object v6, p0, v5

    .line 34
    .line 35
    new-instance v7, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    array-length v8, v6

    .line 53
    move v9, v2

    .line 54
    :goto_1
    if-ge v9, v8, :cond_2

    .line 55
    .line 56
    aget-byte v10, v6, v9

    .line 57
    .line 58
    shr-int/lit8 v11, v10, 0x4

    .line 59
    .line 60
    and-int/lit8 v11, v11, 0xf

    .line 61
    .line 62
    const/16 v12, 0xa

    .line 63
    .line 64
    if-lt v11, v12, :cond_0

    .line 65
    .line 66
    add-int/lit8 v11, v11, 0x57

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_0
    add-int/lit8 v11, v11, 0x30

    .line 70
    .line 71
    :goto_2
    int-to-char v11, v11

    .line 72
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    and-int/lit8 v10, v10, 0xf

    .line 76
    .line 77
    if-lt v10, v12, :cond_1

    .line 78
    .line 79
    add-int/lit8 v10, v10, 0x57

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_1
    add-int/lit8 v10, v10, 0x30

    .line 83
    .line 84
    :goto_3
    int-to-char v10, v10

    .line 85
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    add-int/lit8 v9, v9, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception p0

    .line 92
    goto :goto_4

    .line 93
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    add-int/lit8 v5, v5, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :goto_4
    const-string v3, "hasValidSignature : "

    .line 104
    .line 105
    invoke-static {p0, v3, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    sget-object p0, Lcom/android/server/shealth/SamsungHealthService;->HEALTH_KEY_LIST:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_5

    .line 119
    .line 120
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_4

    .line 131
    .line 132
    const-string p0, "key matched"

    .line 133
    .line 134
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    const/4 p0, 0x1

    .line 138
    return p0

    .line 139
    :cond_5
    return v2
.end method
