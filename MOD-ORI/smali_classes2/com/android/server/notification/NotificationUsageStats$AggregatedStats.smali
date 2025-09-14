.class public final Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final alertRate:Lcom/android/server/notification/AlertRateLimiter;

.field public final enqueueRate:Lcom/android/server/notification/RateEstimator;

.field public final finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

.field public final key:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mCreated:J

.field public mLastAccessTime:J

.field public mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

.field public final noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

.field public numAlertViolations:I

.field public numAutoCancel:I

.field public numBlocked:I

.field public numEnqueuedByApp:I

.field public numForegroundService:I

.field public numImagesRemoved:I

.field public numInterrupt:I

.field public numOngoing:I

.field public numPeopleCacheHit:I

.field public numPeopleCacheMiss:I

.field public numPostedByApp:I

.field public numPrivate:I

.field public numQuotaViolations:I

.field public numRateViolations:I

.field public numRemovedByApp:I

.field public numSecret:I

.field public numSuspendedByAdmin:I

.field public numTooOld:I

.field public numUndecoratedRemoteViews:I

.field public numUpdatedByApp:I

.field public numUserInitiatedJob:I

.field public numWithActions:I

.field public numWithBigPicture:I

.field public numWithBigText:I

.field public numWithInbox:I

.field public numWithInfoText:I

.field public numWithLargeIcon:I

.field public numWithMediaSession:I

.field public numWithStaredPeople:I

.field public numWithSubText:I

.field public numWithText:I

.field public numWithTitle:I

.field public numWithValidPeople:I

.field public final quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mCreated:J

    .line 13
    .line 14
    new-instance p2, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 15
    .line 16
    const-string/jumbo v0, "note_imp_noisy_"

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p1, v0}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 23
    .line 24
    new-instance p2, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 25
    .line 26
    const-string/jumbo v0, "note_imp_quiet_"

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p1, v0}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 33
    .line 34
    new-instance p2, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 35
    .line 36
    const-string/jumbo v0, "note_importance_"

    .line 37
    .line 38
    .line 39
    invoke-direct {p2, p1, v0}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 43
    .line 44
    new-instance p1, Lcom/android/server/notification/RateEstimator;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 50
    .line 51
    iput-wide v0, p1, Lcom/android/server/notification/RateEstimator;->mInterarrivalTime:D

    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->enqueueRate:Lcom/android/server/notification/RateEstimator;

    .line 54
    .line 55
    new-instance p1, Lcom/android/server/notification/AlertRateLimiter;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    const-wide/16 v0, 0x0

    .line 61
    .line 62
    iput-wide v0, p1, Lcom/android/server/notification/AlertRateLimiter;->mLastNotificationMillis:J

    .line 63
    .line 64
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->alertRate:Lcom/android/server/notification/AlertRateLimiter;

    .line 65
    .line 66
    return-void
.end method

.method public static maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0

    .line 1
    if-lez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method


# virtual methods
.method public final countApiUse(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    .line 16
    .line 17
    :cond_0
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 18
    .line 19
    and-int/lit8 v2, v1, 0x40

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    .line 28
    .line 29
    :cond_1
    const v2, 0x8000

    .line 30
    .line 31
    .line 32
    and-int/2addr v2, v1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUserInitiatedJob:I

    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUserInitiatedJob:I

    .line 40
    .line 41
    :cond_2
    and-int/lit8 v2, v1, 0x2

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    .line 50
    .line 51
    :cond_3
    and-int/lit8 v1, v1, 0x10

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    .line 60
    .line 61
    :cond_4
    iget v1, v0, Landroid/app/Notification;->defaults:I

    .line 62
    .line 63
    and-int/lit8 v2, v1, 0x1

    .line 64
    .line 65
    if-nez v2, :cond_5

    .line 66
    .line 67
    and-int/lit8 v1, v1, 0x2

    .line 68
    .line 69
    if-nez v1, :cond_5

    .line 70
    .line 71
    iget-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 72
    .line 73
    if-nez v1, :cond_5

    .line 74
    .line 75
    iget-object v1, v0, Landroid/app/Notification;->vibrate:[J

    .line 76
    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    :cond_5
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    .line 80
    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    .line 84
    .line 85
    :cond_6
    iget v1, v0, Landroid/app/Notification;->visibility:I

    .line 86
    .line 87
    const/4 v2, -0x1

    .line 88
    if-eq v1, v2, :cond_8

    .line 89
    .line 90
    if-eqz v1, :cond_7

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_7
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    .line 94
    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_8
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    .line 101
    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    .line 105
    .line 106
    :goto_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .line 107
    .line 108
    iget-boolean v2, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    .line 109
    .line 110
    if-eqz v2, :cond_9

    .line 111
    .line 112
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 113
    .line 114
    iget v1, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    .line 115
    .line 116
    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 121
    .line 122
    iget v1, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    .line 123
    .line 124
    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    .line 125
    .line 126
    .line 127
    :goto_1
    iget p1, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 128
    .line 129
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 130
    .line 131
    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    .line 132
    .line 133
    .line 134
    iget-object p1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const-string v1, "android.bigText"

    .line 141
    .line 142
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_a

    .line 147
    .line 148
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    .line 149
    .line 150
    add-int/lit8 v1, v1, 0x1

    .line 151
    .line 152
    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    .line 153
    .line 154
    :cond_a
    const-string v1, "android.picture"

    .line 155
    .line 156
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_b

    .line 161
    .line 162
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    .line 163
    .line 164
    add-int/lit8 v1, v1, 0x1

    .line 165
    .line 166
    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    .line 167
    .line 168
    :cond_b
    const-string v1, "android.largeIcon"

    .line 169
    .line 170
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_c

    .line 175
    .line 176
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    .line 177
    .line 178
    add-int/lit8 v1, v1, 0x1

    .line 179
    .line 180
    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    .line 181
    .line 182
    :cond_c
    const-string v1, "android.textLines"

    .line 183
    .line 184
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_d

    .line 189
    .line 190
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    .line 191
    .line 192
    add-int/lit8 v1, v1, 0x1

    .line 193
    .line 194
    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    .line 195
    .line 196
    :cond_d
    const-string v1, "android.mediaSession"

    .line 197
    .line 198
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_e

    .line 203
    .line 204
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    .line 205
    .line 206
    add-int/lit8 v1, v1, 0x1

    .line 207
    .line 208
    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    .line 209
    .line 210
    :cond_e
    const-string v1, "android.title"

    .line 211
    .line 212
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_f

    .line 217
    .line 218
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 219
    .line 220
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-nez v1, :cond_f

    .line 229
    .line 230
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    .line 231
    .line 232
    add-int/lit8 v1, v1, 0x1

    .line 233
    .line 234
    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    .line 235
    .line 236
    :cond_f
    const-string v1, "android.text"

    .line 237
    .line 238
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_10

    .line 243
    .line 244
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 245
    .line 246
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-nez v1, :cond_10

    .line 255
    .line 256
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    .line 257
    .line 258
    add-int/lit8 v1, v1, 0x1

    .line 259
    .line 260
    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    .line 261
    .line 262
    :cond_10
    const-string v1, "android.subText"

    .line 263
    .line 264
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_11

    .line 269
    .line 270
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 271
    .line 272
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-nez v1, :cond_11

    .line 281
    .line 282
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    .line 283
    .line 284
    add-int/lit8 v1, v1, 0x1

    .line 285
    .line 286
    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    .line 287
    .line 288
    :cond_11
    const-string v1, "android.infoText"

    .line 289
    .line 290
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-eqz p1, :cond_12

    .line 295
    .line 296
    iget-object p1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 297
    .line 298
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    if-nez p1, :cond_12

    .line 307
    .line 308
    iget p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    .line 309
    .line 310
    add-int/lit8 p1, p1, 0x1

    .line 311
    .line 312
    iput p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    .line 313
    .line 314
    :cond_12
    return-void
.end method

.method public final dumpJson()Lorg/json/JSONObject;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 17
    .line 18
    new-instance v2, Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "key"

    .line 24
    .line 25
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mCreated:J

    .line 33
    .line 34
    sub-long/2addr v3, v5

    .line 35
    const-string v1, "duration"

    .line 36
    .line 37
    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    const-string/jumbo v1, "numEnqueuedByApp"

    .line 41
    .line 42
    .line 43
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    .line 44
    .line 45
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v1, "numPostedByApp"

    .line 49
    .line 50
    .line 51
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    .line 52
    .line 53
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    const-string/jumbo v1, "numUpdatedByApp"

    .line 57
    .line 58
    .line 59
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    .line 60
    .line 61
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    const-string/jumbo v1, "numRemovedByApp"

    .line 65
    .line 66
    .line 67
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    .line 68
    .line 69
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    const-string/jumbo v1, "numPeopleCacheHit"

    .line 73
    .line 74
    .line 75
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    .line 76
    .line 77
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    const-string/jumbo v1, "numPeopleCacheMiss"

    .line 81
    .line 82
    .line 83
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    .line 84
    .line 85
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    const-string/jumbo v1, "numWithStaredPeople"

    .line 89
    .line 90
    .line 91
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    .line 92
    .line 93
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    const-string/jumbo v1, "numWithValidPeople"

    .line 97
    .line 98
    .line 99
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    .line 100
    .line 101
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    const-string/jumbo v1, "numBlocked"

    .line 105
    .line 106
    .line 107
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    .line 108
    .line 109
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    const-string/jumbo v1, "numSuspendedByAdmin"

    .line 113
    .line 114
    .line 115
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    .line 116
    .line 117
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    const-string/jumbo v1, "numWithActions"

    .line 121
    .line 122
    .line 123
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    .line 124
    .line 125
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    const-string/jumbo v1, "numPrivate"

    .line 129
    .line 130
    .line 131
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    .line 132
    .line 133
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    const-string/jumbo v1, "numSecret"

    .line 137
    .line 138
    .line 139
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    .line 140
    .line 141
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    const-string/jumbo v1, "numInterrupt"

    .line 145
    .line 146
    .line 147
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    .line 148
    .line 149
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    const-string/jumbo v1, "numWithBigText"

    .line 153
    .line 154
    .line 155
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    .line 156
    .line 157
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 158
    .line 159
    .line 160
    const-string/jumbo v1, "numWithBigPicture"

    .line 161
    .line 162
    .line 163
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    .line 164
    .line 165
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 166
    .line 167
    .line 168
    const-string/jumbo v1, "numForegroundService"

    .line 169
    .line 170
    .line 171
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    .line 172
    .line 173
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    const-string/jumbo v1, "numUserInitiatedJob"

    .line 177
    .line 178
    .line 179
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUserInitiatedJob:I

    .line 180
    .line 181
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    const-string/jumbo v1, "numOngoing"

    .line 185
    .line 186
    .line 187
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    .line 188
    .line 189
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 190
    .line 191
    .line 192
    const-string/jumbo v1, "numAutoCancel"

    .line 193
    .line 194
    .line 195
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    .line 196
    .line 197
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    const-string/jumbo v1, "numWithLargeIcon"

    .line 201
    .line 202
    .line 203
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    .line 204
    .line 205
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    const-string/jumbo v1, "numWithInbox"

    .line 209
    .line 210
    .line 211
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    .line 212
    .line 213
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    const-string/jumbo v1, "numWithMediaSession"

    .line 217
    .line 218
    .line 219
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    .line 220
    .line 221
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    const-string/jumbo v1, "numWithTitle"

    .line 225
    .line 226
    .line 227
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    .line 228
    .line 229
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 230
    .line 231
    .line 232
    const-string/jumbo v1, "numWithText"

    .line 233
    .line 234
    .line 235
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    .line 236
    .line 237
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 238
    .line 239
    .line 240
    const-string/jumbo v1, "numWithSubText"

    .line 241
    .line 242
    .line 243
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    .line 244
    .line 245
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 246
    .line 247
    .line 248
    const-string/jumbo v1, "numWithInfoText"

    .line 249
    .line 250
    .line 251
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    .line 252
    .line 253
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 254
    .line 255
    .line 256
    const-string/jumbo v1, "numRateViolations"

    .line 257
    .line 258
    .line 259
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    .line 260
    .line 261
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 262
    .line 263
    .line 264
    const-string/jumbo v1, "numQuotaLViolations"

    .line 265
    .line 266
    .line 267
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    .line 268
    .line 269
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 270
    .line 271
    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 273
    .line 274
    .line 275
    move-result-wide v3

    .line 276
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->enqueueRate:Lcom/android/server/notification/RateEstimator;

    .line 277
    .line 278
    iget-object v5, v1, Lcom/android/server/notification/RateEstimator;->mLastEventTime:Ljava/lang/Long;

    .line 279
    .line 280
    if-nez v5, :cond_1

    .line 281
    .line 282
    const/4 v1, 0x0

    .line 283
    goto :goto_0

    .line 284
    :cond_1
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 285
    .line 286
    invoke-virtual {v1, v3, v4}, Lcom/android/server/notification/RateEstimator;->getInterarrivalEstimate(J)D

    .line 287
    .line 288
    .line 289
    move-result-wide v3

    .line 290
    div-double/2addr v5, v3

    .line 291
    double-to-float v1, v5

    .line 292
    :goto_0
    float-to-double v3, v1

    .line 293
    const-wide/16 v5, 0x0

    .line 294
    .line 295
    cmpl-double v1, v3, v5

    .line 296
    .line 297
    if-lez v1, :cond_2

    .line 298
    .line 299
    const-string/jumbo v1, "notificationEnqueueRate"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 303
    .line 304
    .line 305
    :cond_2
    const-string/jumbo v1, "numAlertViolations"

    .line 306
    .line 307
    .line 308
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    .line 309
    .line 310
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 311
    .line 312
    .line 313
    const-string/jumbo v1, "numImagesRemoved"

    .line 314
    .line 315
    .line 316
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numImagesRemoved:I

    .line 317
    .line 318
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 319
    .line 320
    .line 321
    const-string/jumbo v1, "numTooOld"

    .line 322
    .line 323
    .line 324
    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numTooOld:I

    .line 325
    .line 326
    invoke-static {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 327
    .line 328
    .line 329
    iget-object v0, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 330
    .line 331
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    new-instance v1, Lorg/json/JSONArray;

    .line 337
    .line 338
    iget-object v3, v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    .line 339
    .line 340
    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    iget-object v0, v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    .line 347
    .line 348
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 351
    .line 352
    .line 353
    new-instance v1, Lorg/json/JSONArray;

    .line 354
    .line 355
    iget-object v3, v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    .line 356
    .line 357
    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    iget-object v0, v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    .line 364
    .line 365
    iget-object p0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 366
    .line 367
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    .line 369
    .line 370
    new-instance v0, Lorg/json/JSONArray;

    .line 371
    .line 372
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mCount:[I

    .line 373
    .line 374
    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    iget-object p0, p0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->mPrefix:Ljava/lang/String;

    .line 378
    .line 379
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    .line 381
    .line 382
    return-object v2
.end method

.method public final emit()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    .line 19
    .line 20
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    .line 21
    .line 22
    sub-int/2addr v1, v2

    .line 23
    const-string/jumbo v2, "note_enqueued"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    .line 30
    .line 31
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    .line 32
    .line 33
    sub-int/2addr v1, v2

    .line 34
    const-string/jumbo v2, "note_post"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    .line 41
    .line 42
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    .line 43
    .line 44
    sub-int/2addr v1, v2

    .line 45
    const-string/jumbo v2, "note_update"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    .line 52
    .line 53
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    .line 54
    .line 55
    sub-int/2addr v1, v2

    .line 56
    const-string/jumbo v2, "note_remove"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    .line 63
    .line 64
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    .line 65
    .line 66
    sub-int/2addr v1, v2

    .line 67
    const-string/jumbo v2, "note_with_people"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    .line 74
    .line 75
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    .line 76
    .line 77
    sub-int/2addr v1, v2

    .line 78
    const-string/jumbo v2, "note_with_stars"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    .line 85
    .line 86
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    .line 87
    .line 88
    sub-int/2addr v1, v2

    .line 89
    const-string/jumbo v2, "people_cache_hit"

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    .line 96
    .line 97
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    .line 98
    .line 99
    sub-int/2addr v1, v2

    .line 100
    const-string/jumbo v2, "people_cache_miss"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    .line 107
    .line 108
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    .line 109
    .line 110
    sub-int/2addr v1, v2

    .line 111
    const-string/jumbo v2, "note_blocked"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    .line 118
    .line 119
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    .line 120
    .line 121
    sub-int/2addr v1, v2

    .line 122
    const-string/jumbo v2, "note_suspended"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    .line 129
    .line 130
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    .line 131
    .line 132
    sub-int/2addr v1, v2

    .line 133
    const-string/jumbo v2, "note_with_actions"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    .line 140
    .line 141
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    .line 142
    .line 143
    sub-int/2addr v1, v2

    .line 144
    const-string/jumbo v2, "note_private"

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    .line 151
    .line 152
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    .line 153
    .line 154
    sub-int/2addr v1, v2

    .line 155
    const-string/jumbo v2, "note_secret"

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    .line 162
    .line 163
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    .line 164
    .line 165
    sub-int/2addr v1, v2

    .line 166
    const-string/jumbo v2, "note_interupt"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    .line 173
    .line 174
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    .line 175
    .line 176
    sub-int/2addr v1, v2

    .line 177
    const-string/jumbo v2, "note_big_text"

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    .line 184
    .line 185
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    .line 186
    .line 187
    sub-int/2addr v1, v2

    .line 188
    const-string/jumbo v2, "note_big_pic"

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    .line 195
    .line 196
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    .line 197
    .line 198
    sub-int/2addr v1, v2

    .line 199
    const-string/jumbo v2, "note_fg"

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUserInitiatedJob:I

    .line 206
    .line 207
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUserInitiatedJob:I

    .line 208
    .line 209
    sub-int/2addr v1, v2

    .line 210
    const-string/jumbo v2, "note_uij"

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    .line 217
    .line 218
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    .line 219
    .line 220
    sub-int/2addr v1, v2

    .line 221
    const-string/jumbo v2, "note_ongoing"

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    .line 228
    .line 229
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    .line 230
    .line 231
    sub-int/2addr v1, v2

    .line 232
    const-string/jumbo v2, "note_auto"

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    .line 239
    .line 240
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    .line 241
    .line 242
    sub-int/2addr v1, v2

    .line 243
    const-string/jumbo v2, "note_large_icon"

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    .line 250
    .line 251
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    .line 252
    .line 253
    sub-int/2addr v1, v2

    .line 254
    const-string/jumbo v2, "note_inbox"

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    .line 261
    .line 262
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    .line 263
    .line 264
    sub-int/2addr v1, v2

    .line 265
    const-string/jumbo v2, "note_media"

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    .line 272
    .line 273
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    .line 274
    .line 275
    sub-int/2addr v1, v2

    .line 276
    const-string/jumbo v2, "note_title"

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    .line 283
    .line 284
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    .line 285
    .line 286
    sub-int/2addr v1, v2

    .line 287
    const-string/jumbo v2, "note_text"

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    .line 294
    .line 295
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    .line 296
    .line 297
    sub-int/2addr v1, v2

    .line 298
    const-string/jumbo v2, "note_sub_text"

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    .line 305
    .line 306
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    .line 307
    .line 308
    sub-int/2addr v1, v2

    .line 309
    const-string/jumbo v2, "note_info_text"

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    .line 316
    .line 317
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    .line 318
    .line 319
    sub-int/2addr v1, v2

    .line 320
    const-string/jumbo v2, "note_over_rate"

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 324
    .line 325
    .line 326
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    .line 327
    .line 328
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    .line 329
    .line 330
    sub-int/2addr v1, v2

    .line 331
    const-string/jumbo v2, "note_over_alert_rate"

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    .line 338
    .line 339
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    .line 340
    .line 341
    sub-int/2addr v1, v2

    .line 342
    const-string/jumbo v2, "note_over_quota"

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numImagesRemoved:I

    .line 349
    .line 350
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numImagesRemoved:I

    .line 351
    .line 352
    sub-int/2addr v1, v2

    .line 353
    const-string/jumbo v2, "note_images_removed"

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 357
    .line 358
    .line 359
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numTooOld:I

    .line 360
    .line 361
    iget v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numTooOld:I

    .line 362
    .line 363
    sub-int/2addr v1, v2

    .line 364
    const-string/jumbo v2, "not_too_old"

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(ILjava/lang/String;)V

    .line 368
    .line 369
    .line 370
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 371
    .line 372
    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 373
    .line 374
    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 375
    .line 376
    .line 377
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 378
    .line 379
    iget-object v4, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 380
    .line 381
    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 382
    .line 383
    .line 384
    iget-object v5, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 385
    .line 386
    iget-object v6, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 387
    .line 388
    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 389
    .line 390
    .line 391
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    .line 392
    .line 393
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    .line 394
    .line 395
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    .line 396
    .line 397
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    .line 398
    .line 399
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    .line 400
    .line 401
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    .line 402
    .line 403
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    .line 404
    .line 405
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    .line 406
    .line 407
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    .line 408
    .line 409
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    .line 410
    .line 411
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    .line 412
    .line 413
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    .line 414
    .line 415
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    .line 416
    .line 417
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    .line 418
    .line 419
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    .line 420
    .line 421
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    .line 422
    .line 423
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    .line 424
    .line 425
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    .line 426
    .line 427
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    .line 428
    .line 429
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    .line 430
    .line 431
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    .line 432
    .line 433
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    .line 434
    .line 435
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    .line 436
    .line 437
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    .line 438
    .line 439
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    .line 440
    .line 441
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    .line 442
    .line 443
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    .line 444
    .line 445
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    .line 446
    .line 447
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    .line 448
    .line 449
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    .line 450
    .line 451
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    .line 452
    .line 453
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    .line 454
    .line 455
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    .line 456
    .line 457
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    .line 458
    .line 459
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUserInitiatedJob:I

    .line 460
    .line 461
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUserInitiatedJob:I

    .line 462
    .line 463
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    .line 464
    .line 465
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    .line 466
    .line 467
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    .line 468
    .line 469
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    .line 470
    .line 471
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    .line 472
    .line 473
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    .line 474
    .line 475
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    .line 476
    .line 477
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    .line 478
    .line 479
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    .line 480
    .line 481
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    .line 482
    .line 483
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    .line 484
    .line 485
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    .line 486
    .line 487
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    .line 488
    .line 489
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    .line 490
    .line 491
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    .line 492
    .line 493
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    .line 494
    .line 495
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    .line 496
    .line 497
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    .line 498
    .line 499
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    .line 500
    .line 501
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    .line 502
    .line 503
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    .line 504
    .line 505
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    .line 506
    .line 507
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    .line 508
    .line 509
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    .line 510
    .line 511
    iget v7, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numImagesRemoved:I

    .line 512
    .line 513
    iput v7, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numImagesRemoved:I

    .line 514
    .line 515
    iget p0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numTooOld:I

    .line 516
    .line 517
    iput p0, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numTooOld:I

    .line 518
    .line 519
    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 526
    .line 527
    .line 528
    return-void
.end method

.method public final maybeCount(ILjava/lang/String;)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p0, p2, p1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "AggregatedStats{\n"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "  "

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, "key=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    .line 22
    .line 23
    const-string v3, "\',\n"

    .line 24
    .line 25
    const-string/jumbo v4, "numEnqueuedByApp="

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    .line 32
    .line 33
    const-string v3, ",\n"

    .line 34
    .line 35
    const-string/jumbo v4, "numPostedByApp="

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 39
    .line 40
    .line 41
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    .line 42
    .line 43
    const-string/jumbo v4, "numUpdatedByApp="

    .line 44
    .line 45
    .line 46
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    .line 50
    .line 51
    const-string/jumbo v4, "numRemovedByApp="

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 55
    .line 56
    .line 57
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    .line 58
    .line 59
    const-string/jumbo v4, "numPeopleCacheHit="

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 63
    .line 64
    .line 65
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    .line 66
    .line 67
    const-string/jumbo v4, "numWithStaredPeople="

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 71
    .line 72
    .line 73
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    .line 74
    .line 75
    const-string/jumbo v4, "numWithValidPeople="

    .line 76
    .line 77
    .line 78
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 79
    .line 80
    .line 81
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    .line 82
    .line 83
    const-string/jumbo v4, "numPeopleCacheMiss="

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 87
    .line 88
    .line 89
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    .line 90
    .line 91
    const-string/jumbo v4, "numBlocked="

    .line 92
    .line 93
    .line 94
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 95
    .line 96
    .line 97
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    .line 98
    .line 99
    const-string/jumbo v4, "numSuspendedByAdmin="

    .line 100
    .line 101
    .line 102
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 103
    .line 104
    .line 105
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    .line 106
    .line 107
    const-string/jumbo v4, "numWithActions="

    .line 108
    .line 109
    .line 110
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 111
    .line 112
    .line 113
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    .line 114
    .line 115
    const-string/jumbo v4, "numPrivate="

    .line 116
    .line 117
    .line 118
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 119
    .line 120
    .line 121
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    .line 122
    .line 123
    const-string/jumbo v4, "numSecret="

    .line 124
    .line 125
    .line 126
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 127
    .line 128
    .line 129
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    .line 130
    .line 131
    const-string/jumbo v4, "numInterrupt="

    .line 132
    .line 133
    .line 134
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 135
    .line 136
    .line 137
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    .line 138
    .line 139
    const-string/jumbo v4, "numWithBigText="

    .line 140
    .line 141
    .line 142
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 143
    .line 144
    .line 145
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    .line 146
    .line 147
    const-string/jumbo v4, "numWithBigPicture="

    .line 148
    .line 149
    .line 150
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 151
    .line 152
    .line 153
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    .line 154
    .line 155
    const-string v3, "\n"

    .line 156
    .line 157
    const-string/jumbo v4, "numForegroundService="

    .line 158
    .line 159
    .line 160
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 161
    .line 162
    .line 163
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    .line 164
    .line 165
    const-string/jumbo v4, "numUserInitiatedJob="

    .line 166
    .line 167
    .line 168
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 169
    .line 170
    .line 171
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUserInitiatedJob:I

    .line 172
    .line 173
    const-string/jumbo v4, "numOngoing="

    .line 174
    .line 175
    .line 176
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 177
    .line 178
    .line 179
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    .line 180
    .line 181
    const-string/jumbo v4, "numAutoCancel="

    .line 182
    .line 183
    .line 184
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 185
    .line 186
    .line 187
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    .line 188
    .line 189
    const-string/jumbo v4, "numWithLargeIcon="

    .line 190
    .line 191
    .line 192
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 193
    .line 194
    .line 195
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    .line 196
    .line 197
    const-string/jumbo v4, "numWithInbox="

    .line 198
    .line 199
    .line 200
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 201
    .line 202
    .line 203
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    .line 204
    .line 205
    const-string/jumbo v4, "numWithMediaSession="

    .line 206
    .line 207
    .line 208
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 209
    .line 210
    .line 211
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    .line 212
    .line 213
    const-string/jumbo v4, "numWithTitle="

    .line 214
    .line 215
    .line 216
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 217
    .line 218
    .line 219
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    .line 220
    .line 221
    const-string/jumbo v4, "numWithText="

    .line 222
    .line 223
    .line 224
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 225
    .line 226
    .line 227
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    .line 228
    .line 229
    const-string/jumbo v4, "numWithSubText="

    .line 230
    .line 231
    .line 232
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 233
    .line 234
    .line 235
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    .line 236
    .line 237
    const-string/jumbo v4, "numWithInfoText="

    .line 238
    .line 239
    .line 240
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 241
    .line 242
    .line 243
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    .line 244
    .line 245
    const-string/jumbo v4, "numRateViolations="

    .line 246
    .line 247
    .line 248
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 249
    .line 250
    .line 251
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    .line 252
    .line 253
    const-string/jumbo v4, "numAlertViolations="

    .line 254
    .line 255
    .line 256
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 257
    .line 258
    .line 259
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    .line 260
    .line 261
    const-string/jumbo v4, "numQuotaViolations="

    .line 262
    .line 263
    .line 264
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 265
    .line 266
    .line 267
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    .line 268
    .line 269
    const-string/jumbo v4, "numImagesRemoved="

    .line 270
    .line 271
    .line 272
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 273
    .line 274
    .line 275
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numImagesRemoved:I

    .line 276
    .line 277
    const-string/jumbo v4, "numTooOld="

    .line 278
    .line 279
    .line 280
    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 281
    .line 282
    .line 283
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numTooOld:I

    .line 284
    .line 285
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 295
    .line 296
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 310
    .line 311
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 325
    .line 326
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string/jumbo v1, "numUndecorateRVs="

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    iget p0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUndecoratedRemoteViews:I

    .line 346
    .line 347
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string/jumbo p0, "}"

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    return-object p0
.end method
