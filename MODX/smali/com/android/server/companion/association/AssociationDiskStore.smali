.class public final Lcom/android/server/companion/association/AssociationDiskStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/companion/association/AssociationDiskStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    .line 11
    return-void
.end method

.method public static readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;
    .locals 34

    .line 1
    move-object/from16 v0, p2

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 10
    const-string/jumbo v2, "persistence-version"

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 17
    move-result v2

    .line 18
    new-instance v4, Lcom/android/server/companion/association/Associations;

    .line 20
    invoke-direct {v4}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 23
    const/4 v5, 0x1

    .line 24
    const-wide/16 v6, 0x0

    .line 26
    const-string/jumbo v8, "time_approved"

    .line 29
    const-string/jumbo v9, "notify_device_nearby"

    .line 32
    const-string/jumbo v10, "tag"

    .line 35
    const-string/jumbo v11, "package"

    .line 38
    const-string/jumbo v12, "profile"

    .line 41
    const-string v13, "association"

    .line 43
    const-string v14, "associations"

    .line 45
    if-eqz v2, :cond_6

    .line 47
    if-eq v2, v5, :cond_0

    .line 49
    goto/16 :goto_6

    .line 51
    :cond_0
    :goto_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 54
    invoke-static {v1, v14}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 60
    invoke-static {v1, v14}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v2, "max-id"

    .line 66
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 69
    move-result v2

    .line 70
    new-instance v15, Lcom/android/server/companion/association/Associations;

    .line 72
    invoke-direct {v15}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 75
    iput v5, v15, Lcom/android/server/companion/association/Associations;->mVersion:I

    .line 77
    :goto_1
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 80
    invoke-static {v1, v14}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_1

    .line 86
    iput v2, v15, Lcom/android/server/companion/association/Associations;->mMaxId:I

    .line 88
    move-object v4, v15

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v1, v13}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_2

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    invoke-static {v1, v13}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v4, "id"

    .line 103
    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 106
    move-result v17

    .line 107
    invoke-static {v1, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v23

    .line 111
    invoke-static {v1, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v19

    .line 115
    invoke-static {v1, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v20

    .line 119
    const-string/jumbo v4, "mac_address"

    .line 122
    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object v4

    .line 126
    if-eqz v4, :cond_3

    .line 128
    invoke-static {v4}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    .line 131
    move-result-object v4

    .line 132
    :goto_2
    move-object/from16 v21, v4

    .line 134
    goto :goto_3

    .line 135
    :cond_3
    const/4 v4, 0x0

    .line 136
    goto :goto_2

    .line 137
    :goto_3
    const-string/jumbo v4, "display_name"

    .line 140
    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object v22

    .line 144
    const-string/jumbo v4, "self_managed"

    .line 147
    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 150
    move-result v25

    .line 151
    invoke-static {v1, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 154
    move-result v26

    .line 155
    const-string/jumbo v4, "revoked"

    .line 158
    invoke-static {v1, v4, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    .line 161
    move-result v27

    .line 162
    const-string/jumbo v4, "pending"

    .line 165
    invoke-static {v1, v4, v3}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    .line 168
    move-result v28

    .line 169
    invoke-static {v1, v8, v6, v7}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 172
    move-result-wide v29

    .line 173
    const-string/jumbo v4, "last_time_connected"

    .line 176
    const-wide v6, 0x7fffffffffffffffL

    .line 181
    invoke-static {v1, v4, v6, v7}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 184
    move-result-wide v31

    .line 185
    const-string/jumbo v4, "system_data_sync_flags"

    .line 188
    invoke-static {v1, v4, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 191
    move-result v33

    .line 192
    new-instance v4, Landroid/companion/AssociationInfo;

    .line 194
    move-object/from16 v16, v4

    .line 196
    const/16 v24, 0x0

    .line 198
    move/from16 v18, p0

    .line 200
    invoke-direct/range {v16 .. v33}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJI)V

    .line 203
    iget-object v6, v15, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    .line 205
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getId()I

    .line 211
    move-result v4

    .line 212
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 215
    move-result v2

    .line 216
    const-wide/16 v6, 0x0

    .line 218
    goto/16 :goto_1

    .line 220
    :cond_4
    invoke-static {v1, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_5

    .line 226
    goto :goto_6

    .line 227
    :cond_5
    const-wide/16 v6, 0x0

    .line 229
    goto/16 :goto_0

    .line 231
    :cond_6
    invoke-static {v1, v14}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 234
    const v0, 0x186a0

    .line 237
    mul-int v0, v0, p0

    .line 239
    add-int/2addr v0, v5

    .line 240
    new-instance v4, Lcom/android/server/companion/association/Associations;

    .line 242
    invoke-direct {v4}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 245
    iput v3, v4, Lcom/android/server/companion/association/Associations;->mVersion:I

    .line 247
    :goto_4
    move/from16 v16, v0

    .line 249
    :goto_5
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 252
    invoke-static {v1, v14}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_7

    .line 258
    add-int/lit8 v0, v16, -0x1

    .line 260
    iput v0, v4, Lcom/android/server/companion/association/Associations;->mMaxId:I

    .line 262
    :goto_6
    return-object v4

    .line 263
    :cond_7
    invoke-static {v1, v13}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 266
    move-result v0

    .line 267
    if-nez v0, :cond_8

    .line 269
    goto :goto_5

    .line 270
    :cond_8
    add-int/lit8 v0, v16, 0x1

    .line 272
    invoke-static {v1, v13}, Lcom/android/server/companion/association/AssociationDiskStore;->requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 275
    invoke-static {v1, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    move-result-object v18

    .line 279
    invoke-static {v1, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    move-result-object v19

    .line 283
    const-string/jumbo v2, "device"

    .line 286
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    move-result-object v2

    .line 290
    invoke-static {v1, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    move-result-object v22

    .line 294
    invoke-static {v1, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 297
    move-result v25

    .line 298
    const-wide/16 v6, 0x0

    .line 300
    invoke-static {v1, v8, v6, v7}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    .line 303
    move-result-wide v28

    .line 304
    new-instance v3, Landroid/companion/AssociationInfo;

    .line 306
    move-object v15, v3

    .line 307
    invoke-static {v2}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    .line 310
    move-result-object v20

    .line 311
    const/16 v26, 0x0

    .line 313
    const/16 v27, 0x0

    .line 315
    const/16 v21, 0x0

    .line 317
    const/16 v23, 0x0

    .line 319
    const/16 v24, 0x0

    .line 321
    const-wide v30, 0x7fffffffffffffffL

    .line 326
    const/16 v32, 0x0

    .line 328
    move/from16 v17, p0

    .line 330
    invoke-direct/range {v15 .. v32}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJI)V

    .line 333
    iget-object v2, v4, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    .line 335
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    goto :goto_4
.end method

.method public static requireStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 10
    const-string p1, "Should be at the start of \"associations\" tag"

    .line 12
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0
.end method


# virtual methods
.method public final getStorageFileForUser(I)Landroid/util/AtomicFile;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationDiskStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda1;

    .line 9
    invoke-direct {v1, p1}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda1;-><init>(I)V

    .line 12
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/util/AtomicFile;

    .line 20
    return-object p0
.end method

.method public final readAssociationsByUsers(Ljava/util/List;)Ljava/util/Map;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    check-cast p1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_6

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v2

    .line 28
    const-string v3, "CDM_AssociationDiskStore"

    .line 30
    const-string v4, "Reading associations for user "

    .line 32
    const-string v5, " from disk."

    .line 34
    invoke-static {v2, v4, v5, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, v2}, Lcom/android/server/companion/association/AssociationDiskStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    .line 40
    move-result-object v3

    .line 41
    monitor-enter v3

    .line 42
    :try_start_0
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_1

    .line 52
    new-instance v4, Ljava/io/File;

    .line 54
    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 57
    move-result-object v5

    .line 58
    const-string/jumbo v6, "companion_device_manager_associations.xml"

    .line 61
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_0

    .line 70
    new-instance v2, Lcom/android/server/companion/association/Associations;

    .line 72
    invoke-direct {v2}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 75
    monitor-exit v3

    .line 76
    goto :goto_5

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_6

    .line 79
    :cond_0
    new-instance v5, Landroid/util/AtomicFile;

    .line 81
    invoke-direct {v5, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 84
    const-string v6, "associations"

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    const-string/jumbo v6, "state"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    const/4 v4, 0x0

    .line 91
    move-object v5, v3

    .line 92
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 95
    move-result-object v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    invoke-static {v2, v5, v6}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;

    .line 99
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    if-eqz v5, :cond_3

    .line 102
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    goto :goto_4

    .line 106
    :catch_0
    move-exception v2

    .line 107
    goto :goto_3

    .line 108
    :catchall_1
    move-exception v2

    .line 109
    if-eqz v5, :cond_2

    .line 111
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 114
    goto :goto_2

    .line 115
    :catchall_2
    move-exception v5

    .line 116
    :try_start_5
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 119
    :cond_2
    :goto_2
    throw v2
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 120
    :goto_3
    :try_start_6
    const-string v5, "CDM_AssociationDiskStore"

    .line 122
    const-string v6, "Error while reading associations file"

    .line 124
    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    new-instance v2, Lcom/android/server/companion/association/Associations;

    .line 129
    invoke-direct {v2}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 132
    :cond_3
    :goto_4
    if-nez v4, :cond_4

    .line 134
    iget v5, v2, Lcom/android/server/companion/association/Associations;->mVersion:I

    .line 136
    const/4 v6, 0x1

    .line 137
    if-ge v5, v6, :cond_5

    .line 139
    :cond_4
    new-instance v5, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;

    .line 141
    invoke-direct {v5, v2}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/association/Associations;)V

    .line 144
    invoke-static {v3, v5}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 147
    if-eqz v4, :cond_5

    .line 149
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 152
    :cond_5
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 153
    :goto_5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    goto/16 :goto_0

    .line 158
    :goto_6
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 159
    throw p0

    .line 160
    :cond_6
    return-object v0
.end method
