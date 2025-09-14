.class public final Lcom/android/server/blob/BlobMetadata;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBlobFile:Ljava/io/File;

.field public final mBlobHandle:Landroid/app/blob/BlobHandle;

.field public final mBlobId:J

.field public final mCommitters:Landroid/util/ArraySet;

.field public final mContext:Landroid/content/Context;

.field public final mLeasees:Landroid/util/ArraySet;

.field public final mMetadataLock:Ljava/lang/Object;

.field public final mRevocableFds:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 24
    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    iput-wide p2, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 35
    .line 36
    iput-object p4, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 37
    .line 38
    return-void
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Lcom/android/server/blob/BlobMetadata;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const-string/jumbo v2, "id"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const/4 v4, 0x6

    .line 13
    if-ge v1, v4, :cond_0

    .line 14
    .line 15
    const-string/jumbo v4, "us"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance v4, Landroid/util/ArraySet;

    .line 22
    .line 23
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v5, Landroid/util/ArraySet;

    .line 27
    .line 28
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    const/4 v8, 0x0

    .line 36
    :cond_1
    :goto_0
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    if-eqz v9, :cond_a

    .line 41
    .line 42
    const-string v9, "bh"

    .line 43
    .line 44
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-eqz v9, :cond_2

    .line 53
    .line 54
    invoke-static/range {p0 .. p0}, Landroid/app/blob/BlobHandle;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/blob/BlobHandle;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const-string/jumbo v9, "c"

    .line 60
    .line 61
    .line 62
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v10

    .line 66
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-eqz v9, :cond_7

    .line 71
    .line 72
    const-string/jumbo v9, "p"

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    const-string/jumbo v9, "u"

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    const/4 v9, 0x4

    .line 87
    if-lt v1, v9, :cond_3

    .line 88
    .line 89
    const-string/jumbo v9, "cmt"

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v9

    .line 96
    :goto_1
    move-wide v14, v9

    .line 97
    goto :goto_2

    .line 98
    :cond_3
    const-wide/16 v9, 0x0

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    const/4 v13, 0x0

    .line 106
    :cond_4
    :goto_3
    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-eqz v10, :cond_5

    .line 111
    .line 112
    const-string v10, "am"

    .line 113
    .line 114
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_4

    .line 123
    .line 124
    invoke-static/range {p0 .. p0}, Lcom/android/server/blob/BlobAccessMode;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/blob/BlobAccessMode;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    goto :goto_3

    .line 129
    :cond_5
    if-nez v13, :cond_6

    .line 130
    .line 131
    const-string v7, "BlobStore"

    .line 132
    .line 133
    const-string/jumbo v9, "blobAccessMode should be available"

    .line 134
    .line 135
    .line 136
    invoke-static {v7, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    const/4 v7, 0x0

    .line 140
    goto :goto_4

    .line 141
    :cond_6
    new-instance v7, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 142
    .line 143
    move-object v10, v7

    .line 144
    invoke-direct/range {v10 .. v15}, Lcom/android/server/blob/BlobMetadata$Committer;-><init>(Ljava/lang/String;ILcom/android/server/blob/BlobAccessMode;J)V

    .line 145
    .line 146
    .line 147
    :goto_4
    if-eqz v7, :cond_1

    .line 148
    .line 149
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_7
    const-string/jumbo v7, "l"

    .line 154
    .line 155
    .line 156
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-eqz v7, :cond_1

    .line 165
    .line 166
    const-string/jumbo v7, "p"

    .line 167
    .line 168
    .line 169
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    const-string/jumbo v7, "u"

    .line 174
    .line 175
    .line 176
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    const/4 v7, 0x3

    .line 181
    if-lt v1, v7, :cond_8

    .line 182
    .line 183
    const-string/jumbo v7, "rn"

    .line 184
    .line 185
    .line 186
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    move-object v12, v7

    .line 191
    goto :goto_5

    .line 192
    :cond_8
    const/4 v12, 0x0

    .line 193
    :goto_5
    const-string/jumbo v7, "ex"

    .line 194
    .line 195
    .line 196
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 197
    .line 198
    .line 199
    move-result-wide v14

    .line 200
    const/4 v7, 0x2

    .line 201
    if-lt v1, v7, :cond_9

    .line 202
    .line 203
    const-string/jumbo v7, "d"

    .line 204
    .line 205
    .line 206
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    move-object v13, v7

    .line 211
    goto :goto_6

    .line 212
    :cond_9
    const/4 v13, 0x0

    .line 213
    :goto_6
    new-instance v7, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 214
    .line 215
    move-object v9, v7

    .line 216
    invoke-direct/range {v9 .. v15}, Lcom/android/server/blob/BlobMetadata$Leasee;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;J)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_a
    if-nez v8, :cond_b

    .line 225
    .line 226
    const-string v0, "BlobStore"

    .line 227
    .line 228
    const-string/jumbo v1, "blobHandle should be available"

    .line 229
    .line 230
    .line 231
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    const/4 v0, 0x0

    .line 235
    return-object v0

    .line 236
    :cond_b
    new-instance v0, Lcom/android/server/blob/BlobMetadata;

    .line 237
    .line 238
    move-object/from16 v1, p2

    .line 239
    .line 240
    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/server/blob/BlobMetadata;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;)V

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 244
    .line 245
    monitor-enter v1

    .line 246
    :try_start_0
    iget-object v2, v0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 247
    .line 248
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 249
    .line 250
    .line 251
    iget-object v2, v0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 252
    .line 253
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 254
    .line 255
    .line 256
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    iget-object v2, v0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 258
    .line 259
    monitor-enter v2

    .line 260
    :try_start_1
    iget-object v1, v0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 261
    .line 262
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 263
    .line 264
    .line 265
    iget-object v1, v0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 266
    .line 267
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 268
    .line 269
    .line 270
    monitor-exit v2

    .line 271
    return-object v0

    .line 272
    :catchall_0
    move-exception v0

    .line 273
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    throw v0

    .line 275
    :catchall_1
    move-exception v0

    .line 276
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 277
    throw v0
.end method

.method public static getAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Lcom/android/server/blob/BlobMetadata$Accessor;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/blob/BlobMetadata$Accessor;

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    if-eq p2, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, p2, p1}, Lcom/android/server/blob/BlobMetadata$Accessor;->equals(ILjava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object v4, v2, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    iget v4, v2, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 37
    .line 38
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-ne p3, v4, :cond_1

    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_1
    if-eq p2, v3, :cond_2

    .line 46
    .line 47
    iget v3, v2, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 48
    .line 49
    if-ne v3, p2, :cond_2

    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method


# virtual methods
.method public final addOrReplaceCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final createRevocableFd(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/RevocableFileDescriptor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/blob/BlobStoreUtils;->getRevocableFdHandler()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, p1, v2}, Landroid/os/RevocableFileDescriptor;-><init>(Landroid/content/Context;Ljava/io/FileDescriptor;Landroid/os/Handler;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 13
    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    new-instance v1, Lcom/android/server/blob/BlobMetadata$Accessor;

    .line 16
    .line 17
    invoke-direct {v1, p2, p3}, Lcom/android/server/blob/BlobMetadata$Accessor;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Landroid/util/ArraySet;

    .line 27
    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    new-instance p2, Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object p3, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {p3, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    new-instance p1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;

    .line 48
    .line 49
    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/blob/BlobMetadata;Lcom/android/server/blob/BlobMetadata$Accessor;Landroid/os/RevocableFileDescriptor;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/os/RevocableFileDescriptor;->addOnCloseListener(Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p0
.end method

.method public final getBlobFile()Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobFile:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 6
    .line 7
    new-instance v0, Ljava/io/File;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string/jumbo v2, "blobstore"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/io/File;

    .line 20
    .line 21
    const-string/jumbo v2, "blobs"

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/io/File;

    .line 28
    .line 29
    iget-wide v2, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 30
    .line 31
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobFile:Ljava/io/File;

    .line 39
    .line 40
    :cond_0
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobFile:Ljava/io/File;

    .line 41
    .line 42
    return-object p0
.end method

.method public final getLeaseInfo(ILjava/lang/String;)Landroid/app/blob/LeaseInfo;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_4

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    goto :goto_3

    .line 29
    :cond_0
    iget v5, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 30
    .line 31
    if-ne v5, p1, :cond_3

    .line 32
    .line 33
    iget-object v5, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    iget-object p1, v4, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    :goto_1
    move v9, v2

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    iget-object v1, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    .line 50
    .line 51
    iget v3, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 52
    .line 53
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-static {p0, v1, v3}, Lcom/android/server/blob/BlobStoreUtils;->getPackageResources(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    if-nez p0, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const-string/jumbo v2, "string"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    goto :goto_1

    .line 72
    :goto_2
    new-instance p0, Landroid/app/blob/LeaseInfo;

    .line 73
    .line 74
    iget-wide v7, v4, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    .line 75
    .line 76
    iget-object v10, v4, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    .line 77
    .line 78
    move-object v5, p0

    .line 79
    move-object v6, p2

    .line 80
    invoke-direct/range {v5 .. v10}, Landroid/app/blob/LeaseInfo;-><init>(Ljava/lang/String;JILjava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    monitor-exit v0

    .line 84
    return-object p0

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_4

    .line 87
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    monitor-exit v0

    .line 91
    const/4 p0, 0x0

    .line 92
    return-object p0

    .line 93
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final hasACommitterInUser(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_1

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 21
    .line 22
    iget v4, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 23
    .line 24
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-ne p1, v4, :cond_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    monitor-exit v0

    .line 39
    return v2

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public hasLeaseWaitTimeElapsedForAll()Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    if-ge v3, v1, :cond_1

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 19
    .line 20
    iget-wide v4, v4, Lcom/android/server/blob/BlobMetadata$Committer;->commitTimeMs:J

    .line 21
    .line 22
    sget-boolean v6, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    .line 23
    .line 24
    sget-wide v6, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 25
    .line 26
    add-long/2addr v4, v6

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    cmp-long v4, v4, v6

    .line 32
    .line 33
    if-gez v4, :cond_0

    .line 34
    .line 35
    add-int/2addr v3, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return v2

    .line 38
    :cond_1
    return v0
.end method

.method public final hasOtherLeasees(IILjava/lang/String;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_5

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 v5, -0x1

    .line 30
    const/4 v6, 0x1

    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    if-eq p1, v5, :cond_1

    .line 34
    .line 35
    invoke-virtual {v4, p1, p3}, Lcom/android/server/blob/BlobMetadata$Accessor;->equals(ILjava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-nez v7, :cond_1

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return v6

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    if-eqz p3, :cond_3

    .line 46
    .line 47
    iget-object v7, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_2

    .line 54
    .line 55
    iget v7, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 56
    .line 57
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eq p2, v7, :cond_3

    .line 62
    .line 63
    :cond_2
    monitor-exit v0

    .line 64
    return v6

    .line 65
    :cond_3
    if-eq p1, v5, :cond_4

    .line 66
    .line 67
    iget v4, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 68
    .line 69
    if-eq v4, p1, :cond_4

    .line 70
    .line 71
    monitor-exit v0

    .line 72
    return v6

    .line 73
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    monitor-exit v0

    .line 77
    return v2

    .line 78
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public final hasValidLeases()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_1

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    monitor-exit v0

    .line 37
    return v2

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final isACommitter(ILjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {p0, p2, p1, v1}, Lcom/android/server/blob/BlobMetadata;->getAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Lcom/android/server/blob/BlobMetadata$Accessor;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final isALeasee(ILjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {p0, p2, p1, v1}, Lcom/android/server/blob/BlobMetadata;->getAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Lcom/android/server/blob/BlobMetadata$Accessor;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    monitor-exit v0

    .line 30
    return p0

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final isALeaseeInUser(IILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-static {p0, p3, p1, p2}, Lcom/android/server/blob/BlobMetadata;->getAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Lcom/android/server/blob/BlobMetadata$Accessor;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    monitor-exit v0

    .line 26
    return p0

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final isAccessAllowedForCaller(ILjava/lang/String;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/blob/BlobHandle;->isExpired()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    move v3, v1

    .line 21
    :goto_0
    const/4 v4, 0x1

    .line 22
    if-ge v3, v2, :cond_2

    .line 23
    .line 24
    iget-object v5, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 25
    .line 26
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 31
    .line 32
    invoke-virtual {v5}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_1

    .line 37
    .line 38
    invoke-virtual {v5, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;->equals(ILjava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return v4

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    move v5, v1

    .line 63
    :goto_1
    if-ge v5, v3, :cond_6

    .line 64
    .line 65
    iget-object v6, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 66
    .line 67
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 72
    .line 73
    iget v7, v6, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 74
    .line 75
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    if-eq v2, v7, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    invoke-virtual {v6, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;->equals(ILjava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_4

    .line 87
    .line 88
    monitor-exit v0

    .line 89
    return v4

    .line 90
    :cond_4
    iget-object v7, v6, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 91
    .line 92
    iget-object v8, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    iget v6, v6, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 95
    .line 96
    invoke-virtual {v7, v8, p2, p1, v6}, Lcom/android/server/blob/BlobAccessMode;->isAccessAllowedForCaller(Landroid/content/Context;Ljava/lang/String;II)Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eqz v6, :cond_5

    .line 101
    .line 102
    monitor-exit v0

    .line 103
    return v4

    .line 104
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 108
    .line 109
    .line 110
    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :try_start_1
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    const-string v7, "android.permission.ACCESS_BLOBS_ACROSS_USERS"

    .line 114
    .line 115
    const/4 v8, -0x1

    .line 116
    invoke-virtual {v3, v7, v8, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 117
    .line 118
    .line 119
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 120
    if-nez v3, :cond_7

    .line 121
    .line 122
    move v3, v4

    .line 123
    goto :goto_3

    .line 124
    :cond_7
    move v3, v1

    .line 125
    :goto_3
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    .line 127
    .line 128
    if-nez v3, :cond_8

    .line 129
    .line 130
    monitor-exit v0

    .line 131
    return v1

    .line 132
    :cond_8
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 133
    .line 134
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    move v5, v1

    .line 139
    :goto_4
    if-ge v5, v3, :cond_b

    .line 140
    .line 141
    iget-object v6, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 142
    .line 143
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    check-cast v6, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 148
    .line 149
    iget v7, v6, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 150
    .line 151
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-ne v2, v7, :cond_9

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 159
    .line 160
    .line 161
    move-result-wide v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    :try_start_3
    iget-object v10, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    .line 163
    .line 164
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    invoke-virtual {v10, p2, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    .line 170
    .line 171
    :try_start_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    .line 173
    .line 174
    iget-object v7, v6, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 175
    .line 176
    iget-object v8, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    .line 177
    .line 178
    iget v6, v6, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 179
    .line 180
    invoke-virtual {v7, v8, p2, p1, v6}, Lcom/android/server/blob/BlobAccessMode;->isAccessAllowedForCaller(Landroid/content/Context;Ljava/lang/String;II)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_a

    .line 185
    .line 186
    monitor-exit v0

    .line 187
    return v4

    .line 188
    :catchall_1
    move-exception p0

    .line 189
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :catch_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    .line 195
    .line 196
    :cond_a
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_b
    monitor-exit v0

    .line 200
    return v1

    .line 201
    :catchall_2
    move-exception p0

    .line 202
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    .line 204
    .line 205
    throw p0

    .line 206
    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    throw p0
.end method

.method public final removeCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final removeDataForUser(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 5
    .line 6
    new-instance v2, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v2, p1, v3}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;-><init>(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 16
    .line 17
    new-instance v2, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v2, p1, v3}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;-><init>(II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-direct {v1, p1, v2}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;-><init>(II)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final removeLeasee(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final shouldBeDeleted(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/blob/BlobHandle;->isExpired()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->hasLeaseWaitTimeElapsedForAll()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->hasValidLeases()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public final writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "id"

    .line 5
    .line 6
    .line 7
    iget-wide v2, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 8
    .line 9
    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 10
    .line 11
    .line 12
    const-string v1, "bh"

    .line 13
    .line 14
    move-object v2, p1

    .line 15
    check-cast v2, Lcom/android/internal/util/FastXmlSerializer;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroid/app/blob/BlobHandle;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "bh"

    .line 27
    .line 28
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v4, 0x0

    .line 38
    move v5, v4

    .line 39
    :goto_0
    if-ge v5, v1, :cond_0

    .line 40
    .line 41
    const-string/jumbo v6, "c"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3, v6}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    .line 46
    .line 47
    iget-object v6, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 48
    .line 49
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 54
    .line 55
    const-string/jumbo v7, "p"

    .line 56
    .line 57
    .line 58
    iget-object v8, v6, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v7, "u"

    .line 64
    .line 65
    .line 66
    iget v8, v6, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 67
    .line 68
    invoke-static {p1, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v7, "cmt"

    .line 72
    .line 73
    .line 74
    iget-wide v8, v6, Lcom/android/server/blob/BlobMetadata$Committer;->commitTimeMs:J

    .line 75
    .line 76
    invoke-static {p1, v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 77
    .line 78
    .line 79
    const-string v7, "am"

    .line 80
    .line 81
    invoke-virtual {v2, v3, v7}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    .line 83
    .line 84
    iget-object v6, v6, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 85
    .line 86
    invoke-virtual {v6, p1}, Lcom/android/server/blob/BlobAccessMode;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3, v7}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    .line 91
    .line 92
    const-string/jumbo v6, "c"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v3, v6}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    .line 97
    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto :goto_2

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    :goto_1
    if-ge v4, v1, :cond_1

    .line 110
    .line 111
    const-string/jumbo v5, "l"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v3, v5}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    .line 116
    .line 117
    iget-object v5, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 118
    .line 119
    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 124
    .line 125
    invoke-virtual {v5, p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 126
    .line 127
    .line 128
    const-string/jumbo v5, "l"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v3, v5}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    .line 133
    .line 134
    add-int/lit8 v4, v4, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    monitor-exit v0

    .line 138
    return-void

    .line 139
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    throw p0
.end method
