.class public final Lcom/android/server/notification/NotificationRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public isCanceled:Z

.field public isUpdate:Z

.field public mAdjustmentIssuer:Ljava/lang/String;

.field public final mAdjustments:Ljava/util/List;

.field public mAllowBubble:Z

.field public mAppDemotedFromConvo:Z

.field public mAssistantImportance:I

.field public mAttributes:Landroid/media/AudioAttributes;

.field public mAuthoritativeRank:I

.field public mChannel:Landroid/app/NotificationChannel;

.field public mContactAffinity:F

.field public final mContext:Landroid/content/Context;

.field public mCreationTimeMs:J

.field public mCriticality:I

.field public mEditChoicesBeforeSending:Z

.field public mFlagBubbleRemoved:Z

.field public mGlobalSortKey:Ljava/lang/String;

.field public mGrantableUris:Landroid/util/ArraySet;

.field public mHasSeenSmartReplies:Z

.field public mHasSentValidMsg:Z

.field public mHidden:Z

.field public mImportance:I

.field public mImportanceExplanationCode:I

.field public mImportanceFixed:Z

.field public mInitialImportanceExplanationCode:I

.field public mIntercept:Z

.field public mInterceptSet:Z

.field public mInterruptionTimeMs:J

.field public mIsAlertLimited:Z

.field public mIsAppImportanceLocked:Z

.field public mIsInterruptive:Z

.field public mIsNotConversationOverride:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLastAudiblyAlertedMs:J

.field public mLastIntrusive:J

.field public final mLight:Lcom/android/server/notification/NotificationRecord$Light;

.field public mNumberOfSmartActionsAdded:I

.field public mNumberOfSmartRepliesAdded:I

.field public final mOriginalFlags:I

.field public mPackagePriority:I

.field public mPackageVisibility:I

.field public mPendingLogUpdate:Z

.field public mPeopleOverride:Ljava/util/ArrayList;

.field public mPhoneNumbers:Landroid/util/ArraySet;

.field public mPkgAllowedAsConvo:Z

.field public mPostSilently:Z

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPreChannelsNotification:Z

.field public mProposedImportance:I

.field public mRankingScore:F

.field public mRankingTimeMs:J

.field public mRecentlyIntrusive:Z

.field public mRecordedInterruption:Z

.field public mSensitiveContent:Z

.field public mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field public mShowBadge:Z

.field public mSmartReplies:Ljava/util/ArrayList;

.field public mSnoozeCriteria:Ljava/util/ArrayList;

.field public mSound:Landroid/net/Uri;

.field public final mStats:Landroid/service/notification/NotificationStats;

.field public mSuggestionsGeneratedByAssistant:Z

.field public mSuppressedVisualEffects:I

.field public mSystemGeneratedSmartActions:Ljava/util/ArrayList;

.field public mSystemImportance:I

.field public final mTargetSdkVersion:I

.field public mTextChanged:Z

.field public final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field final mUpdateTimeMs:J

.field public mUserSentiment:I

.field public mVibration:Landroid/os/VibrationEffect;

.field public mVisibleSinceMs:J

.field public permissionOwner:Landroid/os/IBinder;

.field public final sbn:Landroid/service/notification/StatusBarNotification;

.field public final stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "NotificationRecord"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, -0x3e8

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mSystemImportance:I

    .line 7
    .line 8
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    .line 9
    .line 10
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    iput v1, p0, Lcom/android/server/notification/NotificationRecord;->mCriticality:I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 20
    .line 21
    iput v1, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 22
    .line 23
    iput v1, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mIsAlertLimited:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mPendingLogUpdate:Z

    .line 31
    .line 32
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mProposedImportance:I

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mSensitiveContent:Z

    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 37
    .line 38
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 61
    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/16 v0, 0x2710

    .line 70
    .line 71
    :goto_0
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    .line 72
    .line 73
    const-class v3, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 74
    .line 75
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 80
    .line 81
    iput-object v3, p0, Lcom/android/server/notification/NotificationRecord;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iget v3, v3, Landroid/app/Notification;->flags:I

    .line 88
    .line 89
    iput v3, p0, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    .line 90
    .line 91
    const-wide/16 v3, 0x0

    .line 92
    .line 93
    invoke-virtual {p0, v3, v4}, Lcom/android/server/notification/NotificationRecord;->calculateRankingTimeMs(J)J

    .line 94
    .line 95
    .line 96
    move-result-wide v5

    .line 97
    iput-wide v5, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 100
    .line 101
    .line 102
    move-result-wide v5

    .line 103
    iput-wide v5, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    .line 104
    .line 105
    iput-wide v5, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    .line 106
    .line 107
    iput-wide v5, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    .line 108
    .line 109
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    .line 110
    .line 111
    const-class v5, Landroid/app/KeyguardManager;

    .line 112
    .line 113
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Landroid/app/KeyguardManager;

    .line 118
    .line 119
    iput-object v5, p0, Lcom/android/server/notification/NotificationRecord;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 120
    .line 121
    const-class v5, Landroid/os/PowerManager;

    .line 122
    .line 123
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    check-cast v5, Landroid/os/PowerManager;

    .line 128
    .line 129
    iput-object v5, p0, Lcom/android/server/notification/NotificationRecord;->mPowerManager:Landroid/os/PowerManager;

    .line 130
    .line 131
    new-instance v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .line 132
    .line 133
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-boolean v1, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    .line 137
    .line 138
    iput-boolean v1, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    .line 139
    .line 140
    const-wide/16 v6, -0x1

    .line 141
    .line 142
    iput-wide v6, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    .line 143
    .line 144
    iput-wide v6, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    .line 145
    .line 146
    iput-wide v6, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    .line 147
    .line 148
    iput-wide v3, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    .line 149
    .line 150
    iput-wide v6, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    .line 151
    .line 152
    iput-wide v6, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 153
    .line 154
    iput-wide v3, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    .line 155
    .line 156
    iput-wide v6, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    .line 157
    .line 158
    iput-wide v6, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 159
    .line 160
    iput-wide v3, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    .line 161
    .line 162
    iput-object v5, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .line 163
    .line 164
    iput-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 165
    .line 166
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    const-string/jumbo v3, "miscellaneous"

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p3

    .line 177
    if-eqz p3, :cond_1

    .line 178
    .line 179
    const/16 p3, 0x1a

    .line 180
    .line 181
    if-ge v0, p3, :cond_1

    .line 182
    .line 183
    move p3, v2

    .line 184
    goto :goto_1

    .line 185
    :cond_1
    move p3, v1

    .line 186
    :goto_1
    iput-boolean p3, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    .line 187
    .line 188
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    const-string v4, "android.software.leanback"

    .line 197
    .line 198
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    const/4 v4, 0x4

    .line 203
    const/4 v5, 0x0

    .line 204
    if-eqz v3, :cond_2

    .line 205
    .line 206
    :goto_2
    move-object v3, v5

    .line 207
    goto :goto_5

    .line 208
    :cond_2
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    if-nez v3, :cond_3

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    if-eqz v3, :cond_5

    .line 220
    .line 221
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    if-eqz v3, :cond_5

    .line 226
    .line 227
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 228
    .line 229
    .line 230
    move-result-wide v6

    .line 231
    :try_start_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 240
    .line 241
    .line 242
    move-result v9

    .line 243
    invoke-virtual {v3, v8, v9}, Lcom/samsung/android/knox/application/ApplicationPolicy;->isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z

    .line 244
    .line 245
    .line 246
    move-result v8

    .line 247
    if-nez v8, :cond_4

    .line 248
    .line 249
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    invoke-virtual {v3, v8}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getApplicationNotificationModeAsUser(I)I

    .line 258
    .line 259
    .line 260
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    if-ne v3, v4, :cond_4

    .line 262
    .line 263
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 264
    .line 265
    .line 266
    goto :goto_2

    .line 267
    :catchall_0
    move-exception p0

    .line 268
    goto :goto_3

    .line 269
    :cond_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    .line 271
    .line 272
    goto :goto_4

    .line 273
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    .line 275
    .line 276
    throw p0

    .line 277
    :cond_5
    :goto_4
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 278
    .line 279
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    if-eqz p3, :cond_7

    .line 284
    .line 285
    iget-object v6, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 286
    .line 287
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    and-int/lit8 v6, v6, 0x20

    .line 292
    .line 293
    if-nez v6, :cond_7

    .line 294
    .line 295
    iget v3, v0, Landroid/app/Notification;->defaults:I

    .line 296
    .line 297
    and-int/2addr v3, v2

    .line 298
    if-eqz v3, :cond_6

    .line 299
    .line 300
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 301
    .line 302
    goto :goto_5

    .line 303
    :cond_6
    iget-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 304
    .line 305
    :cond_7
    :goto_5
    iput-object v3, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    .line 306
    .line 307
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateVibration()Landroid/os/VibrationEffect;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    .line 312
    .line 313
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 318
    .line 319
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    if-nez v3, :cond_8

    .line 324
    .line 325
    sget-object v3, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 326
    .line 327
    :cond_8
    if-eqz p3, :cond_b

    .line 328
    .line 329
    iget-object v6, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 330
    .line 331
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 332
    .line 333
    .line 334
    move-result v6

    .line 335
    and-int/lit8 v6, v6, 0x20

    .line 336
    .line 337
    if-nez v6, :cond_b

    .line 338
    .line 339
    iget-object v6, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 340
    .line 341
    if-eqz v6, :cond_9

    .line 342
    .line 343
    move-object v3, v6

    .line 344
    goto :goto_6

    .line 345
    :cond_9
    iget v6, v0, Landroid/app/Notification;->audioStreamType:I

    .line 346
    .line 347
    if-ltz v6, :cond_a

    .line 348
    .line 349
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    .line 350
    .line 351
    .line 352
    move-result v7

    .line 353
    if-ge v6, v7, :cond_a

    .line 354
    .line 355
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    .line 356
    .line 357
    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 358
    .line 359
    .line 360
    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    .line 361
    .line 362
    invoke-virtual {v3, v0}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    goto :goto_6

    .line 371
    :cond_a
    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    .line 372
    .line 373
    const/4 v6, -0x1

    .line 374
    if-eq v0, v6, :cond_b

    .line 375
    .line 376
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    const-string v6, "Invalid stream type: %d"

    .line 385
    .line 386
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    const-string v6, "NotificationRecord"

    .line 391
    .line 392
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    :cond_b
    :goto_6
    iput-object v3, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 396
    .line 397
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateInitialImportance()I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 402
    .line 403
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    const v3, 0x106020c

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    const v6, 0x10e0078

    .line 419
    .line 420
    .line 421
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 422
    .line 423
    .line 424
    move-result v3

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    const v6, 0x10e0077

    .line 430
    .line 431
    .line 432
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 433
    .line 434
    .line 435
    move-result p1

    .line 436
    iget-object v6, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 437
    .line 438
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getLightColor()I

    .line 439
    .line 440
    .line 441
    move-result v6

    .line 442
    if-eqz v6, :cond_c

    .line 443
    .line 444
    iget-object v6, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 445
    .line 446
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getLightColor()I

    .line 447
    .line 448
    .line 449
    move-result v6

    .line 450
    goto :goto_7

    .line 451
    :cond_c
    move v6, v0

    .line 452
    :goto_7
    iget-object v7, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 453
    .line 454
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    .line 455
    .line 456
    .line 457
    move-result v7

    .line 458
    if-eqz v7, :cond_d

    .line 459
    .line 460
    new-instance v7, Lcom/android/server/notification/NotificationRecord$Light;

    .line 461
    .line 462
    invoke-direct {v7, v6, v3, p1}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    .line 463
    .line 464
    .line 465
    goto :goto_8

    .line 466
    :cond_d
    move-object v7, v5

    .line 467
    :goto_8
    if-eqz p3, :cond_e

    .line 468
    .line 469
    iget-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 470
    .line 471
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 472
    .line 473
    .line 474
    move-result p3

    .line 475
    and-int/lit8 p3, p3, 0x8

    .line 476
    .line 477
    if-nez p3, :cond_e

    .line 478
    .line 479
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 480
    .line 481
    .line 482
    move-result-object p3

    .line 483
    iget v6, p3, Landroid/app/Notification;->flags:I

    .line 484
    .line 485
    and-int/2addr v6, v2

    .line 486
    if-eqz v6, :cond_f

    .line 487
    .line 488
    new-instance v5, Lcom/android/server/notification/NotificationRecord$Light;

    .line 489
    .line 490
    iget v6, p3, Landroid/app/Notification;->ledARGB:I

    .line 491
    .line 492
    iget v7, p3, Landroid/app/Notification;->ledOnMS:I

    .line 493
    .line 494
    iget v8, p3, Landroid/app/Notification;->ledOffMS:I

    .line 495
    .line 496
    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    .line 497
    .line 498
    .line 499
    iget p3, p3, Landroid/app/Notification;->defaults:I

    .line 500
    .line 501
    and-int/2addr p3, v4

    .line 502
    if-eqz p3, :cond_f

    .line 503
    .line 504
    new-instance v5, Lcom/android/server/notification/NotificationRecord$Light;

    .line 505
    .line 506
    invoke-direct {v5, v0, v3, p1}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    .line 507
    .line 508
    .line 509
    goto :goto_9

    .line 510
    :cond_e
    move-object v5, v7

    .line 511
    :cond_f
    :goto_9
    iput-object v5, p0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    .line 512
    .line 513
    new-instance p1, Ljava/util/ArrayList;

    .line 514
    .line 515
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .line 517
    .line 518
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    .line 519
    .line 520
    new-instance p1, Landroid/service/notification/NotificationStats;

    .line 521
    .line 522
    invoke-direct {p1}, Landroid/service/notification/NotificationStats;-><init>()V

    .line 523
    .line 524
    .line 525
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 526
    .line 527
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateUserSentiment()V

    .line 528
    .line 529
    .line 530
    const-string p1, "NotificationRecord.calculateGrantableUris"

    .line 531
    .line 532
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    :try_start_1
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 536
    .line 537
    .line 538
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 539
    const/16 p3, 0x3e8

    .line 540
    .line 541
    if-ne p1, p3, :cond_11

    .line 542
    .line 543
    :cond_10
    :goto_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 544
    .line 545
    .line 546
    goto :goto_c

    .line 547
    :cond_11
    :try_start_2
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    new-instance p2, Lcom/android/server/notification/NotificationRecord$$ExternalSyntheticLambda0;

    .line 552
    .line 553
    invoke-direct {p2, p0}, Lcom/android/server/notification/NotificationRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationRecord;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {p1, p2}, Landroid/app/Notification;->visitUris(Ljava/util/function/Consumer;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {p1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object p1

    .line 563
    if-eqz p1, :cond_10

    .line 564
    .line 565
    iget-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 566
    .line 567
    if-eqz p1, :cond_10

    .line 568
    .line 569
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    .line 570
    .line 571
    .line 572
    move-result-object p2

    .line 573
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 574
    .line 575
    .line 576
    move-result p1

    .line 577
    and-int/lit8 p1, p1, 0x20

    .line 578
    .line 579
    if-eqz p1, :cond_12

    .line 580
    .line 581
    move p1, v2

    .line 582
    goto :goto_b

    .line 583
    :cond_12
    move p1, v1

    .line 584
    :goto_b
    invoke-virtual {p0, p2, p1, v2}, Lcom/android/server/notification/NotificationRecord;->visitGrantableUri(Landroid/net/Uri;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 585
    .line 586
    .line 587
    goto :goto_a

    .line 588
    :catchall_1
    move-exception p0

    .line 589
    goto :goto_d

    .line 590
    :goto_c
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mIsAlertLimited:Z

    .line 591
    .line 592
    return-void

    .line 593
    :goto_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 594
    .line 595
    .line 596
    throw p0
.end method

.method public static dumpNotification(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/Notification;Z)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const-string p2, "None"

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v2, "fullscreenIntent="

    .line 12
    .line 13
    invoke-static {p1, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, "contentIntent="

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v3, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, "deleteIntent="

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v3, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string/jumbo v3, "number="

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget v3, p2, Landroid/app/Notification;->number:I

    .line 94
    .line 95
    const-string v4, "groupAlertBehavior="

    .line 96
    .line 97
    invoke-static {v2, v3, p0, p1, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {p2}, Landroid/app/Notification;->getGroupAlertBehavior()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string/jumbo v3, "when="

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-wide v3, p2, Landroid/app/Notification;->when:J

    .line 130
    .line 131
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v3, "/"

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Landroid/app/Notification;->getWhen()J

    .line 140
    .line 141
    .line 142
    move-result-wide v3

    .line 143
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string/jumbo v3, "tickerText="

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v2, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 175
    .line 176
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    const-string/jumbo v3, "null"

    .line 181
    .line 182
    .line 183
    if-nez v2, :cond_3

    .line 184
    .line 185
    iget-object v2, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 186
    .line 187
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    if-eqz p3, :cond_2

    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    const/16 v5, 0x10

    .line 198
    .line 199
    if-le v4, v5, :cond_1

    .line 200
    .line 201
    const/16 v4, 0x8

    .line 202
    .line 203
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    goto :goto_0

    .line 208
    :cond_1
    const-string v2, ""

    .line 209
    .line 210
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    const-string v2, "..."

    .line 214
    .line 215
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_3
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :goto_1
    const-string/jumbo v2, "vis="

    .line 227
    .line 228
    .line 229
    invoke-static {p1, v2}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    iget v4, p2, Landroid/app/Notification;->visibility:I

    .line 234
    .line 235
    const-string v5, "contentView="

    .line 236
    .line 237
    invoke-static {v2, v4, p0, p1, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    iget-object v4, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 242
    .line 243
    invoke-static {v4}, Lcom/android/server/notification/NotificationRecord;->formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v4, "bigContentView="

    .line 266
    .line 267
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget-object v4, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 271
    .line 272
    invoke-static {v4}, Lcom/android/server/notification/NotificationRecord;->formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v4, "headsUpContentView="

    .line 295
    .line 296
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    iget-object v4, p2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 300
    .line 301
    invoke-static {v4}, Lcom/android/server/notification/NotificationRecord;->formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    iget v4, p2, Landroid/app/Notification;->color:I

    .line 324
    .line 325
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    const-string v5, "color=0x%08x"

    .line 334
    .line 335
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    const-string/jumbo v4, "timeout="

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {p2}, Landroid/app/Notification;->getTimeoutAfter()J

    .line 364
    .line 365
    .line 366
    move-result-wide v4

    .line 367
    invoke-static {v4, v5}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-virtual {p2, v2, v0}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 386
    .line 387
    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string/jumbo v4, "parcelDataSize="

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    iget v4, p2, Landroid/app/Notification;->parcelDataSize:I

    .line 403
    .line 404
    const-string v5, "mAllowSystemGeneratedContextualActions="

    .line 405
    .line 406
    invoke-static {v2, v4, p0, p1, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {p2}, Landroid/app/Notification;->getAllowSystemGeneratedContextualActions()Z

    .line 411
    .line 412
    .line 413
    move-result v4

    .line 414
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    iget-object v2, p2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 425
    .line 426
    if-eqz v2, :cond_7

    .line 427
    .line 428
    array-length v2, v2

    .line 429
    if-lez v2, :cond_7

    .line 430
    .line 431
    const-string v2, "actions={"

    .line 432
    .line 433
    invoke-static {p0, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    iget-object v2, p2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 437
    .line 438
    array-length v2, v2

    .line 439
    move v4, v0

    .line 440
    :goto_2
    if-ge v4, v2, :cond_6

    .line 441
    .line 442
    iget-object v5, p2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 443
    .line 444
    aget-object v5, v5, v4

    .line 445
    .line 446
    if-eqz v5, :cond_5

    .line 447
    .line 448
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    iget-object v7, v5, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 453
    .line 454
    iget-object v5, v5, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 455
    .line 456
    if-nez v5, :cond_4

    .line 457
    .line 458
    move-object v5, v3

    .line 459
    goto :goto_3

    .line 460
    :cond_4
    invoke-virtual {v5}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    :goto_3
    filled-new-array {p1, v6, v7, v5}, [Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    const-string v6, "%s    [%d] \"%s\" -> %s"

    .line 469
    .line 470
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    :cond_5
    add-int/2addr v4, v1

    .line 478
    goto :goto_2

    .line 479
    :cond_6
    const-string v2, "  }"

    .line 480
    .line 481
    invoke-static {p0, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    :cond_7
    iget-object v2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 485
    .line 486
    if-eqz v2, :cond_12

    .line 487
    .line 488
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    if-lez v2, :cond_12

    .line 493
    .line 494
    const-string v2, "extras={"

    .line 495
    .line 496
    invoke-static {p0, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    iget-object v2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 500
    .line 501
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 510
    .line 511
    .line 512
    move-result v4

    .line 513
    if-eqz v4, :cond_11

    .line 514
    .line 515
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    check-cast v4, Ljava/lang/String;

    .line 520
    .line 521
    new-instance v5, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    const-string v6, "    "

    .line 530
    .line 531
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    const-string v6, "="

    .line 538
    .line 539
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v5

    .line 546
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    iget-object v5, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 550
    .line 551
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    if-nez v5, :cond_8

    .line 556
    .line 557
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    goto :goto_4

    .line 561
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    move-result-object v6

    .line 565
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v6

    .line 569
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    if-eqz p3, :cond_d

    .line 573
    .line 574
    instance-of v6, v5, Ljava/lang/CharSequence;

    .line 575
    .line 576
    if-eqz v6, :cond_d

    .line 577
    .line 578
    if-nez v4, :cond_9

    .line 579
    .line 580
    goto :goto_6

    .line 581
    :cond_9
    const/4 v6, -0x1

    .line 582
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 583
    .line 584
    .line 585
    move-result v7

    .line 586
    sparse-switch v7, :sswitch_data_0

    .line 587
    .line 588
    .line 589
    goto :goto_5

    .line 590
    :sswitch_0
    const-string v7, "android.support.v4.app.extra.COMPAT_TEMPLATE"

    .line 591
    .line 592
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v4

    .line 596
    if-nez v4, :cond_a

    .line 597
    .line 598
    goto :goto_5

    .line 599
    :cond_a
    const/4 v6, 0x2

    .line 600
    goto :goto_5

    .line 601
    :sswitch_1
    const-string v7, "android.substName"

    .line 602
    .line 603
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v4

    .line 607
    if-nez v4, :cond_b

    .line 608
    .line 609
    goto :goto_5

    .line 610
    :cond_b
    move v6, v1

    .line 611
    goto :goto_5

    .line 612
    :sswitch_2
    const-string v7, "android.template"

    .line 613
    .line 614
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v4

    .line 618
    if-nez v4, :cond_c

    .line 619
    .line 620
    goto :goto_5

    .line 621
    :cond_c
    move v6, v0

    .line 622
    :goto_5
    packed-switch v6, :pswitch_data_0

    .line 623
    .line 624
    .line 625
    :goto_6
    check-cast v5, Ljava/lang/CharSequence;

    .line 626
    .line 627
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 628
    .line 629
    .line 630
    move-result v4

    .line 631
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 632
    .line 633
    .line 634
    move-result-object v4

    .line 635
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v4

    .line 639
    const-string v5, " [length=%d]"

    .line 640
    .line 641
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v4

    .line 645
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    goto/16 :goto_8

    .line 649
    .line 650
    :cond_d
    :pswitch_0
    instance-of v4, v5, Landroid/graphics/Bitmap;

    .line 651
    .line 652
    if-eqz v4, :cond_e

    .line 653
    .line 654
    check-cast v5, Landroid/graphics/Bitmap;

    .line 655
    .line 656
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 657
    .line 658
    .line 659
    move-result v4

    .line 660
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 661
    .line 662
    .line 663
    move-result-object v4

    .line 664
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 665
    .line 666
    .line 667
    move-result v5

    .line 668
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 669
    .line 670
    .line 671
    move-result-object v5

    .line 672
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v4

    .line 676
    const-string v5, " (%dx%d)"

    .line 677
    .line 678
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v4

    .line 682
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    goto :goto_8

    .line 686
    :cond_e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 687
    .line 688
    .line 689
    move-result-object v4

    .line 690
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    .line 691
    .line 692
    .line 693
    move-result v4

    .line 694
    const-string v6, ")"

    .line 695
    .line 696
    const-string v7, " ("

    .line 697
    .line 698
    if-eqz v4, :cond_f

    .line 699
    .line 700
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 701
    .line 702
    .line 703
    move-result v4

    .line 704
    new-instance v8, Ljava/lang/StringBuilder;

    .line 705
    .line 706
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v6

    .line 719
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    if-nez p3, :cond_10

    .line 723
    .line 724
    move v6, v0

    .line 725
    :goto_7
    if-ge v6, v4, :cond_10

    .line 726
    .line 727
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 728
    .line 729
    .line 730
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 731
    .line 732
    .line 733
    move-result-object v7

    .line 734
    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v8

    .line 738
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v8

    .line 742
    filled-new-array {p1, v7, v8}, [Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v7

    .line 746
    const-string v8, "%s      [%d] %s"

    .line 747
    .line 748
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v7

    .line 752
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    add-int/2addr v6, v1

    .line 756
    goto :goto_7

    .line 757
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 758
    .line 759
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v5

    .line 766
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    move-result-object v4

    .line 776
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    :cond_10
    :goto_8
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 780
    .line 781
    .line 782
    goto/16 :goto_4

    .line 783
    .line 784
    :cond_11
    const-string/jumbo p2, "}"

    .line 785
    .line 786
    .line 787
    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    :cond_12
    return-void

    .line 791
    :sswitch_data_0
    .sparse-switch
        -0x506caae7 -> :sswitch_2
        -0x13b881f3 -> :sswitch_1
        0x4b09951a -> :sswitch_0
    .end sparse-switch

    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string/jumbo p0, "null"

    .line 4
    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string v0, "%s/0x%08x (%d bytes): %s"

    .line 36
    .line 37
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method


# virtual methods
.method public final applyAdjustments()V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    .line 8
    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_c

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/service/notification/Adjustment;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "key_people"

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v5, "key_people"

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iput-object v4, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    .line 50
    .line 51
    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 52
    .line 53
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const-string v6, "key_people"

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v5, v6, v4}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_1
    :goto_1
    const-string v4, "key_snooze_criteria"

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const-string v5, "key_snooze_criteria"

    .line 83
    .line 84
    const-class v6, Landroid/service/notification/SnoozeCriterion;

    .line 85
    .line 86
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    iput-object v4, p0, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 91
    .line 92
    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 93
    .line 94
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    const-string v6, "key_snooze_criteria"

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-static {v5, v6, v4}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    const-string v4, "key_group_key"

    .line 108
    .line 109
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_3

    .line 114
    .line 115
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    const-string v5, "key_group_key"

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 126
    .line 127
    invoke-virtual {v5, v4}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 131
    .line 132
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    const-string v6, "key_group_key"

    .line 137
    .line 138
    invoke-static {v5, v6, v4}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    const-string v4, "key_user_sentiment"

    .line 142
    .line 143
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    const/4 v5, 0x4

    .line 148
    if-eqz v4, :cond_4

    .line 149
    .line 150
    iget-boolean v4, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    .line 151
    .line 152
    if-nez v4, :cond_4

    .line 153
    .line 154
    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 155
    .line 156
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    and-int/2addr v4, v5

    .line 161
    if-nez v4, :cond_4

    .line 162
    .line 163
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    const-string v6, "key_user_sentiment"

    .line 168
    .line 169
    const/4 v7, 0x0

    .line 170
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    iput v4, p0, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    .line 175
    .line 176
    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 177
    .line 178
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    const-string v6, "key_user_sentiment"

    .line 183
    .line 184
    iget v7, p0, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    .line 185
    .line 186
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-static {v4, v6, v7}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_4
    const-string v4, "key_contextual_actions"

    .line 194
    .line 195
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_5

    .line 200
    .line 201
    const-string v4, "key_contextual_actions"

    .line 202
    .line 203
    const-class v6, Landroid/app/Notification$Action;

    .line 204
    .line 205
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    iput-object v4, p0, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    .line 210
    .line 211
    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 212
    .line 213
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    const-string v6, "key_contextual_actions"

    .line 218
    .line 219
    iget-object v7, p0, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    invoke-static {v4, v6, v7}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_5
    const-string v4, "key_text_replies"

    .line 229
    .line 230
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-eqz v4, :cond_6

    .line 235
    .line 236
    const-string v4, "key_text_replies"

    .line 237
    .line 238
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    iput-object v4, p0, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    .line 243
    .line 244
    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 245
    .line 246
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    const-string v6, "key_text_replies"

    .line 251
    .line 252
    iget-object v7, p0, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    invoke-static {v4, v6, v7}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    :cond_6
    const-string v4, "key_importance"

    .line 262
    .line 263
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-eqz v4, :cond_7

    .line 268
    .line 269
    const-string v4, "key_importance"

    .line 270
    .line 271
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    const/16 v6, -0x3e8

    .line 276
    .line 277
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    iput v4, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    .line 286
    .line 287
    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 288
    .line 289
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    const-string v6, "key_importance"

    .line 294
    .line 295
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    invoke-static {v5, v6, v4}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_7
    const-string v4, "key_ranking_score"

    .line 303
    .line 304
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    if-eqz v4, :cond_8

    .line 309
    .line 310
    const-string v4, "key_ranking_score"

    .line 311
    .line 312
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    iput v4, p0, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    .line 317
    .line 318
    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 319
    .line 320
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    const-string v5, "key_ranking_score"

    .line 325
    .line 326
    iget v6, p0, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    .line 327
    .line 328
    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    invoke-static {v4, v5, v6}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    :cond_8
    const-string v4, "key_not_conversation"

    .line 336
    .line 337
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-eqz v4, :cond_9

    .line 342
    .line 343
    const-string v4, "key_not_conversation"

    .line 344
    .line 345
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationRecord;->mIsNotConversationOverride:Z

    .line 350
    .line 351
    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 352
    .line 353
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    const-string v5, "key_not_conversation"

    .line 358
    .line 359
    iget-boolean v6, p0, Lcom/android/server/notification/NotificationRecord;->mIsNotConversationOverride:Z

    .line 360
    .line 361
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    invoke-static {v4, v5, v6}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :cond_9
    const-string v4, "key_importance_proposal"

    .line 369
    .line 370
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    if-eqz v4, :cond_a

    .line 375
    .line 376
    const-string v4, "key_importance_proposal"

    .line 377
    .line 378
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    iput v4, p0, Lcom/android/server/notification/NotificationRecord;->mProposedImportance:I

    .line 383
    .line 384
    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 385
    .line 386
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    const-string v5, "key_importance_proposal"

    .line 391
    .line 392
    iget v6, p0, Lcom/android/server/notification/NotificationRecord;->mProposedImportance:I

    .line 393
    .line 394
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    invoke-static {v4, v5, v6}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    :cond_a
    const-string v4, "key_sensitive_content"

    .line 402
    .line 403
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    if-eqz v4, :cond_b

    .line 408
    .line 409
    const-string v4, "key_sensitive_content"

    .line 410
    .line 411
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 412
    .line 413
    .line 414
    move-result v4

    .line 415
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationRecord;->mSensitiveContent:Z

    .line 416
    .line 417
    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 418
    .line 419
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    const-string v5, "key_sensitive_content"

    .line 424
    .line 425
    iget-boolean v6, p0, Lcom/android/server/notification/NotificationRecord;->mSensitiveContent:Z

    .line 426
    .line 427
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v6

    .line 431
    invoke-static {v4, v5, v6}, Lcom/android/server/EventLogTags;->writeNotificationAdjusted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    :cond_b
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    if-nez v3, :cond_0

    .line 439
    .line 440
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getIssuer()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    if-eqz v3, :cond_0

    .line 445
    .line 446
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getIssuer()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    iput-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustmentIssuer:Ljava/lang/String;

    .line 451
    .line 452
    goto/16 :goto_0

    .line 453
    .line 454
    :cond_c
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    .line 455
    .line 456
    check-cast p0, Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 459
    .line 460
    .line 461
    monitor-exit v0

    .line 462
    return-void

    .line 463
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    throw p0
.end method

.method public final calculateImportance()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateInitialImportance()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, -0x3e8

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceFixed:Z

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 33
    .line 34
    :cond_0
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mSystemImportance:I

    .line 35
    .line 36
    if-eq v0, v1, :cond_1

    .line 37
    .line 38
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public final calculateInitialImportance()I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    move v2, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v3

    .line 26
    :goto_0
    iput v2, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 27
    .line 28
    iget v2, v0, Landroid/app/Notification;->flags:I

    .line 29
    .line 30
    and-int/lit16 v2, v2, 0x80

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iput v4, v0, Landroid/app/Notification;->priority:I

    .line 35
    .line 36
    :cond_1
    iget v2, v0, Landroid/app/Notification;->priority:I

    .line 37
    .line 38
    const/4 v5, -0x2

    .line 39
    if-ge v2, v5, :cond_2

    .line 40
    .line 41
    move v2, v5

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    if-le v2, v4, :cond_3

    .line 44
    .line 45
    move v2, v4

    .line 46
    :cond_3
    :goto_1
    iput v2, v0, Landroid/app/Notification;->priority:I

    .line 47
    .line 48
    const/4 v6, 0x4

    .line 49
    const/4 v7, 0x3

    .line 50
    if-eq v2, v5, :cond_7

    .line 51
    .line 52
    const/4 v5, -0x1

    .line 53
    if-eq v2, v5, :cond_6

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    if-eq v2, v3, :cond_5

    .line 58
    .line 59
    if-eq v2, v4, :cond_5

    .line 60
    .line 61
    :cond_4
    move v2, v7

    .line 62
    goto :goto_2

    .line 63
    :cond_5
    move v2, v6

    .line 64
    goto :goto_2

    .line 65
    :cond_6
    move v2, v4

    .line 66
    goto :goto_2

    .line 67
    :cond_7
    move v2, v3

    .line 68
    :goto_2
    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .line 69
    .line 70
    iput v2, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    .line 71
    .line 72
    iget-object v8, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    .line 73
    .line 74
    if-nez v8, :cond_9

    .line 75
    .line 76
    iget-object v8, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    .line 77
    .line 78
    if-eqz v8, :cond_8

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_8
    const/4 v3, 0x0

    .line 82
    :cond_9
    :goto_3
    iput-boolean v3, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    .line 83
    .line 84
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    .line 85
    .line 86
    if-eqz v3, :cond_e

    .line 87
    .line 88
    const/16 v3, -0x3e8

    .line 89
    .line 90
    if-eq v1, v3, :cond_a

    .line 91
    .line 92
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 93
    .line 94
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-nez v3, :cond_e

    .line 99
    .line 100
    :cond_a
    iget-boolean v1, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    .line 101
    .line 102
    if-nez v1, :cond_b

    .line 103
    .line 104
    if-le v2, v4, :cond_b

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_b
    move v4, v2

    .line 108
    :goto_4
    if-eqz v1, :cond_c

    .line 109
    .line 110
    if-ge v4, v7, :cond_c

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_c
    move v7, v4

    .line 114
    :goto_5
    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 115
    .line 116
    if-eqz v0, :cond_d

    .line 117
    .line 118
    move v1, v6

    .line 119
    goto :goto_6

    .line 120
    :cond_d
    move v1, v7

    .line 121
    :goto_6
    const/4 v0, 0x5

    .line 122
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 123
    .line 124
    :cond_e
    iput v1, v5, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    .line 125
    .line 126
    return v1
.end method

.method public final calculateRankingTimeMs(J)J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Notification;->hasAppProvidedWhen()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    cmp-long v1, v4, v6

    .line 32
    .line 33
    if-gtz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    .line 36
    .line 37
    .line 38
    move-result-wide p0

    .line 39
    return-wide p0

    .line 40
    :cond_0
    iget-wide v4, v0, Landroid/app/Notification;->when:J

    .line 41
    .line 42
    cmp-long v1, v4, v2

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    cmp-long v1, v4, v6

    .line 53
    .line 54
    if-gtz v1, :cond_1

    .line 55
    .line 56
    iget-wide p0, v0, Landroid/app/Notification;->when:J

    .line 57
    .line 58
    return-wide p0

    .line 59
    :cond_1
    cmp-long v0, p1, v2

    .line 60
    .line 61
    if-lez v0, :cond_2

    .line 62
    .line 63
    return-wide p1

    .line 64
    :cond_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 67
    .line 68
    .line 69
    move-result-wide p0

    .line 70
    return-wide p0
.end method

.method public final calculateUserSentiment()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    and-int/lit8 v0, v0, 0x4

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final calculateVibration()Landroid/os/VibrationEffect;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/os/Vibrator;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/os/Vibrator;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lcom/android/server/notification/VibratorHelper;->DEFAULT_VIBRATE_PATTERN:[J

    .line 16
    .line 17
    const v4, 0x10700c6

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v4, v3}, Lcom/android/server/notification/VibratorHelper;->getLongArray(Landroid/content/res/Resources;I[J)[J

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const v5, 0x107012e

    .line 29
    .line 30
    .line 31
    invoke-static {v4, v5, v3}, Lcom/android/server/notification/VibratorHelper;->getLongArray(Landroid/content/res/Resources;I[J)[J

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const v4, 0x10700c7

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v4}, Lcom/android/server/notification/VibratorHelper;->getFloatArray(Landroid/content/res/Resources;I)[F

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const v5, 0x107012f

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v5}, Lcom/android/server/notification/VibratorHelper;->getFloatArray(Landroid/content/res/Resources;I)[F

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const v4, 0x10e0082

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget v4, v0, Landroid/app/Notification;->flags:I

    .line 72
    .line 73
    and-int/lit8 v4, v4, 0x4

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    if-eqz v4, :cond_0

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    move v4, v5

    .line 81
    :goto_0
    iget-boolean v6, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    .line 82
    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    iget-object v6, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 86
    .line 87
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    and-int/lit8 v6, v6, 0x10

    .line 92
    .line 93
    if-nez v6, :cond_3

    .line 94
    .line 95
    iget p0, v0, Landroid/app/Notification;->defaults:I

    .line 96
    .line 97
    and-int/lit8 p0, p0, 0x2

    .line 98
    .line 99
    if-eqz p0, :cond_2

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasFrequencyControl()Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_1

    .line 106
    .line 107
    invoke-static {v3, v4}, Lcom/android/server/notification/VibratorHelper;->createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    if-eqz p0, :cond_1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    invoke-static {v2, v4}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    :goto_1
    return-object p0

    .line 119
    :cond_2
    iget-object p0, v0, Landroid/app/Notification;->vibrate:[J

    .line 120
    .line 121
    invoke-static {p0, v4}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :cond_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_4

    .line 133
    .line 134
    const/4 p0, 0x0

    .line 135
    goto :goto_2

    .line 136
    :cond_4
    invoke-static {}, Landroid/app/Flags;->notificationChannelVibrationEffectApi()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    invoke-virtual {v1, v0}, Landroid/os/Vibrator;->areVibrationFeaturesSupported(Landroid/os/VibrationEffect;)Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_5

    .line 153
    .line 154
    invoke-virtual {v0, v4, v5}, Landroid/os/VibrationEffect;->applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    goto :goto_2

    .line 159
    :cond_5
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    if-nez p0, :cond_7

    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasFrequencyControl()Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-eqz p0, :cond_6

    .line 170
    .line 171
    invoke-static {v3, v4}, Lcom/android/server/notification/VibratorHelper;->createPwleWaveformVibration([FZ)Landroid/os/VibrationEffect;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    if-eqz p0, :cond_6

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_6
    invoke-static {v2, v4}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    goto :goto_2

    .line 183
    :cond_7
    invoke-static {p0, v4}, Lcom/android/server/notification/VibratorHelper;->createWaveformVibration([JZ)Landroid/os/VibrationEffect;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    :goto_2
    return-object p0
.end method

.method public final copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 2
    .line 3
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    .line 8
    .line 9
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    .line 12
    .line 13
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 14
    .line 15
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 16
    .line 17
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 20
    .line 21
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 24
    .line 25
    iget-wide v0, p1, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->calculateRankingTimeMs(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    .line 32
    .line 33
    iget-wide v0, p1, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    .line 36
    .line 37
    iget-wide v0, p1, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    .line 38
    .line 39
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    .line 40
    .line 41
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void
.end method

.method public final dump(ILandroid/util/proto/ProtoOutputStream;)V
    .locals 6

    const-wide v0, 0x20b00000001L

    .line 1
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p2, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10e00000002L

    .line 4
    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5
    iget-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    const-wide v2, 0x10900000004L

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    const-wide v4, 0x10800000008L

    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8
    iget-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    const-wide v3, 0x10800000007L

    .line 9
    invoke-virtual {p2, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 10
    iget-object p1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 11
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->flags:I

    const-wide v2, 0x10500000003L

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 12
    iget-object p1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 13
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    const-wide v2, 0x10900000009L

    .line 14
    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 15
    iget p1, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    const-wide v2, 0x1110000000aL

    .line 16
    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 17
    iget-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide v2, 0x10900000005L

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    if-eqz p1, :cond_4

    const-wide v2, 0x10b00000006L

    .line 20
    invoke-virtual {p1, p2, v2, v3}, Landroid/media/AudioAttributes;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 22
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-wide v2, 0x1090000000bL

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 23
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 24
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object p0

    const-wide v2, 0x1090000000cL

    invoke-virtual {p2, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 8
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 27
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 30
    const-string/jumbo v1, "uid="

    .line 31
    invoke-static {p2, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 33
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 35
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "opPkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 38
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/app/Notification;->flags:I

    invoke-static {v2}, Landroid/app/Notification;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "originalFlags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    invoke-static {v2}, Landroid/app/Notification;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/app/Notification;->priority:I

    .line 43
    const-string v3, "key="

    .line 44
    invoke-static {v1, v2, p1, p2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 46
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "seen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v2}, Landroid/service/notification/NotificationStats;->hasSeen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "groupKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 50
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-static {v1, p2, p2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {p1, v1, v0, p3}, Lcom/android/server/notification/NotificationRecord;->dumpNotification(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/Notification;Z)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "publicNotification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-static {p1, v1, v2, p3}, Lcom/android/server/notification/NotificationRecord;->dumpNotification(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/Notification;Z)V

    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stats="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mContactAffinity="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mRecentlyIntrusive="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    .line 61
    const-string/jumbo v2, "mPackagePriority="

    .line 62
    invoke-static {p3, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 63
    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    .line 64
    const-string/jumbo v2, "mPackageVisibility="

    .line 65
    invoke-static {p3, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 66
    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 67
    const-string/jumbo v2, "mSystemImportance="

    .line 68
    invoke-static {p3, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 69
    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mSystemImportance:I

    .line 70
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 71
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAsstImportance="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    .line 73
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 74
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mImportance="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 76
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 77
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mImportanceExplanation="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mProposedImportance="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mProposedImportance:I

    .line 80
    invoke-static {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 81
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsAppImportanceLocked="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    .line 83
    const-string/jumbo v2, "mSensitiveContent="

    .line 84
    invoke-static {p3, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 85
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mSensitiveContent:Z

    .line 86
    const-string v2, "mIntercept="

    .line 87
    invoke-static {p3, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 88
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 89
    const-string v2, "mHidden=="

    .line 90
    invoke-static {p3, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 91
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 92
    const-string v2, "mGlobalSortKey="

    .line 93
    invoke-static {p3, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 94
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\' \'HH:mm:ss.SSSZ"

    invoke-direct {p3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v1, "mRankingTimeMs="

    .line 97
    invoke-static {p2, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    iget-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mCreationTimeMs="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mVisibleSinceMs="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mUpdateTimeMs="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mInterruptionTimeMs="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mSuppressedVisualEffects= "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 104
    invoke-static {p3, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 105
    iget-boolean p3, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz p3, :cond_0

    .line 106
    const-string p3, "defaults="

    .line 107
    invoke-static {p2, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 108
    iget v1, v0, Landroid/app/Notification;->defaults:I

    invoke-static {v1}, Landroid/app/Notification;->defaultsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "n.sound="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "n.audioStreamType="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 111
    const-string/jumbo v2, "n.audioAttributes="

    .line 112
    invoke-static {p3, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 113
    iget-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v0, Landroid/app/Notification;->ledOnMS:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->ledOffMS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 116
    const-string v2, "  led=0x%08x onMs=%d offMs=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "vibrate="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/app/Notification;->vibrate:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    :cond_0
    const-string/jumbo p3, "mSound= "

    .line 119
    invoke-static {p2, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 120
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mVibration= "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAttributes= "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLight= "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mShowBadge="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    .line 125
    const-string v2, "mColorized="

    .line 126
    invoke-static {p3, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 127
    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAllowBubble="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 129
    const-string v2, "isBubble="

    .line 130
    invoke-static {p3, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 131
    invoke-virtual {v0}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsInterruptive="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    .line 133
    const-string v2, "effectiveNotificationChannel="

    .line 134
    invoke-static {p3, v1, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 135
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 136
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    iget-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    .line 138
    const-string v1, ","

    if-eqz p3, :cond_1

    .line 139
    const-string/jumbo p3, "overridePeople= "

    .line 140
    invoke-static {p2, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 141
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    .line 142
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    :cond_1
    iget-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    if-eqz p3, :cond_2

    .line 144
    const-string/jumbo p3, "snoozeCriteria="

    .line 145
    invoke-static {p2, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 146
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 147
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    :cond_2
    const-string p3, "mAdjustments="

    .line 149
    invoke-static {p2, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 150
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "shortcut="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " found valid? "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 152
    :goto_0
    const-string/jumbo v2, "mUserVisOverride="

    .line 153
    invoke-static {p3, v0, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 154
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 155
    const-string/jumbo v2, "mSuggestionsGeneratedByAssistant="

    .line 156
    invoke-static {p3, v0, p1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 157
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mSuggestionsGeneratedByAssistant:Z

    .line 158
    invoke-static {p3, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 159
    iget-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    goto :goto_1

    :cond_4
    move p3, v1

    :goto_1
    if-eqz p3, :cond_7

    .line 160
    const-string/jumbo v0, "mSystemGeneratedSmartActions="

    .line 161
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_2
    if-ge v0, p3, :cond_7

    .line 162
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Action;

    .line 163
    invoke-virtual {v2}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 164
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 166
    const-string/jumbo v7, "null"

    if-nez v3, :cond_5

    move-object v4, v7

    .line 167
    :cond_5
    iget-object v2, v2, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    filled-new-array {p2, v5, v6, v4, v7}, [Ljava/lang/Object;

    move-result-object v2

    .line 168
    const-string v3, "%s    [%d] \"%s\" \"%s\"-> %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 169
    :cond_7
    iget-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    goto :goto_4

    :cond_8
    move p3, v1

    :goto_4
    if-eqz p3, :cond_9

    .line 170
    const-string/jumbo v0, "mSmartReplies="

    .line 171
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-ge v1, p3, :cond_9

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p2, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 173
    const-string v2, "%s      [%d] %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    return-void
.end method

.method public final getExposureMs(J)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sub-long/2addr p1, v0

    .line 12
    long-to-int p0, p1

    .line 13
    :goto_0
    return p0
.end method

.method public final getFlags()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget p0, p0, Landroid/app/Notification;->flags:I

    .line 8
    .line 9
    return p0
.end method

.method public final getImportanceExplanation()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p0, v0, :cond_3

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string/jumbo p0, "system"

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    const-string p0, "asst"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    const-string/jumbo p0, "user"

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_3
    const-string p0, "app"

    .line 32
    .line 33
    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getLogMaker()Landroid/metrics/LogMaker;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public final getLogMaker(J)Landroid/metrics/LogMaker;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 5
    iget-wide v1, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    sub-long v1, p1, v1

    long-to-int v1, v1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x319

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    sub-long v1, p1, v1

    long-to-int v1, v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31b

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 10
    iget-wide v1, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    sub-long/2addr p1, v1

    long-to-int p1, p1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x5dc

    .line 12
    invoke-virtual {v0, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 13
    iget p2, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    const/16 v0, -0x3e8

    if-eqz p2, :cond_1

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v1, 0x698

    .line 15
    invoke-virtual {p1, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 16
    iget p2, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanationCode:I

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v1, p2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    if-eq v1, v0, :cond_1

    .line 17
    iget v1, p0, Lcom/android/server/notification/NotificationRecord;->mInitialImportanceExplanationCode:I

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x69a

    .line 19
    invoke-virtual {p1, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 20
    iget p2, p2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v1, 0x699

    .line 22
    invoke-virtual {p1, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 23
    :cond_1
    iget p2, p0, Lcom/android/server/notification/NotificationRecord;->mAssistantImportance:I

    if-eq p2, v0, :cond_2

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0x69b

    .line 25
    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 26
    :cond_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustmentIssuer:Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 p2, 0x6ce

    .line 28
    invoke-virtual {p1, p2, p0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_3
    return-object p1
.end method

.method public final getNotificationType()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-lt p0, v0, :cond_1

    .line 13
    .line 14
    const/4 p0, 0x2

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x4

    .line 17
    return p0
.end method

.method public final getSbn()Landroid/service/notification/StatusBarNotification;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isCategory(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final isConversation()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isDemoted()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_9

    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mAppDemotedFromConvo:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationRecord;->mIsNotConversationOverride:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    const-class v1, Landroid/app/Notification$MessagingStyle;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/16 v3, 0x1e

    .line 33
    .line 34
    iget v4, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mPkgAllowedAsConvo:Z

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    if-ge v4, v3, :cond_2

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    iget-object p0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 52
    .line 53
    const-string/jumbo v0, "msg"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    return v5

    .line 63
    :cond_2
    return v2

    .line 64
    :cond_3
    if-lt v4, v3, :cond_7

    .line 65
    .line 66
    const-class v1, Landroid/app/Notification$MessagingStyle;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_7

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    array-length v1, v0

    .line 85
    if-nez v1, :cond_4

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    array-length v1, v0

    .line 89
    move v3, v2

    .line 90
    :goto_0
    if-ge v3, v1, :cond_6

    .line 91
    .line 92
    aget-object v4, v0, v3

    .line 93
    .line 94
    invoke-virtual {v4}, Landroid/app/Person;->isBot()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-nez v4, :cond_5

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    return v2

    .line 105
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mHasSentValidMsg:Z

    .line 106
    .line 107
    if-eqz v0, :cond_8

    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 110
    .line 111
    if-nez p0, :cond_8

    .line 112
    .line 113
    return v2

    .line 114
    :cond_8
    return v5

    .line 115
    :cond_9
    :goto_2
    return v2
.end method

.method public final resetRankingTime()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->calculateRankingTimeMs(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final setInterruptive(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    move-wide v2, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    .line 12
    .line 13
    :goto_0
    iput-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/16 v2, 0x5dd

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {p1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    .line 33
    .line 34
    sub-long v2, v0, v2

    .line 35
    .line 36
    long-to-int v2, v2

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/16 v3, 0x5dc

    .line 42
    .line 43
    invoke-virtual {p1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    iget-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mInterruptionTimeMs:J

    .line 53
    .line 54
    sub-long/2addr v0, v2

    .line 55
    long-to-int p0, v0

    .line 56
    const-string/jumbo v0, "note_interruptive"

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0, p0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public final setVisibility(ZIILcom/android/server/notification/NotificationRecordLogger;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    move-wide v2, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    .line 10
    .line 11
    :goto_0
    iput-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onVisibilityChanged(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/16 v3, 0x80

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    move v4, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v4, 0x2

    .line 34
    :goto_1
    invoke-virtual {v2, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/16 v5, 0x31e

    .line 43
    .line 44
    invoke-virtual {v2, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    const/16 v4, 0x573

    .line 53
    .line 54
    invoke-virtual {v2, v4, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-static {p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 59
    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iget-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 64
    .line 65
    invoke-virtual {p3}, Landroid/service/notification/NotificationStats;->setSeen()V

    .line 66
    .line 67
    .line 68
    iget-boolean p3, p0, Lcom/android/server/notification/NotificationRecord;->mTextChanged:Z

    .line 69
    .line 70
    if-eqz p3, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 73
    .line 74
    .line 75
    :cond_2
    iget-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    iget-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    .line 78
    .line 79
    sub-long v2, v0, v2

    .line 80
    .line 81
    long-to-int v2, v2

    .line 82
    const-string/jumbo v3, "note_freshness"

    .line 83
    .line 84
    .line 85
    invoke-static {p3, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    :cond_3
    iget-object p3, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 89
    .line 90
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iget-wide v3, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    .line 95
    .line 96
    sub-long v3, v0, v3

    .line 97
    .line 98
    long-to-int p3, v3

    .line 99
    iget-wide v3, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    .line 100
    .line 101
    sub-long/2addr v0, v3

    .line 102
    long-to-int v0, v0

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    const/4 p3, 0x0

    .line 116
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    const/16 p3, 0x6b8b

    .line 129
    .line 130
    invoke-static {p3, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 131
    .line 132
    .line 133
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    if-eqz p1, :cond_4

    .line 137
    .line 138
    sget-object p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    sget-object p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 142
    .line 143
    :goto_2
    check-cast p4, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    .line 144
    .line 145
    invoke-virtual {p4, p1, p0}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string v0, "NotificationRecord(0x%08x: pkg=%s user=%s id=%d tag=%s importance=%d key=%s: %s)"

    .line 60
    .line 61
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public final updateNotificationChannel(Landroid/app/NotificationChannel;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateUserSentiment()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateVibration()Landroid/os/VibrationEffect;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:Landroid/os/VibrationEffect;

    .line 16
    .line 17
    invoke-static {}, Landroid/app/Flags;->restrictAudioAttributesCall()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-static {}, Landroid/app/Flags;->restrictAudioAttributesAlarm()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-static {}, Landroid/app/Flags;->restrictAudioAttributesMedia()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object p1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method

.method public final visitGrantableUri(Landroid/net/Uri;ZZ)V
    .locals 11

    .line 1
    const-string v0, "Ignoring "

    .line 2
    .line 3
    const-string v1, "Replacing "

    .line 4
    .line 5
    if-eqz p1, :cond_6

    .line 6
    .line 7
    const-string v2, "content"

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 39
    .line 40
    .line 41
    move-result-wide v9

    .line 42
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 43
    .line 44
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-static {p1, v4}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    check-cast v3, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v7, 0x1

    .line 60
    move v4, v2

    .line 61
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    .line 65
    .line 66
    if-nez v3, :cond_2

    .line 67
    .line 68
    new-instance v3, Landroid/util/ArraySet;

    .line 69
    .line 70
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v3, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_3

    .line 78
    :catch_0
    move-exception v3

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    .line 81
    .line 82
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    goto :goto_4

    .line 89
    :goto_2
    if-nez p2, :cond_3

    .line 90
    .line 91
    const-string p2, ": "

    .line 92
    .line 93
    const-string v4, " from "

    .line 94
    .line 95
    const-string v5, "NotificationRecord"

    .line 96
    .line 97
    if-eqz p3, :cond_4

    .line 98
    .line 99
    :try_start_1
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 100
    .line 101
    iput-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    .line 102
    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    .line 136
    .line 137
    const/16 p3, 0x1c

    .line 138
    .line 139
    if-ge p0, p3, :cond_5

    .line 140
    .line 141
    new-instance p0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_5
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :goto_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :cond_6
    :goto_4
    return-void
.end method
