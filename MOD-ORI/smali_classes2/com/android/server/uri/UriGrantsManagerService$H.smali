.class public final Lcom/android/server/uri/UriGrantsManagerService$H;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/uri/UriGrantsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriGrantsManagerService;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService$H;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_6

    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$H;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    move v5, v4

    .line 32
    move v6, v5

    .line 33
    :goto_0
    if-ge v5, v3, :cond_3

    .line 34
    .line 35
    iget-object v7, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    move v9, v4

    .line 48
    :goto_1
    if-ge v9, v8, :cond_2

    .line 49
    .line 50
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    check-cast v10, Lcom/android/server/uri/UriPermission;

    .line 55
    .line 56
    iget v11, v10, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    .line 57
    .line 58
    if-eqz v11, :cond_1

    .line 59
    .line 60
    add-int/lit8 v6, v6, 0x1

    .line 61
    .line 62
    new-instance v11, Lcom/android/server/uri/UriPermission$Snapshot;

    .line 63
    .line 64
    invoke-direct {v11, v10}, Lcom/android/server/uri/UriPermission$Snapshot;-><init>(Lcom/android/server/uri/UriPermission;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto/16 :goto_7

    .line 73
    .line 74
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    const/4 v2, 0x0

    .line 82
    :try_start_1
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    .line 83
    .line 84
    invoke-virtual {v3, v0, v1}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    .line 85
    .line 86
    .line 87
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :try_start_2
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 95
    .line 96
    .line 97
    const-string/jumbo v3, "uri-grants"

    .line 98
    .line 99
    .line 100
    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_4

    .line 112
    .line 113
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Lcom/android/server/uri/UriPermission$Snapshot;

    .line 118
    .line 119
    const-string/jumbo v4, "uri-grant"

    .line 120
    .line 121
    .line 122
    invoke-interface {v1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    .line 124
    .line 125
    const-string/jumbo v4, "sourceUserId"

    .line 126
    .line 127
    .line 128
    iget-object v5, v3, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    .line 129
    .line 130
    iget v5, v5, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    .line 131
    .line 132
    invoke-interface {v1, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    .line 134
    .line 135
    const-string/jumbo v4, "targetUserId"

    .line 136
    .line 137
    .line 138
    iget v5, v3, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    .line 139
    .line 140
    invoke-interface {v1, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    .line 142
    .line 143
    const-string/jumbo v4, "sourcePkg"

    .line 144
    .line 145
    .line 146
    iget-object v5, v3, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    .line 147
    .line 148
    invoke-interface {v1, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    .line 150
    .line 151
    const-string/jumbo v4, "targetPkg"

    .line 152
    .line 153
    .line 154
    iget-object v5, v3, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    .line 155
    .line 156
    invoke-interface {v1, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    .line 158
    .line 159
    const-string/jumbo v4, "uri"

    .line 160
    .line 161
    .line 162
    iget-object v5, v3, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    .line 163
    .line 164
    iget-object v5, v5, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 165
    .line 166
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-interface {v1, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    .line 172
    .line 173
    const-string/jumbo v4, "prefix"

    .line 174
    .line 175
    .line 176
    iget-object v5, v3, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    .line 177
    .line 178
    iget-boolean v5, v5, Lcom/android/server/uri/GrantUri;->prefix:Z

    .line 179
    .line 180
    invoke-static {v1, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 181
    .line 182
    .line 183
    const-string/jumbo v4, "modeFlags"

    .line 184
    .line 185
    .line 186
    iget v5, v3, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    .line 187
    .line 188
    invoke-interface {v1, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    .line 190
    .line 191
    const-string v4, "createdTime"

    .line 192
    .line 193
    iget-wide v7, v3, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    .line 194
    .line 195
    invoke-interface {v1, v2, v4, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    .line 197
    .line 198
    const-string/jumbo v3, "uri-grant"

    .line 199
    .line 200
    .line 201
    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :catch_0
    move-object v2, v0

    .line 206
    goto :goto_4

    .line 207
    :cond_4
    const-string/jumbo p1, "uri-grants"

    .line 208
    .line 209
    .line 210
    invoke-interface {v1, v2, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    .line 212
    .line 213
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :catch_1
    :goto_4
    if-eqz v2, :cond_5

    .line 223
    .line 224
    iget-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    .line 225
    .line 226
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 227
    .line 228
    .line 229
    :cond_5
    :goto_5
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

    .line 230
    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    const/16 p0, 0x1a2

    .line 235
    .line 236
    invoke-static {p0, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 237
    .line 238
    .line 239
    :goto_6
    return-void

    .line 240
    :goto_7
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    throw p0
.end method
