.class public final Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFile:Ljava/io/File;

.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 6
    new-instance p1, Ljava/io/File;

    .line 8
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "device_policy_state.xml"

    .line 15
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    .line 20
    return-void
.end method

.method public static createBackup()V
    .locals 7

    .line 1
    const-string v0, "35.1.unmanaged-mode"

    .line 3
    const-string v1, "DevicePolicyEngine"

    .line 5
    const-string v2, "Backup created at "

    .line 7
    const-string v3, "Backup already exist: "

    .line 9
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 11
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 14
    move-result-object v5

    .line 15
    const-string/jumbo v6, "device_policy_backups"

    .line 18
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 24
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    const-string/jumbo v5, "device_policy_state.%s.xml"

    .line 31
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v5, v0}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    filled-new-array {v0}, [Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-static {v4, v0}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    new-instance v3, Ljava/io/File;

    .line 77
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 80
    move-result-object v4

    .line 81
    const-string/jumbo v5, "device_policy_state.xml"

    .line 84
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 90
    move-result-object v3

    .line 91
    const/4 v4, 0x1

    .line 92
    new-array v4, v4, [Ljava/nio/file/CopyOption;

    .line 94
    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 96
    const/4 v6, 0x0

    .line 97
    aput-object v5, v4, v6

    .line 99
    invoke-static {v3, v0, v4}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_1

    .line 118
    :goto_0
    const-string v2, "Cannot create backup 35.1.unmanaged-mode"

    .line 120
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    :goto_1
    return-void
.end method


# virtual methods
.method public final readFromFileLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    const-string v1, "DevicePolicyEngine"

    .line 9
    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v2, ""

    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string p0, " doesn\'t exist"

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    const-string v2, "Reading from "

    .line 40
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Landroid/util/AtomicFile;

    .line 57
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    .line 59
    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 62
    const/4 v2, 0x0

    .line 63
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 66
    move-result-object v2

    .line 67
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->readInner(Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_2

    .line 80
    :catch_0
    move-exception p0

    .line 81
    :try_start_1
    const-string v0, "Error parsing resources file"

    .line 83
    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    goto :goto_0

    .line 87
    :goto_1
    return-void

    .line 88
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 91
    throw p0
.end method

.method public final readInner(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 3
    const-string/jumbo v1, "policy-state-entry"

    .line 6
    const-string/jumbo v2, "policy-key-entry"

    .line 9
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 12
    move-result v4

    .line 13
    :goto_0
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 16
    move-result v5

    .line 17
    if-eqz v5, :cond_1b

    .line 19
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    const-string v6, "."

    .line 28
    const-string v7, ", and policyState is "

    .line 30
    const-string/jumbo v8, "null"

    .line 33
    const-string v9, "Unknown tag for local policy entry"

    .line 35
    const-string/jumbo v10, "size"

    .line 38
    const-string v11, "Error parsing enforcingAdmins, EnforcingAdmin is null."

    .line 40
    const-string v12, "Unknown tag "

    .line 42
    move-object/from16 v14, p0

    .line 44
    iget-object v15, v14, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 46
    const-string v3, "DevicePolicyEngine"

    .line 48
    const/16 v16, -0x1

    .line 50
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 53
    move-result v17

    .line 54
    sparse-switch v17, :sswitch_data_0

    .line 57
    goto :goto_1

    .line 58
    :sswitch_0
    const-string/jumbo v13, "enforcing-admins-entry"

    .line 61
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v13

    .line 65
    if-nez v13, :cond_0

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    const/16 v16, 0x4

    .line 70
    goto :goto_1

    .line 71
    :sswitch_1
    const-string/jumbo v13, "max-policy-size-limit"

    .line 74
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v13

    .line 78
    if-nez v13, :cond_1

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/16 v16, 0x3

    .line 83
    goto :goto_1

    .line 84
    :sswitch_2
    const-string/jumbo v13, "enforcing-admin-and-size"

    .line 87
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v13

    .line 91
    if-nez v13, :cond_2

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/16 v16, 0x2

    .line 96
    goto :goto_1

    .line 97
    :sswitch_3
    const-string/jumbo v13, "local-policy-entry"

    .line 100
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v13

    .line 104
    if-nez v13, :cond_3

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    const/16 v16, 0x1

    .line 109
    goto :goto_1

    .line 110
    :sswitch_4
    const-string/jumbo v13, "global-policy-entry"

    .line 113
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v13

    .line 117
    if-nez v13, :cond_4

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    const/16 v16, 0x0

    .line 122
    :goto_1
    packed-switch v16, :pswitch_data_0

    .line 125
    invoke-virtual {v12, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object v5

    .line 129
    invoke-static {v3, v5}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    goto :goto_0

    .line 133
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 136
    move-result-object v5

    .line 137
    if-nez v5, :cond_5

    .line 139
    invoke-static {v3, v11}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    goto/16 :goto_0

    .line 144
    :cond_5
    iget-object v3, v15, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 146
    iget v6, v5, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 148
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->contains(I)Z

    .line 151
    move-result v3

    .line 152
    if-nez v3, :cond_6

    .line 154
    iget-object v3, v15, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 156
    new-instance v7, Ljava/util/HashSet;

    .line 158
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 161
    invoke-virtual {v3, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    :cond_6
    iget-object v3, v15, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 166
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Ljava/util/Set;

    .line 172
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    goto/16 :goto_0

    .line 177
    :pswitch_1
    invoke-static {}, Landroid/app/admin/flags/Flags;->devicePolicySizeTrackingInternalBugFixEnabled()Z

    .line 180
    move-result v3

    .line 181
    if-nez v3, :cond_7

    .line 183
    goto/16 :goto_0

    .line 185
    :cond_7
    const/4 v3, 0x0

    .line 186
    invoke-interface {v0, v3, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    move-result v3

    .line 190
    iput v3, v15, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    .line 192
    goto/16 :goto_0

    .line 194
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 197
    move-result v5

    .line 198
    const/4 v6, 0x0

    .line 199
    const/4 v7, 0x0

    .line 200
    :goto_2
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 203
    move-result v8

    .line 204
    if-eqz v8, :cond_a

    .line 206
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 209
    move-result-object v8

    .line 210
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    const-string/jumbo v9, "enforcing-admin"

    .line 216
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    move-result v9

    .line 220
    if-nez v9, :cond_9

    .line 222
    const-string/jumbo v9, "policy-sum-size"

    .line 225
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    move-result v9

    .line 229
    if-nez v9, :cond_8

    .line 231
    invoke-virtual {v12, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    move-result-object v8

    .line 235
    invoke-static {v3, v8}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    goto :goto_2

    .line 239
    :cond_8
    const/4 v7, 0x0

    .line 240
    invoke-interface {v0, v7, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    move-result v8

    .line 244
    move v7, v8

    .line 245
    goto :goto_2

    .line 246
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 249
    move-result-object v6

    .line 250
    goto :goto_2

    .line 251
    :cond_a
    if-nez v6, :cond_b

    .line 253
    invoke-static {v3, v11}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    goto/16 :goto_0

    .line 258
    :cond_b
    if-gtz v7, :cond_c

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    .line 262
    const-string v6, "Error parsing policy size, size is "

    .line 264
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    move-result-object v5

    .line 274
    invoke-static {v3, v5}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    goto/16 :goto_0

    .line 279
    :cond_c
    iget-object v3, v15, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 281
    iget v5, v6, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 283
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 286
    move-result v3

    .line 287
    if-nez v3, :cond_d

    .line 289
    iget-object v3, v15, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 291
    new-instance v8, Ljava/util/HashMap;

    .line 293
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 296
    invoke-virtual {v3, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    :cond_d
    iget-object v3, v15, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 301
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 304
    move-result-object v3

    .line 305
    check-cast v3, Ljava/util/HashMap;

    .line 307
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    move-result-object v5

    .line 311
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    goto/16 :goto_0

    .line 316
    :pswitch_3
    const-string/jumbo v5, "user-id"

    .line 319
    const/4 v10, 0x0

    .line 320
    invoke-interface {v0, v10, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-result v5

    .line 324
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 327
    move-result v11

    .line 328
    move-object v13, v10

    .line 329
    :goto_3
    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 332
    move-result v12

    .line 333
    if-eqz v12, :cond_10

    .line 335
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 338
    move-result-object v12

    .line 339
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    move-result v16

    .line 346
    if-nez v16, :cond_f

    .line 348
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    move-result v16

    .line 352
    if-nez v16, :cond_e

    .line 354
    invoke-virtual {v9, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    move-result-object v12

    .line 358
    invoke-static {v3, v12}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    goto :goto_3

    .line 362
    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/android/server/devicepolicy/PolicyState;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/PolicyState;

    .line 365
    move-result-object v10

    .line 366
    goto :goto_3

    .line 367
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->readPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    .line 370
    move-result-object v12

    .line 371
    move-object v13, v12

    .line 372
    goto :goto_3

    .line 373
    :cond_10
    if-eqz v13, :cond_12

    .line 375
    if-eqz v10, :cond_12

    .line 377
    iget-object v3, v15, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 379
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 382
    move-result v3

    .line 383
    if-nez v3, :cond_11

    .line 385
    iget-object v3, v15, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 387
    new-instance v6, Ljava/util/HashMap;

    .line 389
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 392
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    :cond_11
    iget-object v3, v15, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 397
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 400
    move-result-object v3

    .line 401
    check-cast v3, Ljava/util/Map;

    .line 403
    invoke-interface {v3, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    goto/16 :goto_0

    .line 408
    :cond_12
    new-instance v5, Ljava/lang/StringBuilder;

    .line 410
    const-string v9, "Error parsing local policy, policyKey is "

    .line 412
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    if-nez v13, :cond_13

    .line 417
    move-object v13, v8

    .line 418
    :cond_13
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    if-nez v10, :cond_14

    .line 426
    goto :goto_4

    .line 427
    :cond_14
    move-object v8, v10

    .line 428
    :goto_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    move-result-object v5

    .line 438
    invoke-static {v3, v5}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    goto/16 :goto_0

    .line 443
    :pswitch_4
    const/4 v10, 0x0

    .line 444
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 447
    move-result v5

    .line 448
    move-object v13, v10

    .line 449
    :goto_5
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 452
    move-result v11

    .line 453
    if-eqz v11, :cond_17

    .line 455
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 458
    move-result-object v11

    .line 459
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    move-result v12

    .line 466
    if-nez v12, :cond_16

    .line 468
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 471
    move-result v12

    .line 472
    if-nez v12, :cond_15

    .line 474
    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 477
    move-result-object v11

    .line 478
    invoke-static {v3, v11}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    goto :goto_5

    .line 482
    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/android/server/devicepolicy/PolicyState;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/PolicyState;

    .line 485
    move-result-object v10

    .line 486
    goto :goto_5

    .line 487
    :cond_16
    invoke-static/range {p1 .. p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->readPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    .line 490
    move-result-object v11

    .line 491
    move-object v13, v11

    .line 492
    goto :goto_5

    .line 493
    :cond_17
    if-eqz v13, :cond_18

    .line 495
    if-eqz v10, :cond_18

    .line 497
    iget-object v3, v15, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 499
    check-cast v3, Ljava/util/HashMap;

    .line 501
    invoke-virtual {v3, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    goto/16 :goto_0

    .line 506
    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 508
    const-string v9, "Error parsing global policy, policyKey is "

    .line 510
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    if-nez v13, :cond_19

    .line 515
    move-object v13, v8

    .line 516
    :cond_19
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    if-nez v10, :cond_1a

    .line 524
    goto :goto_6

    .line 525
    :cond_1a
    move-object v8, v10

    .line 526
    :goto_6
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    move-result-object v5

    .line 536
    invoke-static {v3, v5}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    goto/16 :goto_0

    .line 541
    :cond_1b
    return-void

    .line 542
    nop

    .line 543
    :sswitch_data_0
    .sparse-switch
        -0x714a09ff -> :sswitch_4
        -0x4f4580c7 -> :sswitch_3
        -0x389ac19d -> :sswitch_2
        0x805c241 -> :sswitch_1
        0x3c969357 -> :sswitch_0
    .end sparse-switch

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final writeInner(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 3
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 5
    const-string/jumbo v1, "policy-state-entry"

    .line 8
    const-string/jumbo v2, "policy-key-entry"

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 15
    move v0, v3

    .line 16
    :goto_0
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 21
    move-result v5

    .line 22
    if-ge v0, v5, :cond_1

    .line 24
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 29
    move-result v5

    .line 30
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 32
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Ljava/util/Map;

    .line 38
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 41
    move-result-object v6

    .line 42
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v6

    .line 46
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_0

    .line 52
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v7

    .line 56
    check-cast v7, Ljava/util/Map$Entry;

    .line 58
    const-string/jumbo v8, "local-policy-entry"

    .line 61
    invoke-interface {p1, v4, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    const-string/jumbo v9, "user-id"

    .line 67
    invoke-interface {p1, v4, v9, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    invoke-interface {p1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 76
    move-result-object v9

    .line 77
    check-cast v9, Landroid/app/admin/PolicyKey;

    .line 79
    invoke-virtual {v9, p1}, Landroid/app/admin/PolicyKey;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 82
    invoke-interface {p1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    invoke-interface {p1, v4, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 91
    move-result-object v7

    .line 92
    check-cast v7, Lcom/android/server/devicepolicy/PolicyState;

    .line 94
    invoke-virtual {v7, p1}, Lcom/android/server/devicepolicy/PolicyState;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 97
    invoke-interface {p1, v4, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    invoke-interface {p1, v4, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    goto :goto_1

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 109
    if-eqz v0, :cond_2

    .line 111
    check-cast v0, Ljava/util/HashMap;

    .line 113
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 120
    move-result-object v0

    .line 121
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_2

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Ljava/util/Map$Entry;

    .line 133
    const-string/jumbo v6, "global-policy-entry"

    .line 136
    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    invoke-interface {p1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 145
    move-result-object v7

    .line 146
    check-cast v7, Landroid/app/admin/PolicyKey;

    .line 148
    invoke-virtual {v7, p1}, Landroid/app/admin/PolicyKey;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 151
    invoke-interface {p1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    invoke-interface {p1, v4, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 160
    move-result-object v5

    .line 161
    check-cast v5, Lcom/android/server/devicepolicy/PolicyState;

    .line 163
    invoke-virtual {v5, p1}, Lcom/android/server/devicepolicy/PolicyState;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 166
    invoke-interface {p1, v4, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    goto :goto_2

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 175
    if-eqz v0, :cond_4

    .line 177
    move v0, v3

    .line 178
    :goto_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 180
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 183
    move-result v1

    .line 184
    if-ge v0, v1, :cond_4

    .line 186
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 188
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 191
    move-result v1

    .line 192
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 194
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 197
    move-result-object v1

    .line 198
    check-cast v1, Ljava/util/Set;

    .line 200
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 203
    move-result-object v1

    .line 204
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_3

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    move-result-object v2

    .line 214
    check-cast v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 216
    const-string/jumbo v5, "enforcing-admins-entry"

    .line 219
    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 225
    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    goto :goto_4

    .line 229
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 231
    goto :goto_3

    .line 232
    :cond_4
    invoke-static {}, Landroid/app/admin/flags/Flags;->devicePolicySizeTrackingInternalBugFixEnabled()Z

    .line 235
    move-result v0

    .line 236
    const-string/jumbo v1, "size"

    .line 239
    if-eqz v0, :cond_6

    .line 241
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 243
    if-eqz v0, :cond_6

    .line 245
    :goto_5
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 247
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 250
    move-result v0

    .line 251
    if-ge v3, v0, :cond_6

    .line 253
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 255
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 258
    move-result v0

    .line 259
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 261
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 264
    move-result-object v2

    .line 265
    check-cast v2, Ljava/util/HashMap;

    .line 267
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 270
    move-result-object v2

    .line 271
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 274
    move-result-object v2

    .line 275
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    move-result v5

    .line 279
    if-eqz v5, :cond_5

    .line 281
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    move-result-object v5

    .line 285
    check-cast v5, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 287
    const-string/jumbo v6, "enforcing-admin-and-size"

    .line 290
    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    const-string/jumbo v7, "enforcing-admin"

    .line 296
    invoke-interface {p1, v4, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    invoke-virtual {v5, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 302
    invoke-interface {p1, v4, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    const-string/jumbo v7, "policy-sum-size"

    .line 308
    invoke-interface {p1, v4, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 313
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 316
    move-result-object v8

    .line 317
    check-cast v8, Ljava/util/HashMap;

    .line 319
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    move-result-object v5

    .line 323
    check-cast v5, Ljava/lang/Integer;

    .line 325
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 328
    move-result v5

    .line 329
    invoke-interface {p1, v4, v1, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    invoke-interface {p1, v4, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 338
    goto :goto_6

    .line 339
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 341
    goto :goto_5

    .line 342
    :cond_6
    invoke-static {}, Landroid/app/admin/flags/Flags;->devicePolicySizeTrackingInternalBugFixEnabled()Z

    .line 345
    move-result v0

    .line 346
    if-nez v0, :cond_7

    .line 348
    goto :goto_7

    .line 349
    :cond_7
    const-string/jumbo v0, "max-policy-size-limit"

    .line 352
    invoke-interface {p1, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 355
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    .line 357
    invoke-interface {p1, v4, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 360
    invoke-interface {p1, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 363
    :goto_7
    return-void
.end method

.method public final writeToFileLocked()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Writing to "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const-string v1, "DevicePolicyEngine"

    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Landroid/util/AtomicFile;

    .line 24
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    .line 26
    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 29
    const/4 v2, 0x0

    .line 30
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 33
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    :try_start_1
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 37
    move-result-object v4

    .line 38
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 40
    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 43
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeInner(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 46
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 49
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 52
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception p0

    .line 57
    move-object v2, v3

    .line 58
    goto :goto_0

    .line 59
    :catch_1
    move-exception p0

    .line 60
    :goto_0
    const-string v3, "Exception when writing"

    .line 62
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 70
    :cond_0
    :goto_1
    return-void
.end method
