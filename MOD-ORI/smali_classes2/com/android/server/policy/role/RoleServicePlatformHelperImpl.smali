.class public final Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/role/RoleServicePlatformHelper;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static parseXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .locals 12

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eq v2, v1, :cond_b

    .line 12
    .line 13
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x3

    .line 18
    if-ge v3, v0, :cond_1

    .line 19
    .line 20
    if-eq v2, v4, :cond_b

    .line 21
    .line 22
    :cond_1
    if-gt v3, v0, :cond_0

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v2, v3, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string/jumbo v5, "roles"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    add-int/2addr v2, v1

    .line 51
    :cond_3
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eq v5, v1, :cond_a

    .line 56
    .line 57
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-ge v6, v2, :cond_4

    .line 62
    .line 63
    if-eq v5, v4, :cond_a

    .line 64
    .line 65
    :cond_4
    if-gt v6, v2, :cond_3

    .line 66
    .line 67
    if-eq v5, v3, :cond_5

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const-string/jumbo v6, "role"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_3

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    const-string/jumbo v6, "name"

    .line 85
    .line 86
    .line 87
    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    new-instance v8, Landroid/util/ArraySet;

    .line 92
    .line 93
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    add-int/2addr v9, v1

    .line 101
    :cond_6
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    if-eq v10, v1, :cond_9

    .line 106
    .line 107
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    if-ge v11, v9, :cond_7

    .line 112
    .line 113
    if-eq v10, v4, :cond_9

    .line 114
    .line 115
    :cond_7
    if-gt v11, v9, :cond_6

    .line 116
    .line 117
    if-eq v10, v3, :cond_8

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    const-string v11, "holder"

    .line 125
    .line 126
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    if-eqz v10, :cond_6

    .line 131
    .line 132
    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v10

    .line 136
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_9
    invoke-virtual {v0, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_a
    return-object v0

    .line 145
    :cond_b
    new-instance p0, Ljava/io/IOException;

    .line 146
    .line 147
    const-string v0, "Missing <roles> in roles.xml"

    .line 148
    .line 149
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p0
.end method


# virtual methods
.method public final computePackageStateHash(I)Ljava/lang/String;
    .locals 6

    .line 1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 16
    .line 17
    new-instance v2, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ljava/io/DataOutputStream;

    .line 23
    .line 24
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 25
    .line 26
    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 30
    .line 31
    .line 32
    new-instance v4, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-direct {v4, v3, v0, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$$ExternalSyntheticLambda0;-><init>(Ljava/io/DataOutputStream;Landroid/content/pm/PackageManagerInternal;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1, v4}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(ILjava/util/function/Consumer;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    const-string v4, ""

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    :try_start_0
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManagerInternal;->getDeviceOwnerUserId()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-ne v5, p1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManagerInternal;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    if-eqz v5, :cond_0

    .line 56
    .line 57
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    move-object v5, v4

    .line 65
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    :cond_1
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    const-string p1, "device_demo_mode"

    .line 90
    .line 91
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->walletRoleEnabled()Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    iget-object p0, v2, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;->mMessageDigest:Ljava/security/MessageDigest;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const/4 p1, 0x1

    .line 115
    invoke-static {p0, p1}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :goto_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 121
    .line 122
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    throw p1
.end method

.method public final getLegacyRoleState(I)Ljava/util/Map;
    .locals 7

    .line 1
    const-string v0, "RoleServicePlatformHelperImpl"

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string/jumbo v3, "roles.xml"

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :try_start_0
    new-instance v3, Landroid/util/AtomicFile;

    .line 17
    .line 18
    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 22
    .line 23
    .line 24
    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-interface {v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v4}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->parseXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-string v5, "Read legacy roles.xml successfully"

    .line 37
    .line 38
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :catch_0
    move-exception v3

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v4

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_1
    move-exception v3

    .line 57
    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 61
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v5, "Failed to parse legacy roles.xml: "

    .line 64
    .line 65
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v0, v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :goto_2
    move-object v4, v2

    .line 79
    goto :goto_3

    .line 80
    :catch_1
    const-string v1, "Legacy roles.xml not found"

    .line 81
    .line 82
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    :goto_3
    if-nez v4, :cond_12

    .line 87
    .line 88
    new-instance v4, Landroid/util/ArrayMap;

    .line 89
    .line 90
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "assistant"

    .line 100
    .line 101
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v3, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    .line 106
    .line 107
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    if-eqz v1, :cond_3

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-nez v5, :cond_2

    .line 118
    .line 119
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    goto :goto_4

    .line 130
    :cond_2
    move-object v1, v2

    .line 131
    goto :goto_4

    .line 132
    :cond_3
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_2

    .line 137
    .line 138
    iget-object v1, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    .line 139
    .line 140
    const v5, 0x1040021

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-nez v5, :cond_2

    .line 152
    .line 153
    :goto_4
    if-eqz v1, :cond_4

    .line 154
    .line 155
    const-string v5, "android.app.role.ASSISTANT"

    .line 156
    .line 157
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    :cond_4
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 165
    .line 166
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 171
    .line 172
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 173
    .line 174
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 175
    .line 176
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 177
    .line 178
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 179
    .line 180
    monitor-enter v5

    .line 181
    :try_start_5
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 182
    .line 183
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 184
    .line 185
    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 186
    .line 187
    iget-object v6, v1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 188
    .line 189
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-virtual {v1, v6}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf$4(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    check-cast v6, Ljava/lang/String;

    .line 197
    .line 198
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 199
    if-eqz v6, :cond_5

    .line 200
    .line 201
    const-string v1, "android.app.role.BROWSER"

    .line 202
    .line 203
    invoke-static {v6}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-virtual {v4, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    :cond_5
    const-string v1, "dialer_default_application"

    .line 211
    .line 212
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-nez v5, :cond_6

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_6
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-eqz v1, :cond_7

    .line 228
    .line 229
    iget-object v1, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    .line 230
    .line 231
    const v5, 0x1040023

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    goto :goto_5

    .line 239
    :cond_7
    move-object v1, v2

    .line 240
    :goto_5
    if-eqz v1, :cond_8

    .line 241
    .line 242
    const-string v5, "android.app.role.DIALER"

    .line 243
    .line 244
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    :cond_8
    const-string/jumbo v1, "sms_default_application"

    .line 252
    .line 253
    .line 254
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    if-nez v5, :cond_9

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_9
    iget-object v1, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    .line 266
    .line 267
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_a

    .line 276
    .line 277
    iget-object v1, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    .line 278
    .line 279
    const v5, 0x1040024

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    goto :goto_6

    .line 287
    :cond_a
    move-object v1, v2

    .line 288
    :goto_6
    if-eqz v1, :cond_b

    .line 289
    .line 290
    const-string v5, "android.app.role.SMS"

    .line 291
    .line 292
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v4, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    :cond_b
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-eqz v1, :cond_10

    .line 304
    .line 305
    new-instance v1, Landroid/content/Intent;

    .line 306
    .line 307
    const-string v5, "android.intent.action.MAIN"

    .line 308
    .line 309
    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    const-string v5, "android.intent.category.HOME"

    .line 313
    .line 314
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    const/high16 v5, 0xd0000

    .line 319
    .line 320
    invoke-virtual {v3, v1, v5, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    if-eqz v1, :cond_c

    .line 325
    .line 326
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 327
    .line 328
    if-eqz v1, :cond_c

    .line 329
    .line 330
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_c
    move-object v1, v2

    .line 334
    :goto_7
    if-eqz v1, :cond_f

    .line 335
    .line 336
    iget-object p0, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    .line 337
    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    new-instance v3, Landroid/content/Intent;

    .line 343
    .line 344
    const-string v6, "android.settings.SETTINGS"

    .line 345
    .line 346
    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0, v3, v5, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    if-eqz p0, :cond_e

    .line 354
    .line 355
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 356
    .line 357
    if-nez p0, :cond_d

    .line 358
    .line 359
    goto :goto_8

    .line 360
    :cond_d
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result p0

    .line 366
    goto :goto_9

    .line 367
    :cond_e
    :goto_8
    const/4 p0, 0x0

    .line 368
    :goto_9
    if-eqz p0, :cond_f

    .line 369
    .line 370
    goto :goto_a

    .line 371
    :cond_f
    move-object v2, v1

    .line 372
    :cond_10
    :goto_a
    if-eqz v2, :cond_11

    .line 373
    .line 374
    const-string p0, "android.app.role.HOME"

    .line 375
    .line 376
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {v4, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    :cond_11
    const-string p0, "emergency_assistance_application"

    .line 384
    .line 385
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    if-eqz p0, :cond_12

    .line 390
    .line 391
    const-string p1, "android.app.role.EMERGENCY"

    .line 392
    .line 393
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    invoke-virtual {v4, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    goto :goto_b

    .line 401
    :catchall_2
    move-exception p0

    .line 402
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 403
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 404
    .line 405
    throw p0

    .line 406
    :cond_12
    :goto_b
    return-object v4
.end method
