.class public final Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mStats:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    .line 12
    .line 13
    return-void
.end method

.method public static getOrCreateUserStats(ILjava/util/Map;)Ljava/util/Deque;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast p1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/util/ArrayDeque;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/util/Deque;

    .line 34
    .line 35
    return-object p0
.end method


# virtual methods
.method public final log(ILjava/time/LocalDate;FF)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1, p0}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateUserStats(ILjava/util/Map;)Ljava/util/Deque;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p2}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/hardware/display/AmbientBrightnessDayStats;->getStats()[F

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Landroid/hardware/display/AmbientBrightnessDayStats;->getBucketBoundaries()[F

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/16 v1, 0x1fb

    .line 37
    .line 38
    invoke-static {v1, v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[F[F)V

    .line 39
    .line 40
    .line 41
    :cond_1
    new-instance p1, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 42
    .line 43
    sget-object v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->BUCKET_BOUNDARIES_FOR_NEW_STATS:[F

    .line 44
    .line 45
    invoke-direct {p1, p2, v0}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Ljava/time/LocalDate;[F)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p0}, Ljava/util/Deque;->size()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const/4 v0, 0x7

    .line 53
    if-ne p2, v0, :cond_2

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p1, p3, p4}, Landroid/hardware/display/AmbientBrightnessDayStats;->log(FF)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final readFromXML(Ljava/io/InputStream;)V
    .locals 14

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    if-eq v3, v4, :cond_0

    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    if-eq v3, v5, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v5, "ambient-brightness-stats"

    .line 30
    .line 31
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_7

    .line 36
    .line 37
    iget-object v3, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-wide/16 v5, 0x7

    .line 47
    .line 48
    invoke-virtual {v3, v5, v6}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eq v6, v4, :cond_6

    .line 61
    .line 62
    const/4 v7, 0x3

    .line 63
    if-ne v6, v7, :cond_2

    .line 64
    .line 65
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-le v8, v5, :cond_6

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_2
    :goto_2
    if-eq v6, v7, :cond_1

    .line 76
    .line 77
    const/4 v7, 0x4

    .line 78
    if-ne v6, v7, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    const-string v7, "ambient-brightness-day-stats"

    .line 86
    .line 87
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_1

    .line 92
    .line 93
    const-string/jumbo v6, "user"

    .line 94
    .line 95
    .line 96
    const/4 v7, 0x0

    .line 97
    invoke-interface {p1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    const-string/jumbo v8, "local-date"

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-static {v8}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    const-string/jumbo v9, "bucket-boundaries"

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v7, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    const-string/jumbo v10, "bucket-stats"

    .line 124
    .line 125
    .line 126
    invoke-interface {p1, v7, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    array-length v10, v9

    .line 135
    array-length v11, v7

    .line 136
    if-ne v10, v11, :cond_5

    .line 137
    .line 138
    array-length v10, v9

    .line 139
    if-lt v10, v4, :cond_5

    .line 140
    .line 141
    array-length v10, v9

    .line 142
    new-array v10, v10, [F

    .line 143
    .line 144
    array-length v11, v7

    .line 145
    new-array v11, v11, [F

    .line 146
    .line 147
    const/4 v12, 0x0

    .line 148
    :goto_3
    array-length v13, v9

    .line 149
    if-ge v12, v13, :cond_4

    .line 150
    .line 151
    aget-object v13, v9, v12

    .line 152
    .line 153
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 154
    .line 155
    .line 156
    move-result v13

    .line 157
    aput v13, v10, v12

    .line 158
    .line 159
    aget-object v13, v7, v12

    .line 160
    .line 161
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    aput v13, v11, v12

    .line 166
    .line 167
    add-int/lit8 v12, v12, 0x1

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_4
    iget-object v7, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    .line 171
    .line 172
    iget-object v9, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;

    .line 173
    .line 174
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9, v6}, Landroid/os/UserManager;->getUserHandle(I)I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    const/4 v7, -0x1

    .line 182
    if-eq v6, v7, :cond_1

    .line 183
    .line 184
    invoke-virtual {v8, v3}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-eqz v7, :cond_1

    .line 189
    .line 190
    invoke-static {v6, v2}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->getOrCreateUserStats(ILjava/util/Map;)Ljava/util/Deque;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    new-instance v7, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 195
    .line 196
    invoke-direct {v7, v8, v10, v11}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Ljava/time/LocalDate;[F[F)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v6, v7}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_5
    new-instance p0, Ljava/io/IOException;

    .line 205
    .line 206
    const-string p1, "Invalid brightness stats string."

    .line 207
    .line 208
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p0

    .line 212
    :cond_6
    iput-object v2, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    .line 213
    .line 214
    return-void

    .line 215
    :cond_7
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 216
    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v0, "Ambient brightness stats not found in tracker file "

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_4
    new-instance p1, Ljava/io/IOException;

    .line 239
    .line 240
    const-string v0, "Failed to parse brightness stats file."

    .line 241
    .line 242
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    .line 244
    .line 245
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/Deque;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 49
    .line 50
    const-string v4, "  "

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v4, " "

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, "\n"

    .line 71
    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

.method public final writeToXML(Ljava/io/OutputStream;)V
    .locals 13

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-interface {v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->this$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    .line 19
    .line 20
    iget-object v3, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-wide/16 v4, 0x7

    .line 30
    .line 31
    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "ambient-brightness-stats"

    .line 36
    .line 37
    invoke-interface {v0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_4

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Ljava/util/Map$Entry;

    .line 61
    .line 62
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Ljava/util/Deque;

    .line 67
    .line 68
    invoke-interface {v6}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_0

    .line 77
    .line 78
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    check-cast v7, Landroid/hardware/display/AmbientBrightnessDayStats;

    .line 83
    .line 84
    iget-object v8, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    .line 85
    .line 86
    iget-object v9, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;

    .line 87
    .line 88
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    check-cast v10, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, v10}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    const/4 v9, -0x1

    .line 106
    if-eq v8, v9, :cond_1

    .line 107
    .line 108
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v9, v3}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-eqz v9, :cond_1

    .line 117
    .line 118
    const-string v9, "ambient-brightness-day-stats"

    .line 119
    .line 120
    invoke-interface {v0, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    .line 122
    .line 123
    const-string/jumbo v10, "user"

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, v2, v10, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getLocalDate()Ljava/time/LocalDate;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-virtual {v8}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    const-string/jumbo v10, "local-date"

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v2, v10, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    .line 142
    .line 143
    new-instance v8, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    new-instance v10, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const/4 v11, 0x0

    .line 154
    :goto_1
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getBucketBoundaries()[F

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    array-length v12, v12

    .line 159
    if-ge v11, v12, :cond_3

    .line 160
    .line 161
    if-lez v11, :cond_2

    .line 162
    .line 163
    const-string v12, ","

    .line 164
    .line 165
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    :cond_2
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getBucketBoundaries()[F

    .line 172
    .line 173
    .line 174
    move-result-object v12

    .line 175
    aget v12, v12, v11

    .line 176
    .line 177
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7}, Landroid/hardware/display/AmbientBrightnessDayStats;->getStats()[F

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    aget v12, v12, v11

    .line 185
    .line 186
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    add-int/lit8 v11, v11, 0x1

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_3
    const-string/jumbo v7, "bucket-boundaries"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    invoke-interface {v0, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    .line 201
    .line 202
    const-string/jumbo v7, "bucket-stats"

    .line 203
    .line 204
    .line 205
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-interface {v0, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    .line 211
    .line 212
    invoke-interface {v0, v2, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_4
    invoke-interface {v0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    .line 219
    .line 220
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 224
    .line 225
    .line 226
    return-void
.end method
