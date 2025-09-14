.class public final Lcom/android/server/people/prediction/ShareTargetPredictor;
.super Lcom/android/server/people/prediction/AppTargetPredictor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mChooserActivity:Ljava/lang/String;

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public final mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ShareTargetPredictor"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;Lcom/android/server/people/data/DataManager;ILandroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/people/prediction/AppTargetPredictor;-><init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/SessionInfo$$ExternalSyntheticLambda0;Lcom/android/server/people/data/DataManager;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const-string p3, "intent_filter"

    .line 9
    .line 10
    const-class v0, Landroid/content/IntentFilter;

    .line 11
    .line 12
    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroid/content/IntentFilter;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 19
    .line 20
    const-string/jumbo p2, "systemui"

    .line 21
    .line 22
    .line 23
    const-string p3, "dark_launch_remote_prediction_service_enabled"

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p2, p3, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    const/4 p3, 0x0

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/app/prediction/AppPredictionContext;->getExtras()Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const-string/jumbo v1, "remote_app_predictor"

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p5, p2, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-class p4, Landroid/app/prediction/AppPredictionManager;

    .line 53
    .line 54
    invoke-virtual {p2, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Landroid/app/prediction/AppPredictionManager;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iput-object p3, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 68
    .line 69
    :goto_0
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const p2, 0x10402f5

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-nez p1, :cond_1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    :goto_1
    iput-object p3, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mChooserActivity:Ljava/lang/String;

    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public final predictTargets()V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ShareTargetPredictor"

    .line 6
    .line 7
    const-string/jumbo v1, "predictTargets"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object p0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mUpdatePredictionsMethod:Ljava/util/function/Consumer;

    .line 22
    .line 23
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mDataManager:Lcom/android/server/people/data/DataManager;

    .line 35
    .line 36
    iget-object v3, v2, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 37
    .line 38
    iget-object v4, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget v5, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallingUserId:I

    .line 45
    .line 46
    invoke-virtual {v3, v4, v1, v5}, Landroid/content/pm/ShortcutServiceInternal;->getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/4 v4, 0x0

    .line 59
    const/4 v5, 0x0

    .line 60
    if-eqz v3, :cond_9

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    new-instance v7, Landroid/app/prediction/AppTarget$Builder;

    .line 73
    .line 74
    new-instance v8, Landroid/app/prediction/AppTargetId;

    .line 75
    .line 76
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    invoke-direct {v8, v9}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v7, v8, v6}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Landroid/content/pm/ShortcutInfo;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v7, v3}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getRank()I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    invoke-virtual {v3, v7}, Landroid/app/prediction/AppTarget$Builder;->setRank(I)Landroid/app/prediction/AppTarget$Builder;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    invoke-virtual {v2, v8, v7}, Lcom/android/server/people/data/DataManager;->getPackage(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    if-eqz v7, :cond_7

    .line 123
    .line 124
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    iget-object v8, v7, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 129
    .line 130
    invoke-virtual {v8, v6}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    if-eqz v9, :cond_8

    .line 135
    .line 136
    new-instance v4, Lcom/android/server/people/data/AggregateEventHistoryImpl;

    .line 137
    .line 138
    invoke-direct {v4}, Lcom/android/server/people/data/AggregateEventHistoryImpl;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8, v6}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    if-nez v8, :cond_2

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    iget-object v10, v7, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 149
    .line 150
    invoke-virtual {v10, v5, v6}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    if-eqz v5, :cond_3

    .line 155
    .line 156
    iget-object v6, v4, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    .line 157
    .line 158
    check-cast v6, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    :cond_3
    iget-object v5, v8, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 164
    .line 165
    if-eqz v5, :cond_4

    .line 166
    .line 167
    invoke-virtual {v5}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    const/4 v6, 0x1

    .line 172
    invoke-virtual {v10, v6, v5}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    if-eqz v5, :cond_4

    .line 177
    .line 178
    iget-object v6, v4, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    .line 179
    .line 180
    check-cast v6, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    :cond_4
    iget-object v5, v8, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 186
    .line 187
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-eqz v6, :cond_5

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_5
    iget-object v6, v7, Lcom/android/server/people/data/PackageData;->mIsDefaultDialerPredicate:Ljava/util/function/Predicate;

    .line 195
    .line 196
    iget-object v8, v7, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 197
    .line 198
    invoke-interface {v6, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    if-eqz v6, :cond_6

    .line 203
    .line 204
    const/4 v6, 0x2

    .line 205
    invoke-virtual {v10, v6, v5}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    if-eqz v6, :cond_6

    .line 210
    .line 211
    iget-object v11, v4, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    .line 212
    .line 213
    check-cast v11, Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    :cond_6
    iget-object v6, v7, Lcom/android/server/people/data/PackageData;->mIsDefaultSmsAppPredicate:Ljava/util/function/Predicate;

    .line 219
    .line 220
    invoke-interface {v6, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-eqz v6, :cond_8

    .line 225
    .line 226
    const/4 v6, 0x3

    .line 227
    invoke-virtual {v10, v6, v5}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    if-eqz v5, :cond_8

    .line 232
    .line 233
    iget-object v6, v4, Lcom/android/server/people/data/AggregateEventHistoryImpl;->mEventHistoryList:Ljava/util/List;

    .line 234
    .line 235
    check-cast v6, Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    goto :goto_1

    .line 241
    :cond_7
    move-object v9, v4

    .line 242
    :cond_8
    :goto_1
    new-instance v5, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 243
    .line 244
    invoke-direct {v5, v3, v4, v9}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;-><init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_9
    iget-object v1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 253
    .line 254
    if-eqz v1, :cond_a

    .line 255
    .line 256
    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    invoke-static {v4}, Lcom/android/server/people/data/DataManager;->mimeTypeToShareEventType(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 268
    .line 269
    .line 270
    move-result-wide v2

    .line 271
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/people/prediction/SharesheetModelScorer;->computeScore(Ljava/util/List;IJ)V

    .line 272
    .line 273
    .line 274
    new-instance v1, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda0;

    .line 275
    .line 276
    const/4 v2, 0x0

    .line 277
    invoke-direct {v1, v2}, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda0;-><init>(I)V

    .line 278
    .line 279
    .line 280
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    new-instance v2, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda0;

    .line 289
    .line 290
    const/4 v3, 0x1

    .line 291
    invoke-direct {v2, v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda0;-><init>(I)V

    .line 292
    .line 293
    .line 294
    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 299
    .line 300
    .line 301
    new-instance v1, Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .line 305
    .line 306
    :goto_2
    iget-object v2, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    .line 307
    .line 308
    invoke-virtual {v2}, Landroid/app/prediction/AppPredictionContext;->getPredictedTargetCount()I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-ge v5, v2, :cond_b

    .line 321
    .line 322
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    check-cast v2, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 327
    .line 328
    invoke-virtual {v2}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    add-int/lit8 v5, v5, 0x1

    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_b
    iget-object p0, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mUpdatePredictionsMethod:Ljava/util/function/Consumer;

    .line 339
    .line 340
    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    return-void
.end method

.method public final reportAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ShareTargetPredictor"

    .line 6
    .line 7
    const-string/jumbo v1, "reportAppTargetEvent"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 14
    .line 15
    if-eqz v0, :cond_7

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/people/prediction/AppTargetPredictor;->mDataManager:Lcom/android/server/people/data/DataManager;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getTarget()Landroid/app/prediction/AppTarget;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_7

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getAction()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eq v3, v4, :cond_1

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_1
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v1, v3}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget-object v5, v3, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 57
    .line 58
    new-instance v6, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    invoke-direct {v6, v3, v4}, Lcom/android/server/people/data/UserData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/UserData;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lcom/android/server/people/data/PackageData;

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/android/server/people/data/DataManager;->mimeTypeToShareEventType(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const-string v5, "direct_share"

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent;->getLaunchLocation()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_6

    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    if-nez v5, :cond_3

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    const-string v6, "chooser_target"

    .line 106
    .line 107
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-eqz v6, :cond_4

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    iget-object v6, v3, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 115
    .line 116
    invoke-virtual {v6, v5}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    if-nez v6, :cond_5

    .line 121
    .line 122
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v1, v2}, Lcom/android/server/people/data/DataManager;->addOrUpdateConversationInfo(Landroid/content/pm/ShortcutInfo;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    iget-object v1, v3, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 130
    .line 131
    invoke-virtual {v1, v4, v5}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    goto :goto_0

    .line 136
    :cond_6
    iget-object v1, v3, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 137
    .line 138
    const/4 v3, 0x4

    .line 139
    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v3, v2}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    :goto_0
    new-instance v2, Lcom/android/server/people/data/Event;

    .line 148
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 150
    .line 151
    .line 152
    move-result-wide v3

    .line 153
    invoke-direct {v2, v3, v4, v0}, Lcom/android/server/people/data/Event;-><init>(JI)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mRemoteAppPredictor:Landroid/app/prediction/AppPredictor;

    .line 160
    .line 161
    if-eqz p0, :cond_8

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    .line 164
    .line 165
    .line 166
    :cond_8
    return-void
.end method

.method public final sortTargets(Ljava/util/List;Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/people/prediction/ShareTargetPredictor;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const-string v2, "ShareTargetPredictor"

    .line 10
    .line 11
    const-string/jumbo v3, "sortTargets"

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v2, v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    move-object/from16 v2, p1

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    move-object/from16 v2, p1

    .line 28
    .line 29
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    move-result v4

    .line 42
    iget-object v5, v0, Lcom/android/server/people/prediction/AppTargetPredictor;->mDataManager:Lcom/android/server/people/data/DataManager;

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    if-eqz v4, :cond_4

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Landroid/app/prediction/AppTarget;

    .line 52
    .line 53
    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    invoke-virtual {v5, v8, v7}, Lcom/android/server/people/data/DataManager;->getPackage(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    new-instance v7, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 70
    .line 71
    if-nez v5, :cond_2

    .line 72
    .line 73
    move-object v5, v6

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    const/4 v9, 0x4

    .line 80
    iget-object v5, v5, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 81
    .line 82
    invoke-virtual {v5, v9, v8}, Lcom/android/server/people/data/EventStore;->getEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistory;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    if-eqz v5, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    new-instance v5, Lcom/android/server/people/data/AggregateEventHistoryImpl;

    .line 90
    .line 91
    invoke-direct {v5}, Lcom/android/server/people/data/AggregateEventHistoryImpl;-><init>()V

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-direct {v7, v4, v5, v6}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;-><init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    iget-object v2, v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 102
    .line 103
    const/4 v4, 0x0

    .line 104
    if-eqz v2, :cond_5

    .line 105
    .line 106
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    goto :goto_2

    .line 111
    :cond_5
    move-object v2, v6

    .line 112
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {v2}, Lcom/android/server/people/data/DataManager;->mimeTypeToShareEventType(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    iget-object v7, v0, Lcom/android/server/people/prediction/AppTargetPredictor;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    .line 120
    .line 121
    invoke-virtual {v7}, Landroid/app/prediction/AppPredictionContext;->getPredictedTargetCount()I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 126
    .line 127
    .line 128
    move-result-wide v8

    .line 129
    invoke-static {v3, v2, v8, v9}, Lcom/android/server/people/prediction/SharesheetModelScorer;->computeScore(Ljava/util/List;IJ)V

    .line 130
    .line 131
    .line 132
    new-instance v2, Landroid/util/ArrayMap;

    .line 133
    .line 134
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-eqz v9, :cond_8

    .line 146
    .line 147
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    check-cast v9, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 152
    .line 153
    invoke-virtual {v9}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    invoke-virtual {v10}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    new-instance v11, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda0;

    .line 162
    .line 163
    const/4 v12, 0x0

    .line 164
    invoke-direct {v11, v12}, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda0;-><init>(I)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v2, v10, v11}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    check-cast v10, Ljava/util/List;

    .line 175
    .line 176
    move v11, v4

    .line 177
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    if-ge v11, v12, :cond_7

    .line 182
    .line 183
    invoke-virtual {v9}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v13

    .line 191
    check-cast v13, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 192
    .line 193
    invoke-virtual {v13}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    cmpl-float v12, v12, v13

    .line 198
    .line 199
    if-lez v12, :cond_6

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_7
    :goto_5
    invoke-interface {v10, v11, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 210
    .line 211
    .line 212
    move-result-wide v16

    .line 213
    sget-wide v8, Lcom/android/server/people/prediction/SharesheetModelScorer;->FOREGROUND_APP_PROMO_TIME_WINDOW:J

    .line 214
    .line 215
    sub-long v14, v16, v8

    .line 216
    .line 217
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    new-instance v5, Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .line 224
    .line 225
    const-class v8, Landroid/app/usage/UsageStatsManagerInternal;

    .line 226
    .line 227
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    check-cast v9, Landroid/app/usage/UsageStatsManagerInternal;

    .line 232
    .line 233
    check-cast v9, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 234
    .line 235
    iget-object v12, v9, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 236
    .line 237
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    sget-object v19, Llibcore/util/EmptyArray;->INT:[I

    .line 241
    .line 242
    const/16 v20, 0x0

    .line 243
    .line 244
    iget v9, v0, Lcom/android/server/people/prediction/AppTargetPredictor;->mCallingUserId:I

    .line 245
    .line 246
    const/16 v18, 0xa

    .line 247
    .line 248
    move v13, v9

    .line 249
    invoke-virtual/range {v12 .. v20}, Lcom/android/server/usage/UsageStatsService;->queryEventsWithQueryFilters(IJJI[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;

    .line 250
    .line 251
    .line 252
    move-result-object v10

    .line 253
    const/4 v11, 0x1

    .line 254
    if-nez v10, :cond_9

    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_9
    :goto_6
    invoke-virtual {v10}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    .line 258
    .line 259
    .line 260
    move-result v12

    .line 261
    if-eqz v12, :cond_a

    .line 262
    .line 263
    new-instance v12, Landroid/app/usage/UsageEvents$Event;

    .line 264
    .line 265
    invoke-direct {v12}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v10, v12}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 269
    .line 270
    .line 271
    invoke-virtual {v12}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 272
    .line 273
    .line 274
    move-result v13

    .line 275
    if-ne v13, v11, :cond_9

    .line 276
    .line 277
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_a
    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 282
    .line 283
    .line 284
    move-result v10

    .line 285
    sub-int/2addr v10, v11

    .line 286
    move-object v11, v6

    .line 287
    :goto_8
    if-ltz v10, :cond_e

    .line 288
    .line 289
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    check-cast v12, Landroid/app/usage/UsageEvents$Event;

    .line 294
    .line 295
    invoke-virtual {v12}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v12

    .line 299
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v13

    .line 303
    check-cast v13, Landroid/app/usage/UsageEvents$Event;

    .line 304
    .line 305
    invoke-virtual {v13}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v13

    .line 309
    if-eqz v13, :cond_d

    .line 310
    .line 311
    if-eqz v12, :cond_b

    .line 312
    .line 313
    iget-object v14, v0, Lcom/android/server/people/prediction/ShareTargetPredictor;->mChooserActivity:Ljava/lang/String;

    .line 314
    .line 315
    if-eqz v14, :cond_b

    .line 316
    .line 317
    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result v12

    .line 321
    if-eqz v12, :cond_b

    .line 322
    .line 323
    goto :goto_9

    .line 324
    :cond_b
    if-nez v11, :cond_c

    .line 325
    .line 326
    move-object v11, v13

    .line 327
    goto :goto_9

    .line 328
    :cond_c
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v12

    .line 332
    if-nez v12, :cond_d

    .line 333
    .line 334
    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v12

    .line 338
    if-eqz v12, :cond_d

    .line 339
    .line 340
    move-object v6, v13

    .line 341
    goto :goto_a

    .line 342
    :cond_d
    :goto_9
    add-int/lit8 v10, v10, -0x1

    .line 343
    .line 344
    goto :goto_8

    .line 345
    :cond_e
    :goto_a
    const/high16 v0, 0x3f800000    # 1.0f

    .line 346
    .line 347
    if-eqz v6, :cond_f

    .line 348
    .line 349
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    check-cast v5, Ljava/util/List;

    .line 354
    .line 355
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    check-cast v5, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 360
    .line 361
    invoke-virtual {v5}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    sub-float v6, v0, v6

    .line 366
    .line 367
    mul-float/2addr v6, v0

    .line 368
    sub-float v6, v0, v6

    .line 369
    .line 370
    invoke-virtual {v5, v6}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->setScore(F)V

    .line 371
    .line 372
    .line 373
    :cond_f
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    move v6, v4

    .line 382
    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 383
    .line 384
    .line 385
    move-result v10

    .line 386
    const/4 v11, 0x0

    .line 387
    if-eqz v10, :cond_12

    .line 388
    .line 389
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v10

    .line 393
    check-cast v10, Ljava/util/List;

    .line 394
    .line 395
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 396
    .line 397
    .line 398
    move-result-object v10

    .line 399
    :cond_11
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 400
    .line 401
    .line 402
    move-result v12

    .line 403
    if-eqz v12, :cond_10

    .line 404
    .line 405
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v12

    .line 409
    check-cast v12, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 410
    .line 411
    invoke-virtual {v12}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    .line 412
    .line 413
    .line 414
    move-result v13

    .line 415
    cmpl-float v13, v13, v11

    .line 416
    .line 417
    if-lez v13, :cond_11

    .line 418
    .line 419
    add-int/lit8 v6, v6, 0x1

    .line 420
    .line 421
    invoke-virtual {v12}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    .line 422
    .line 423
    .line 424
    move-result v12

    .line 425
    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    goto :goto_b

    .line 430
    :cond_12
    if-lt v6, v7, :cond_13

    .line 431
    .line 432
    goto/16 :goto_12

    .line 433
    .line 434
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 435
    .line 436
    .line 437
    move-result-wide v25

    .line 438
    sget-wide v5, Lcom/android/server/people/prediction/SharesheetModelScorer;->ONE_MONTH_WINDOW:J

    .line 439
    .line 440
    sub-long v23, v25, v5

    .line 441
    .line 442
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 443
    .line 444
    .line 445
    move-result-object v5

    .line 446
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    check-cast v6, Landroid/app/usage/UsageStatsManagerInternal;

    .line 451
    .line 452
    check-cast v6, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 453
    .line 454
    iget-object v6, v6, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 455
    .line 456
    const/16 v27, 0x4

    .line 457
    .line 458
    const/16 v28, 0x0

    .line 459
    .line 460
    move-object/from16 v21, v6

    .line 461
    .line 462
    move/from16 v22, v9

    .line 463
    .line 464
    invoke-virtual/range {v21 .. v28}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IJJIZ)Ljava/util/List;

    .line 465
    .line 466
    .line 467
    move-result-object v6

    .line 468
    new-instance v7, Landroid/util/ArrayMap;

    .line 469
    .line 470
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 471
    .line 472
    .line 473
    if-nez v6, :cond_14

    .line 474
    .line 475
    goto/16 :goto_11

    .line 476
    .line 477
    :cond_14
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 478
    .line 479
    .line 480
    move-result-object v6

    .line 481
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 482
    .line 483
    .line 484
    move-result v8

    .line 485
    if-eqz v8, :cond_1a

    .line 486
    .line 487
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v8

    .line 491
    check-cast v8, Landroid/app/usage/UsageStats;

    .line 492
    .line 493
    invoke-virtual {v8}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v9

    .line 497
    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v10

    .line 501
    if-eqz v10, :cond_19

    .line 502
    .line 503
    new-instance v10, Lcom/android/server/people/data/UsageStatsQueryHelper$$ExternalSyntheticLambda0;

    .line 504
    .line 505
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 506
    .line 507
    .line 508
    invoke-interface {v7, v9, v10}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v9

    .line 512
    check-cast v9, Lcom/android/server/people/data/AppUsageStatsData;

    .line 513
    .line 514
    iget-object v10, v8, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 515
    .line 516
    if-nez v10, :cond_15

    .line 517
    .line 518
    move v14, v4

    .line 519
    goto :goto_10

    .line 520
    :cond_15
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 521
    .line 522
    .line 523
    move-result v12

    .line 524
    move v13, v4

    .line 525
    move v14, v13

    .line 526
    :goto_d
    if-ge v13, v12, :cond_18

    .line 527
    .line 528
    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v15

    .line 532
    check-cast v15, Landroid/util/ArrayMap;

    .line 533
    .line 534
    if-nez v15, :cond_16

    .line 535
    .line 536
    goto :goto_f

    .line 537
    :cond_16
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 538
    .line 539
    .line 540
    move-result v4

    .line 541
    const/4 v11, 0x0

    .line 542
    :goto_e
    if-ge v11, v4, :cond_17

    .line 543
    .line 544
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v16

    .line 548
    check-cast v16, Ljava/lang/Integer;

    .line 549
    .line 550
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    .line 551
    .line 552
    .line 553
    move-result v16

    .line 554
    add-int v14, v16, v14

    .line 555
    .line 556
    add-int/lit8 v11, v11, 0x1

    .line 557
    .line 558
    goto :goto_e

    .line 559
    :cond_17
    :goto_f
    add-int/lit8 v13, v13, 0x1

    .line 560
    .line 561
    const/4 v4, 0x0

    .line 562
    const/4 v11, 0x0

    .line 563
    goto :goto_d

    .line 564
    :cond_18
    :goto_10
    iget v4, v9, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    .line 565
    .line 566
    add-int/2addr v4, v14

    .line 567
    iput v4, v9, Lcom/android/server/people/data/AppUsageStatsData;->mChosenCount:I

    .line 568
    .line 569
    invoke-virtual {v8}, Landroid/app/usage/UsageStats;->getAppLaunchCount()I

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    iget v8, v9, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    .line 574
    .line 575
    add-int/2addr v8, v4

    .line 576
    iput v8, v9, Lcom/android/server/people/data/AppUsageStatsData;->mLaunchCount:I

    .line 577
    .line 578
    :cond_19
    const/4 v4, 0x0

    .line 579
    const/4 v11, 0x0

    .line 580
    goto :goto_c

    .line 581
    :cond_1a
    :goto_11
    new-instance v4, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda0;

    .line 582
    .line 583
    const/4 v5, 0x1

    .line 584
    invoke-direct {v4, v5}, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda0;-><init>(I)V

    .line 585
    .line 586
    .line 587
    const v5, 0x3f666666    # 0.9f

    .line 588
    .line 589
    .line 590
    mul-float/2addr v5, v0

    .line 591
    invoke-static {v2, v7, v4, v5, v0}, Lcom/android/server/people/prediction/SharesheetModelScorer;->promoteApp(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/Function;FF)F

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    new-instance v4, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda0;

    .line 596
    .line 597
    const/4 v5, 0x2

    .line 598
    invoke-direct {v4, v5}, Lcom/android/server/people/prediction/SharesheetModelScorer$$ExternalSyntheticLambda0;-><init>(I)V

    .line 599
    .line 600
    .line 601
    const v5, 0x3e99999a    # 0.3f

    .line 602
    .line 603
    .line 604
    mul-float/2addr v5, v0

    .line 605
    invoke-static {v2, v7, v4, v5, v0}, Lcom/android/server/people/prediction/SharesheetModelScorer;->promoteApp(Ljava/util/Map;Ljava/util/Map;Ljava/util/function/Function;FF)F

    .line 606
    .line 607
    .line 608
    :goto_12
    new-instance v0, Lcom/android/server/people/prediction/ShareTargetPredictor$$ExternalSyntheticLambda2;

    .line 609
    .line 610
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 611
    .line 612
    .line 613
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 614
    .line 615
    .line 616
    new-instance v0, Ljava/util/ArrayList;

    .line 617
    .line 618
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 626
    .line 627
    .line 628
    move-result v3

    .line 629
    if-eqz v3, :cond_1c

    .line 630
    .line 631
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v3

    .line 635
    check-cast v3, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;

    .line 636
    .line 637
    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getAppTarget()Landroid/app/prediction/AppTarget;

    .line 638
    .line 639
    .line 640
    move-result-object v4

    .line 641
    new-instance v5, Landroid/app/prediction/AppTarget$Builder;

    .line 642
    .line 643
    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getId()Landroid/app/prediction/AppTargetId;

    .line 644
    .line 645
    .line 646
    move-result-object v6

    .line 647
    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v7

    .line 651
    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    .line 652
    .line 653
    .line 654
    move-result-object v8

    .line 655
    invoke-direct {v5, v6, v7, v8}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v4}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v4

    .line 662
    invoke-virtual {v5, v4}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    .line 663
    .line 664
    .line 665
    move-result-object v4

    .line 666
    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    .line 667
    .line 668
    .line 669
    move-result v5

    .line 670
    const/4 v6, 0x0

    .line 671
    cmpl-float v5, v5, v6

    .line 672
    .line 673
    if-lez v5, :cond_1b

    .line 674
    .line 675
    invoke-virtual {v3}, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->getScore()F

    .line 676
    .line 677
    .line 678
    move-result v3

    .line 679
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 680
    .line 681
    mul-float/2addr v3, v5

    .line 682
    float-to-int v3, v3

    .line 683
    goto :goto_14

    .line 684
    :cond_1b
    const/4 v3, 0x0

    .line 685
    :goto_14
    invoke-virtual {v4, v3}, Landroid/app/prediction/AppTarget$Builder;->setRank(I)Landroid/app/prediction/AppTarget$Builder;

    .line 686
    .line 687
    .line 688
    move-result-object v3

    .line 689
    invoke-virtual {v3}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    .line 690
    .line 691
    .line 692
    move-result-object v3

    .line 693
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    goto :goto_13

    .line 697
    :cond_1c
    invoke-virtual {v1, v0}, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 698
    .line 699
    .line 700
    return-void
.end method
