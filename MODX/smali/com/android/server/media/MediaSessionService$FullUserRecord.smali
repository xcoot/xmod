.class public final Lcom/android/server/media/MediaSessionService$FullUserRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mFullUserId:I

.field public mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

.field public final mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

.field public final mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

.field public mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

.field public mOnMediaKeyListenerUid:I

.field public mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

.field public mOnVolumeKeyLongPressListenerUid:I

.field public final mPriorityStack:Lcom/android/server/media/MediaSessionStack;

.field public final mUidToSessionCount:Landroid/util/SparseIntArray;

.field public final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    .line 22
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mUidToSessionCount:Landroid/util/SparseIntArray;

    .line 27
    iput p2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 29
    iget-object v0, p1, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 34
    move-result-object p2

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mContentResolver:Landroid/content/ContentResolver;

    .line 46
    new-instance v0, Lcom/android/server/media/MediaSessionStack;

    .line 48
    iget-object v2, p1, Lcom/android/server/media/MediaSessionService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 50
    invoke-direct {v0, v2, p0}, Lcom/android/server/media/MediaSessionStack;-><init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    .line 53
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 55
    const-string/jumbo v0, "media_button_receiver"

    .line 58
    invoke-static {p2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    iget-object p1, p1, Lcom/android/server/media/MediaSessionService;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    move-result v0

    .line 68
    const/4 v2, 0x0

    .line 69
    if-eqz v0, :cond_0

    .line 71
    goto :goto_2

    .line 72
    :cond_0
    const-string v0, ","

    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 77
    move-result-object p2

    .line 78
    if-eqz p2, :cond_6

    .line 80
    array-length v0, p2

    .line 81
    const/4 v3, 0x3

    .line 82
    const/4 v4, 0x2

    .line 83
    if-eq v0, v4, :cond_1

    .line 85
    array-length v0, p2

    .line 86
    if-eq v0, v3, :cond_1

    .line 88
    goto :goto_2

    .line 89
    :cond_1
    aget-object v0, p2, v1

    .line 91
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 94
    move-result-object v0

    .line 95
    if-nez v0, :cond_2

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    const/4 v1, 0x1

    .line 99
    aget-object v5, p2, v1

    .line 101
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 104
    move-result v5

    .line 105
    array-length v6, p2

    .line 106
    if-ne v6, v3, :cond_3

    .line 108
    aget-object p1, p2, v4

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 113
    move-result p1

    .line 114
    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 118
    move-result-object p1

    .line 119
    const p2, 0xc0001

    .line 122
    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 125
    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    if-eqz p2, :cond_4

    .line 128
    move v3, v4

    .line 129
    goto :goto_0

    .line 130
    :catch_0
    :cond_4
    const p2, 0xc0004

    .line 133
    :try_start_1
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 136
    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    if-eqz p1, :cond_5

    .line 139
    goto :goto_0

    .line 140
    :catch_1
    :cond_5
    move v3, v1

    .line 141
    :goto_0
    move p1, v3

    .line 142
    :goto_1
    new-instance p2, Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 144
    invoke-direct {p2, v5, v2, v0, p1}, Lcom/android/server/media/MediaButtonReceiverHolder;-><init>(ILandroid/app/PendingIntent;Landroid/content/ComponentName;I)V

    .line 147
    move-object v2, p2

    .line 148
    :cond_6
    :goto_2
    iput-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 150
    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Record for full_user="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 22
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    .line 24
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-ge v3, v2, :cond_1

    .line 31
    iget-object v4, v0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    .line 33
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 36
    move-result v4

    .line 37
    iget-object v5, v0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    .line 39
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 42
    move-result v5

    .line 43
    if-eq v4, v5, :cond_0

    .line 45
    iget-object v4, v0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    .line 47
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 50
    move-result v4

    .line 51
    if-ne v4, v1, :cond_0

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    const-string v5, ", profile_user="

    .line 57
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    iget-object v5, v0, Lcom/android/server/media/MediaSessionService;->mFullUserIds:Landroid/util/SparseIntArray;

    .line 62
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 65
    move-result v5

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    const-string v2, "  Volume key long-press listener: "

    .line 86
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    const-string v2, "  Volume key long-press listener package: "

    .line 105
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    iget v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    .line 110
    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    const-string v2, "  Media key listener: "

    .line 128
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    const-string v2, "  Media key listener package: "

    .line 147
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    iget v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    .line 152
    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    const-string v2, "  OnMediaKeyEventDispatchedListener: added "

    .line 170
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    .line 175
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 178
    move-result v2

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    const-string v2, " listener(s)"

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventDispatchedListeners:Ljava/util/HashMap;

    .line 196
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 199
    move-result-object v1

    .line 200
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 203
    move-result-object v1

    .line 204
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    move-result v3

    .line 208
    const-string v4, "    from "

    .line 210
    if-eqz v3, :cond_2

    .line 212
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    move-result-object v3

    .line 216
    check-cast v3, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    .line 220
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    iget v3, v3, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventDispatchedListenerRecord;->uid:I

    .line 225
    invoke-static {v0, v3}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    goto :goto_1

    .line 240
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 242
    const-string v3, "  OnMediaKeyEventSessionChangedListener: added "

    .line 244
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    .line 249
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 252
    move-result v3

    .line 253
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    .line 268
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 271
    move-result-object v1

    .line 272
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 275
    move-result-object v1

    .line 276
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    move-result v2

    .line 280
    if-eqz v2, :cond_3

    .line 282
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    move-result-object v2

    .line 286
    check-cast v2, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    .line 290
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    iget v2, v2, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->uid:I

    .line 295
    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionService;->-$$Nest$mgetCallingPackageName(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    goto :goto_2

    .line 310
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 312
    const-string v2, "  Last MediaButtonReceiver: "

    .line 314
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    .line 331
    const-string v2, "  High priority mediakey receiver: "

    .line 333
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService;->mHighPriorityMediaKeyReceiver:Landroid/content/ComponentName;

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    .line 350
    const-string v2, "  Volume key long-press receiver: "

    .line 352
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mVolumeKeyLongPressReceiver:Landroid/content/ComponentName;

    .line 357
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 369
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    .line 374
    const-string v1, "  Media button session is "

    .line 376
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    move-result-object v0

    .line 388
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    .line 393
    const-string v1, "  Sessions Stack - have "

    .line 395
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 400
    check-cast v1, Ljava/util/ArrayList;

    .line 402
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 405
    move-result v1

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    const-string v1, " sessions:"

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    move-result-object v0

    .line 418
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 423
    check-cast p0, Ljava/util/ArrayList;

    .line 425
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 428
    move-result-object p0

    .line 429
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_4

    .line 435
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 438
    move-result-object v0

    .line 439
    check-cast v0, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 441
    const-string v1, "    "

    .line 443
    invoke-virtual {v0, p1, v1}, Lcom/android/server/media/MediaSessionRecordImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 446
    goto :goto_3

    .line 447
    :cond_4
    return-void
.end method

.method public final getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecordImpl;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->isGlobalPriorityActiveLocked()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    iget-object p0, v0, Lcom/android/server/media/MediaSessionService;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 14
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 16
    :goto_0
    return-object p0
.end method

.method public final pushAddressedPlayerChangedLocked()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyEventSessionChangedListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;

    .line 15
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final pushAddressedPlayerChangedLocked(Landroid/media/session/IOnMediaKeyEventSessionChangedListener;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecordImpl;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    instance-of v1, v0, Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionService;->setMultiSoundFlag(Lcom/android/server/media/MediaSessionRecord;)V

    .line 6
    iget-object p0, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 8
    invoke-interface {p1, p0, v0}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mCurrentFullUserRecord:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 10
    iget-object p0, p0, Lcom/android/server/media/MediaButtonReceiverHolder;->mPackageName:Ljava/lang/String;

    .line 11
    invoke-interface {p1, p0, v0}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    goto :goto_1

    .line 12
    :cond_1
    const-string p0, ""

    invoke-interface {p1, p0, v0}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->onMediaKeyEventSessionChanged(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 13
    :goto_0
    const-string p1, "MediaSessionService"

    const-string v0, "Failed to pushAddressedPlayerChangedLocked"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/media/MediaSession2Record;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    check-cast p1, Lcom/android/server/media/MediaSessionRecord;

    .line 8
    iget-object p1, p1, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 10
    if-nez p1, :cond_1

    .line 12
    return-void

    .line 13
    :cond_1
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiverHolder:Lcom/android/server/media/MediaButtonReceiverHolder;

    .line 15
    const-string v0, ""

    .line 17
    if-nez p1, :cond_2

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    iget-object v1, p1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentName:Landroid/content/ComponentName;

    .line 22
    if-nez v1, :cond_3

    .line 24
    goto :goto_0

    .line 25
    :cond_3
    const/4 v0, 0x3

    .line 26
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    aput-object v1, v0, v2

    .line 35
    iget v1, p1, Lcom/android/server/media/MediaButtonReceiverHolder;->mUserId:I

    .line 37
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x1

    .line 42
    aput-object v1, v0, v2

    .line 44
    iget p1, p1, Lcom/android/server/media/MediaButtonReceiverHolder;->mComponentType:I

    .line 46
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    const/4 v1, 0x2

    .line 51
    aput-object p1, v0, v1

    .line 53
    const-string p1, ","

    .line 55
    invoke-static {p1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    :goto_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mContentResolver:Landroid/content/ContentResolver;

    .line 61
    const-string/jumbo p1, "media_button_receiver"

    .line 64
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    return-void
.end method
