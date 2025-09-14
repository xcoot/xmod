.class public abstract Lcom/android/server/hdmi/HdmiUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ADDRESS_TO_TYPE:Ljava/util/Map;

.field public static final DEFAULT_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/16 v0, 0x10

    .line 3
    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    filled-new-array {v2}, [Ljava/lang/Integer;

    .line 13
    move-result-object v3

    .line 14
    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 17
    move-result-object v3

    .line 18
    invoke-static {v2, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 21
    move-result-object v3

    .line 22
    aput-object v3, v0, v1

    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v3

    .line 29
    filled-new-array {v3}, [Ljava/lang/Integer;

    .line 32
    move-result-object v4

    .line 33
    invoke-static {v4}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 36
    move-result-object v4

    .line 37
    invoke-static {v3, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 40
    move-result-object v4

    .line 41
    aput-object v4, v0, v1

    .line 43
    const/4 v1, 0x2

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v4

    .line 48
    filled-new-array {v3}, [Ljava/lang/Integer;

    .line 51
    move-result-object v5

    .line 52
    invoke-static {v5}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 55
    move-result-object v5

    .line 56
    invoke-static {v4, v5}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 59
    move-result-object v4

    .line 60
    aput-object v4, v0, v1

    .line 62
    const/4 v1, 0x3

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v4

    .line 67
    filled-new-array {v4}, [Ljava/lang/Integer;

    .line 70
    move-result-object v5

    .line 71
    invoke-static {v5}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 74
    move-result-object v5

    .line 75
    invoke-static {v4, v5}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 78
    move-result-object v5

    .line 79
    aput-object v5, v0, v1

    .line 81
    const/4 v1, 0x4

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v5

    .line 86
    filled-new-array {v5}, [Ljava/lang/Integer;

    .line 89
    move-result-object v6

    .line 90
    invoke-static {v6}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 93
    move-result-object v6

    .line 94
    invoke-static {v5, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 97
    move-result-object v6

    .line 98
    aput-object v6, v0, v1

    .line 100
    const/4 v1, 0x5

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    move-result-object v6

    .line 105
    filled-new-array {v6}, [Ljava/lang/Integer;

    .line 108
    move-result-object v7

    .line 109
    invoke-static {v7}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 112
    move-result-object v7

    .line 113
    invoke-static {v6, v7}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 116
    move-result-object v6

    .line 117
    aput-object v6, v0, v1

    .line 119
    const/4 v1, 0x6

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v6

    .line 124
    filled-new-array {v4}, [Ljava/lang/Integer;

    .line 127
    move-result-object v7

    .line 128
    invoke-static {v7}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 131
    move-result-object v7

    .line 132
    invoke-static {v6, v7}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 135
    move-result-object v6

    .line 136
    aput-object v6, v0, v1

    .line 138
    const/4 v1, 0x7

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v6

    .line 143
    filled-new-array {v4}, [Ljava/lang/Integer;

    .line 146
    move-result-object v7

    .line 147
    invoke-static {v7}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 150
    move-result-object v7

    .line 151
    invoke-static {v6, v7}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 154
    move-result-object v7

    .line 155
    aput-object v7, v0, v1

    .line 157
    const/16 v1, 0x8

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    move-result-object v7

    .line 163
    filled-new-array {v5}, [Ljava/lang/Integer;

    .line 166
    move-result-object v8

    .line 167
    invoke-static {v8}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 170
    move-result-object v8

    .line 171
    invoke-static {v7, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 174
    move-result-object v7

    .line 175
    aput-object v7, v0, v1

    .line 177
    const/16 v1, 0x9

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    move-result-object v7

    .line 183
    filled-new-array {v3}, [Ljava/lang/Integer;

    .line 186
    move-result-object v8

    .line 187
    invoke-static {v8}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 190
    move-result-object v8

    .line 191
    invoke-static {v7, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 194
    move-result-object v7

    .line 195
    aput-object v7, v0, v1

    .line 197
    const/16 v1, 0xa

    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object v7

    .line 203
    filled-new-array {v4}, [Ljava/lang/Integer;

    .line 206
    move-result-object v8

    .line 207
    invoke-static {v8}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 210
    move-result-object v8

    .line 211
    invoke-static {v7, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 214
    move-result-object v7

    .line 215
    aput-object v7, v0, v1

    .line 217
    const/16 v1, 0xb

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    move-result-object v7

    .line 223
    filled-new-array {v5}, [Ljava/lang/Integer;

    .line 226
    move-result-object v8

    .line 227
    invoke-static {v8}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 230
    move-result-object v8

    .line 231
    invoke-static {v7, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 234
    move-result-object v7

    .line 235
    aput-object v7, v0, v1

    .line 237
    const/16 v1, 0xc

    .line 239
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    move-result-object v7

    .line 243
    filled-new-array {v5, v3, v4, v6}, [Ljava/lang/Integer;

    .line 246
    move-result-object v8

    .line 247
    invoke-static {v8}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 250
    move-result-object v8

    .line 251
    invoke-static {v7, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 254
    move-result-object v7

    .line 255
    aput-object v7, v0, v1

    .line 257
    const/16 v1, 0xd

    .line 259
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    move-result-object v7

    .line 263
    filled-new-array {v5, v3, v4, v6}, [Ljava/lang/Integer;

    .line 266
    move-result-object v3

    .line 267
    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 270
    move-result-object v3

    .line 271
    invoke-static {v7, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 274
    move-result-object v3

    .line 275
    aput-object v3, v0, v1

    .line 277
    const/16 v1, 0xe

    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    move-result-object v3

    .line 283
    filled-new-array {v2}, [Ljava/lang/Integer;

    .line 286
    move-result-object v2

    .line 287
    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 290
    move-result-object v2

    .line 291
    invoke-static {v3, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 294
    move-result-object v2

    .line 295
    aput-object v2, v0, v1

    .line 297
    const/16 v1, 0xf

    .line 299
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    move-result-object v2

    .line 303
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 306
    move-result-object v3

    .line 307
    invoke-static {v2, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 310
    move-result-object v2

    .line 311
    aput-object v2, v0, v1

    .line 313
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    .line 316
    move-result-object v0

    .line 317
    sput-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:Ljava/util/Map;

    .line 319
    const-string v14, "Backup_2"

    .line 321
    const-string v15, "Secondary_TV"

    .line 323
    const-string v1, "TV"

    .line 325
    const-string v2, "Recorder_1"

    .line 327
    const-string v3, "Recorder_2"

    .line 329
    const-string v4, "Tuner_1"

    .line 331
    const-string v5, "Playback_1"

    .line 333
    const-string v6, "AudioSystem"

    .line 335
    const-string v7, "Tuner_2"

    .line 337
    const-string v8, "Tuner_3"

    .line 339
    const-string v9, "Playback_2"

    .line 341
    const-string v10, "Recorder_3"

    .line 343
    const-string v11, "Tuner_4"

    .line 345
    const-string v12, "Playback_3"

    .line 347
    const-string v13, "Backup_1"

    .line 349
    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    .line 352
    move-result-object v0

    .line 353
    sput-object v0, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    .line 355
    return-void
.end method

.method public static checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 3
    if-eq p0, p1, :cond_0

    .line 5
    const-string v0, "Invalid source [Expected:"

    .line 7
    const-string v1, ", Actual:"

    .line 9
    const-string v2, "]"

    .line 11
    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public static dumpMap(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .line 1
    const-string v0, ":"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 20
    check-cast p2, Ljava/util/HashMap;

    .line 22
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p1

    .line 30
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_1

    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Ljava/util/Map$Entry;

    .line 42
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 64
    return-void
.end method

.method public static getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 3
    const/4 v0, 0x0

    .line 4
    aget-byte p0, p0, v0

    .line 6
    and-int/lit8 p0, p0, 0x7f

    .line 8
    if-ltz p0, :cond_0

    .line 10
    const/16 v0, 0x64

    .line 12
    if-ge v0, p0, :cond_1

    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    :cond_1
    return p0
.end method

.method public static getEndOfSequence(I[B)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-gez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    :goto_0
    array-length v1, p1

    .line 6
    if-ge p0, v1, :cond_1

    .line 8
    aget-byte v1, p1, p0

    .line 10
    shr-int/lit8 v1, v1, 0x7

    .line 12
    const/4 v2, 0x1

    .line 13
    and-int/2addr v1, v2

    .line 14
    if-ne v1, v2, :cond_1

    .line 16
    add-int/lit8 p0, p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    array-length p1, p1

    .line 20
    if-lt p0, p1, :cond_2

    .line 22
    return v0

    .line 23
    :cond_2
    return p0
.end method

.method public static getLocalPortFromPhysicalAddress(II)I
    .locals 3

    .line 1
    if-ne p1, p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    const v0, 0xf000

    .line 8
    move v2, p1

    .line 9
    move v1, v0

    .line 10
    :goto_0
    if-eqz v2, :cond_1

    .line 12
    and-int v2, p1, v1

    .line 14
    or-int/2addr v0, v1

    .line 15
    shr-int/lit8 v1, v1, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    and-int/2addr p0, v0

    .line 19
    shl-int/lit8 v0, v0, 0x4

    .line 21
    and-int/2addr v0, p0

    .line 22
    if-eq v0, p1, :cond_2

    .line 24
    const/4 p0, -0x1

    .line 25
    return p0

    .line 26
    :cond_2
    shl-int/lit8 p1, v1, 0x4

    .line 28
    and-int/2addr p0, p1

    .line 29
    :goto_1
    shr-int/lit8 p1, p0, 0x4

    .line 31
    if-eqz p1, :cond_3

    .line 33
    move p0, p1

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    return p0
.end method

.method public static isEligibleAddressForDevice(II)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:Ljava/util/Map;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/util/List;

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 29
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
.end method

.method public static isInActiveRoutingPath(II)Z
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiUtils;->pathRelationship(II)I

    .line 4
    move-result p0

    .line 5
    const/4 p1, 0x2

    .line 6
    if-eq p0, p1, :cond_1

    .line 8
    const/4 p1, 0x3

    .line 9
    if-eq p0, p1, :cond_1

    .line 11
    const/4 p1, 0x5

    .line 12
    if-ne p0, p1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 18
    :goto_1
    return p0
.end method

.method public static isValidAddress(I)Z
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 3
    const/16 v0, 0xe

    .line 5
    if-gt p0, v0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 3
    const/4 v0, 0x0

    .line 4
    aget-byte p0, p0, v0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne p0, v1, :cond_0

    .line 9
    move v0, v1

    .line 10
    :cond_0
    return v0
.end method

.method public static pathRelationship(II)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0xffff

    .line 5
    if-eq p0, v1, :cond_7

    .line 7
    if-ne p1, v1, :cond_0

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    :goto_0
    const/4 v1, 0x3

    .line 11
    if-gt v0, v1, :cond_6

    .line 13
    mul-int/lit8 v2, v0, 0x4

    .line 15
    rsub-int/lit8 v3, v2, 0xc

    .line 17
    shr-int v4, p0, v3

    .line 19
    and-int/lit8 v4, v4, 0xf

    .line 21
    shr-int v3, p1, v3

    .line 23
    and-int/lit8 v3, v3, 0xf

    .line 25
    if-eq v4, v3, :cond_5

    .line 27
    rsub-int/lit8 v2, v2, 0x8

    .line 29
    shr-int/2addr p0, v2

    .line 30
    and-int/lit8 p0, p0, 0xf

    .line 32
    shr-int/2addr p1, v2

    .line 33
    and-int/lit8 p1, p1, 0xf

    .line 35
    if-nez v4, :cond_1

    .line 37
    const/4 p0, 0x2

    .line 38
    return p0

    .line 39
    :cond_1
    if-nez v3, :cond_2

    .line 41
    return v1

    .line 42
    :cond_2
    if-eq v0, v1, :cond_4

    .line 44
    if-nez p0, :cond_3

    .line 46
    if-nez p1, :cond_3

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_4
    :goto_1
    const/4 p0, 0x4

    .line 52
    return p0

    .line 53
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_6
    const/4 p0, 0x5

    .line 57
    return p0

    .line 58
    :cond_7
    :goto_2
    return v0
.end method

.method public static sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_0

    .line 13
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object v0
.end method

.method public static threeBytesToInt([B)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-byte v0, p0, v0

    .line 4
    and-int/lit16 v0, v0, 0xff

    .line 6
    shl-int/lit8 v0, v0, 0x10

    .line 8
    const/4 v1, 0x1

    .line 9
    aget-byte v1, p0, v1

    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 13
    shl-int/lit8 v1, v1, 0x8

    .line 15
    or-int/2addr v0, v1

    .line 16
    const/4 v1, 0x2

    .line 17
    aget-byte p0, p0, v1

    .line 19
    and-int/lit16 p0, p0, 0xff

    .line 21
    or-int/2addr p0, v0

    .line 22
    return p0
.end method

.method public static twoBytesToInt(I[B)I
    .locals 1

    .line 2
    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p0, p0, 0x1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static twoBytesToInt([B)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static verifyAddressType(II)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:Ljava/util/Map;

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p0

    .line 13
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/util/List;

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, -0x1

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p0

    .line 25
    filled-new-array {p0}, [Ljava/lang/Integer;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 32
    move-result-object p0

    .line 33
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v0

    .line 37
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "Device type mismatch:[Expected:"

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string p1, ", Actual:"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string p0, "]"

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    const-string p1, "HdmiUtils"

    .line 72
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 p0, 0x0

    .line 76
    return p0

    .line 77
    :cond_1
    const/4 p0, 0x1

    .line 78
    return p0
.end method
