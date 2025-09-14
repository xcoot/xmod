.class public final Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConfigDirs:Ljava/util/ArrayList;

.field public final mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    .line 3
    const-string p1, "/system/etc/omc-default-permissions"

    .line 4
    invoke-static {p1}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "mdc.sys.omc_etcpath"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "omc-default-permissions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mConfigDirs:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mConfigDirs:Ljava/util/ArrayList;

    return-void
.end method

.method public static readDefaultPermissionPackage(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V
    .locals 9

    .line 1
    const-string v0, "OmcPermissionPolicy"

    .line 2
    .line 3
    const-string/jumbo v1, "name"

    .line 4
    .line 5
    .line 6
    const-string v2, "Read permission for package <"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ">"

    .line 22
    .line 23
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;

    .line 34
    .line 35
    invoke-direct {v2}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    const/4 v7, 0x1

    .line 47
    if-eq v6, v7, :cond_6

    .line 48
    .line 49
    const/4 v7, 0x3

    .line 50
    if-ne v6, v7, :cond_1

    .line 51
    .line 52
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-le v8, v5, :cond_6

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    :goto_1
    if-eq v6, v7, :cond_0

    .line 62
    .line 63
    const/4 v7, 0x4

    .line 64
    if-ne v6, v7, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const-string/jumbo v7, "permission"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_4

    .line 79
    .line 80
    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const-string/jumbo v7, "systemfixed"

    .line 85
    .line 86
    .line 87
    invoke-interface {p0, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v7, :cond_3

    .line 96
    .line 97
    iget-object v7, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mFixedGrantedPermission:Ljava/util/Set;

    .line 98
    .line 99
    check-cast v7, Landroid/util/ArraySet;

    .line 100
    .line 101
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    iget-object v7, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mNonFixedGrantedPermission:Ljava/util/Set;

    .line 106
    .line 107
    check-cast v7, Landroid/util/ArraySet;

    .line 108
    .line 109
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    const-string/jumbo v7, "revoke-permission"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_5

    .line 121
    .line 122
    invoke-interface {p0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    iget-object v7, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mRevokedPermission:Ljava/util/Set;

    .line 127
    .line 128
    check-cast v7, Landroid/util/ArraySet;

    .line 129
    .line 130
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v7, "Unknown element under <defaultgrant - package>: "

    .line 140
    .line 141
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_6
    invoke-virtual {p1, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v1, "Exception "

    .line 169
    .line 170
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    :goto_3
    return-void
.end method


# virtual methods
.method public final grantOrRevokePermissions(Ljava/lang/String;Z[I)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    new-instance v2, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/io/File;

    .line 11
    .line 12
    move-object/from16 v4, p1

    .line 13
    .line 14
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const-string v5, "OmcPermissionPolicy"

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    const/4 v7, 0x0

    .line 25
    iget-object v9, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    goto/16 :goto_b

    .line 30
    .line 31
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 32
    .line 33
    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 41
    .line 42
    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    invoke-interface {v3, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    const/4 v11, 0x2

    .line 54
    if-eq v10, v11, :cond_1

    .line 55
    .line 56
    if-eq v10, v6, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-ne v10, v11, :cond_12

    .line 60
    .line 61
    const-string/jumbo v10, "ro.boot.activatedid"

    .line 62
    .line 63
    .line 64
    move-object v11, v9

    .line 65
    check-cast v11, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;

    .line 66
    .line 67
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    const-string/jumbo v11, "persist.omc.sales_code"

    .line 75
    .line 76
    .line 77
    move-object v12, v9

    .line 78
    check-cast v12, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;

    .line 79
    .line 80
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    if-eqz v12, :cond_2

    .line 92
    .line 93
    const-string/jumbo v11, "ro.csc.sales_code"

    .line 94
    .line 95
    .line 96
    move-object v12, v9

    .line 97
    check-cast v12, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;

    .line 98
    .line 99
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    goto :goto_2

    .line 107
    :goto_1
    move-object v3, v0

    .line 108
    goto/16 :goto_8

    .line 109
    .line 110
    :catchall_0
    move-exception v0

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v13, "Current sales code : "

    .line 118
    .line 119
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v13, ", aid: "

    .line 126
    .line 127
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    :cond_3
    :goto_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 145
    .line 146
    .line 147
    move-result v13

    .line 148
    if-eq v13, v6, :cond_11

    .line 149
    .line 150
    const/4 v14, 0x3

    .line 151
    if-ne v13, v14, :cond_4

    .line 152
    .line 153
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 154
    .line 155
    .line 156
    move-result v15

    .line 157
    if-le v15, v12, :cond_11

    .line 158
    .line 159
    :cond_4
    if-eq v13, v14, :cond_3

    .line 160
    .line 161
    const/4 v14, 0x4

    .line 162
    if-ne v13, v14, :cond_5

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_5
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    const-string/jumbo v14, "sales-code"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    const-string v15, "firstboot"

    .line 177
    .line 178
    const-string v8, "code"

    .line 179
    .line 180
    if-eqz v14, :cond_a

    .line 181
    .line 182
    :try_start_2
    const-string v13, "csc"

    .line 183
    .line 184
    invoke-interface {v3, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v13

    .line 188
    if-nez v13, :cond_6

    .line 189
    .line 190
    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    :cond_6
    if-eqz v13, :cond_8

    .line 195
    .line 196
    invoke-static {v13, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    if-nez v8, :cond_7

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_7
    const/4 v8, 0x0

    .line 204
    goto :goto_5

    .line 205
    :cond_8
    :goto_4
    move v8, v6

    .line 206
    :goto_5
    invoke-interface {v3, v7, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    if-eqz p2, :cond_9

    .line 215
    .line 216
    if-nez v13, :cond_9

    .line 217
    .line 218
    move v8, v6

    .line 219
    :cond_9
    if-eqz v8, :cond_3

    .line 220
    .line 221
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_a
    const-string v14, "activated-id"

    .line 226
    .line 227
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v14

    .line 231
    if-eqz v14, :cond_e

    .line 232
    .line 233
    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    if-eqz v8, :cond_c

    .line 238
    .line 239
    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    if-nez v8, :cond_b

    .line 244
    .line 245
    goto :goto_6

    .line 246
    :cond_b
    const/4 v8, 0x0

    .line 247
    goto :goto_7

    .line 248
    :cond_c
    :goto_6
    move v8, v6

    .line 249
    :goto_7
    invoke-interface {v3, v7, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v13

    .line 253
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v13

    .line 257
    if-eqz p2, :cond_d

    .line 258
    .line 259
    if-nez v13, :cond_d

    .line 260
    .line 261
    move v8, v6

    .line 262
    :cond_d
    if-eqz v8, :cond_3

    .line 263
    .line 264
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_e
    const-string/jumbo v8, "package"

    .line 269
    .line 270
    .line 271
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v8

    .line 275
    if-eqz v8, :cond_f

    .line 276
    .line 277
    invoke-static {v3, v2}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->readDefaultPermissionPackage(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_3

    .line 281
    .line 282
    :cond_f
    if-eqz p2, :cond_10

    .line 283
    .line 284
    const-string v8, "exception"

    .line 285
    .line 286
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    if-eqz v8, :cond_10

    .line 291
    .line 292
    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->readDefaultExceptionsForPackage(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_3

    .line 296
    .line 297
    :cond_10
    new-instance v8, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    const-string v13, "Unknown element under <defaultgrant>: "

    .line 303
    .line 304
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v13

    .line 311
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    .line 323
    .line 324
    goto/16 :goto_3

    .line 325
    .line 326
    :cond_11
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 327
    .line 328
    .line 329
    goto :goto_b

    .line 330
    :catch_0
    move-exception v0

    .line 331
    goto :goto_a

    .line 332
    :cond_12
    :try_start_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 333
    .line 334
    const-string v3, "No start tag found in packages file"

    .line 335
    .line 336
    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 340
    :goto_8
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 341
    .line 342
    .line 343
    goto :goto_9

    .line 344
    :catchall_1
    move-exception v0

    .line 345
    move-object v4, v0

    .line 346
    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 347
    .line 348
    .line 349
    :goto_9
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 350
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    const-string v4, "Exception "

    .line 353
    .line 354
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    :goto_b
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eqz v2, :cond_22

    .line 384
    .line 385
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    check-cast v2, Ljava/util/Map$Entry;

    .line 390
    .line 391
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    check-cast v3, Ljava/lang/String;

    .line 396
    .line 397
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    check-cast v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;

    .line 402
    .line 403
    if-eqz v3, :cond_21

    .line 404
    .line 405
    if-nez v2, :cond_13

    .line 406
    .line 407
    goto :goto_c

    .line 408
    :cond_13
    move-object v4, v9

    .line 409
    check-cast v4, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;

    .line 410
    .line 411
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    :try_start_7
    iget-object v8, v4, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    .line 415
    .line 416
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 417
    .line 418
    .line 419
    move-result-object v8

    .line 420
    const v10, 0x2800b000

    .line 421
    .line 422
    .line 423
    invoke-virtual {v8, v3, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 424
    .line 425
    .line 426
    move-result-object v8
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 427
    goto :goto_d

    .line 428
    :catch_1
    move-object v8, v7

    .line 429
    :goto_d
    if-eqz v8, :cond_21

    .line 430
    .line 431
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 432
    .line 433
    if-nez v10, :cond_14

    .line 434
    .line 435
    goto :goto_c

    .line 436
    :cond_14
    iget-object v11, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mCertDigests:Ljava/lang/String;

    .line 437
    .line 438
    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 439
    .line 440
    .line 441
    move-result v10

    .line 442
    if-eqz v10, :cond_15

    .line 443
    .line 444
    :goto_e
    move v10, v6

    .line 445
    goto :goto_11

    .line 446
    :cond_15
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 447
    .line 448
    if-eqz v10, :cond_18

    .line 449
    .line 450
    if-nez v11, :cond_16

    .line 451
    .line 452
    goto :goto_f

    .line 453
    :cond_16
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 454
    .line 455
    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    .line 456
    .line 457
    .line 458
    move-result v10

    .line 459
    if-eqz v10, :cond_17

    .line 460
    .line 461
    const-string v10, "android"

    .line 462
    .line 463
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v10

    .line 467
    if-eqz v10, :cond_17

    .line 468
    .line 469
    goto :goto_e

    .line 470
    :cond_17
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 471
    .line 472
    invoke-virtual {v10}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 473
    .line 474
    .line 475
    move-result-object v10

    .line 476
    if-nez v10, :cond_19

    .line 477
    .line 478
    :cond_18
    :goto_f
    const/4 v10, 0x0

    .line 479
    goto :goto_11

    .line 480
    :cond_19
    array-length v12, v10

    .line 481
    const/4 v13, 0x0

    .line 482
    :goto_10
    if-ge v13, v12, :cond_18

    .line 483
    .line 484
    aget-object v14, v10, v13

    .line 485
    .line 486
    invoke-virtual {v14}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 487
    .line 488
    .line 489
    move-result-object v14

    .line 490
    invoke-static {v14}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v14

    .line 494
    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 495
    .line 496
    .line 497
    move-result v14

    .line 498
    if-eqz v14, :cond_1a

    .line 499
    .line 500
    goto :goto_e

    .line 501
    :cond_1a
    add-int/lit8 v13, v13, 0x1

    .line 502
    .line 503
    goto :goto_10

    .line 504
    :goto_11
    if-nez v10, :cond_1b

    .line 505
    .line 506
    goto :goto_c

    .line 507
    :cond_1b
    array-length v15, v1

    .line 508
    const/4 v14, 0x0

    .line 509
    :goto_12
    if-ge v14, v15, :cond_21

    .line 510
    .line 511
    aget v13, v1, v14

    .line 512
    .line 513
    const-string v10, "Granting permission for package <"

    .line 514
    .line 515
    const-string v11, "> userId <"

    .line 516
    .line 517
    const-string v12, ">"

    .line 518
    .line 519
    invoke-static {v13, v10, v3, v11, v12}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v10

    .line 523
    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .line 525
    .line 526
    iget-object v10, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mFixedGrantedPermission:Ljava/util/Set;

    .line 527
    .line 528
    check-cast v10, Landroid/util/ArraySet;

    .line 529
    .line 530
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 531
    .line 532
    .line 533
    move-result v10

    .line 534
    const-string v11, "Failed to grant for "

    .line 535
    .line 536
    if-lez v10, :cond_1c

    .line 537
    .line 538
    iget-object v10, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mFixedGrantedPermission:Ljava/util/Set;

    .line 539
    .line 540
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 541
    .line 542
    .line 543
    :try_start_8
    invoke-virtual {v4, v8, v10, v6, v13}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 544
    .line 545
    .line 546
    goto :goto_13

    .line 547
    :catch_2
    new-instance v10, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v10

    .line 559
    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    :cond_1c
    :goto_13
    iget-object v10, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mNonFixedGrantedPermission:Ljava/util/Set;

    .line 563
    .line 564
    check-cast v10, Landroid/util/ArraySet;

    .line 565
    .line 566
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 567
    .line 568
    .line 569
    move-result v10

    .line 570
    if-lez v10, :cond_1d

    .line 571
    .line 572
    iget-object v10, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mNonFixedGrantedPermission:Ljava/util/Set;

    .line 573
    .line 574
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    const/4 v12, 0x0

    .line 578
    :try_start_9
    invoke-virtual {v4, v8, v10, v12, v13}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 579
    .line 580
    .line 581
    goto :goto_14

    .line 582
    :catch_3
    new-instance v10, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v10

    .line 594
    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .line 596
    .line 597
    goto :goto_14

    .line 598
    :cond_1d
    const/4 v12, 0x0

    .line 599
    :goto_14
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 600
    .line 601
    if-eqz v10, :cond_1f

    .line 602
    .line 603
    const-string v10, " use shared user id, skip revoke permission."

    .line 604
    .line 605
    invoke-virtual {v3, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v10

    .line 609
    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .line 611
    .line 612
    :cond_1e
    move/from16 v20, v12

    .line 613
    .line 614
    move/from16 v19, v14

    .line 615
    .line 616
    move/from16 v18, v15

    .line 617
    .line 618
    goto/16 :goto_19

    .line 619
    .line 620
    :cond_1f
    iget-object v10, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mRevokedPermission:Ljava/util/Set;

    .line 621
    .line 622
    check-cast v10, Landroid/util/ArraySet;

    .line 623
    .line 624
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 625
    .line 626
    .line 627
    move-result v10

    .line 628
    if-lez v10, :cond_1e

    .line 629
    .line 630
    iget-object v10, v2, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mRevokedPermission:Ljava/util/Set;

    .line 631
    .line 632
    check-cast v10, Landroid/util/ArraySet;

    .line 633
    .line 634
    invoke-virtual {v10}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 635
    .line 636
    .line 637
    move-result-object v16

    .line 638
    :goto_15
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 639
    .line 640
    .line 641
    move-result v10

    .line 642
    if-eqz v10, :cond_1e

    .line 643
    .line 644
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v10

    .line 648
    move-object v11, v10

    .line 649
    check-cast v11, Ljava/lang/String;

    .line 650
    .line 651
    if-nez v11, :cond_20

    .line 652
    .line 653
    goto :goto_15

    .line 654
    :cond_20
    :try_start_a
    move-object v10, v9

    .line 655
    check-cast v10, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;

    .line 656
    .line 657
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_4

    .line 658
    .line 659
    .line 660
    :try_start_b
    iget-object v10, v10, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    .line 661
    .line 662
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 663
    .line 664
    .line 665
    move-result-object v10

    .line 666
    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 667
    .line 668
    .line 669
    move-result-object v17
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_4

    .line 670
    const/16 v18, 0x0

    .line 671
    .line 672
    const v19, 0x3fbfb

    .line 673
    .line 674
    .line 675
    move-object/from16 p0, v11

    .line 676
    .line 677
    move/from16 v20, v12

    .line 678
    .line 679
    move-object v12, v3

    .line 680
    move v6, v13

    .line 681
    move/from16 v13, v19

    .line 682
    .line 683
    move/from16 v19, v14

    .line 684
    .line 685
    move/from16 v14, v18

    .line 686
    .line 687
    move/from16 v18, v15

    .line 688
    .line 689
    move-object/from16 v15, v17

    .line 690
    .line 691
    :try_start_c
    invoke-virtual/range {v10 .. v15}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_7

    .line 692
    .line 693
    .line 694
    goto :goto_16

    .line 695
    :catch_4
    move/from16 v20, v12

    .line 696
    .line 697
    move v6, v13

    .line 698
    move/from16 v19, v14

    .line 699
    .line 700
    move/from16 v18, v15

    .line 701
    .line 702
    goto :goto_17

    .line 703
    :catch_5
    move-object/from16 p0, v11

    .line 704
    .line 705
    move/from16 v20, v12

    .line 706
    .line 707
    move v6, v13

    .line 708
    move/from16 v19, v14

    .line 709
    .line 710
    move/from16 v18, v15

    .line 711
    .line 712
    :catch_6
    :try_start_d
    const-string v10, "Can\'t override a permission flag with POLICY_FIXED"

    .line 713
    .line 714
    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .line 716
    .line 717
    :goto_16
    new-instance v10, Landroid/util/ArraySet;

    .line 718
    .line 719
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_7

    .line 720
    .line 721
    .line 722
    move-object/from16 v11, p0

    .line 723
    .line 724
    :try_start_e
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    invoke-virtual {v9, v6, v3, v10}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->revokeRuntimePermissionsProxy(ILjava/lang/String;Ljava/util/Set;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_8

    .line 728
    .line 729
    .line 730
    goto :goto_18

    .line 731
    :catch_7
    move-object/from16 v11, p0

    .line 732
    .line 733
    :catch_8
    :goto_17
    new-instance v10, Ljava/lang/StringBuilder;

    .line 734
    .line 735
    const-string v12, "IllegalArgumentException: "

    .line 736
    .line 737
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    const-string v12, " - "

    .line 744
    .line 745
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v10

    .line 755
    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    .line 757
    .line 758
    :goto_18
    move v13, v6

    .line 759
    move/from16 v15, v18

    .line 760
    .line 761
    move/from16 v14, v19

    .line 762
    .line 763
    move/from16 v12, v20

    .line 764
    .line 765
    const/4 v6, 0x1

    .line 766
    goto/16 :goto_15

    .line 767
    .line 768
    :goto_19
    add-int/lit8 v14, v19, 0x1

    .line 769
    .line 770
    move/from16 v15, v18

    .line 771
    .line 772
    const/4 v6, 0x1

    .line 773
    goto/16 :goto_12

    .line 774
    .line 775
    :cond_21
    const/16 v20, 0x0

    .line 776
    .line 777
    goto/16 :goto_c

    .line 778
    .line 779
    :cond_22
    return-void
.end method

.method public final readDefaultExceptionsForPackage(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V
    .locals 7

    .line 1
    const-string v0, "OmcPermissionPolicy"

    .line 2
    .line 3
    :try_start_0
    const-string/jumbo v1, "package"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string/jumbo v3, "sha256-cert-digest"

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "countrycode"

    .line 19
    .line 20
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->mPmProxy:Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;

    .line 27
    .line 28
    check-cast p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string/jumbo p0, "ro.csc.country_code"

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_1
    :goto_0
    new-instance p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v3, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mCertDigests:Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const/4 v5, 0x1

    .line 70
    if-eq v4, v5, :cond_7

    .line 71
    .line 72
    const/4 v5, 0x3

    .line 73
    if-ne v4, v5, :cond_3

    .line 74
    .line 75
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-le v6, v3, :cond_7

    .line 80
    .line 81
    :cond_3
    if-eq v4, v5, :cond_2

    .line 82
    .line 83
    const/4 v5, 0x4

    .line 84
    if-ne v4, v5, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    const-string/jumbo v5, "permission"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_6

    .line 99
    .line 100
    const-string/jumbo v4, "name"

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    const-string/jumbo v5, "systemfixed"

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_5

    .line 119
    .line 120
    iget-object v5, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mFixedGrantedPermission:Ljava/util/Set;

    .line 121
    .line 122
    check-cast v5, Landroid/util/ArraySet;

    .line 123
    .line 124
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$DefaultPermission;->mNonFixedGrantedPermission:Ljava/util/Set;

    .line 129
    .line 130
    check-cast v5, Landroid/util/ArraySet;

    .line 131
    .line 132
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v5, "Unknown element under <defaultgrant - package>: "

    .line 142
    .line 143
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_7
    invoke-virtual {p2, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string p2, "Exception "

    .line 171
    .line 172
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    :goto_3
    return-void
.end method
