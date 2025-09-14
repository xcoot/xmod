.class public final Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

.field public static final NUMBER_OF_CORES:I

.field public static final sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;


# instance fields
.field public mCallback:Lcom/samsung/android/localeoverlaymanager/ExtractionCompleteCallback;

.field public mContextRef:Ljava/lang/ref/WeakReference;

.field public final mExtractedLocales:Ljava/util/Set;

.field public mForceEnable:Z

.field public mLocalesToAdd:Ljava/util/Set;

.field public mShouldReplace:Z

.field public final mTargetPackages:Ljava/util/List;

.field public final mTasks:Ljava/util/Queue;

.field public final mTasksWorkQueue:Ljava/util/concurrent/BlockingQueue;

.field public final mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->NUMBER_OF_CORES:I

    .line 10
    .line 11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    sput-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    new-instance v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mExtractedLocales:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 19
    .line 20
    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v7, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasksWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasks:Ljava/util/Queue;

    .line 31
    .line 32
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    .line 34
    const-wide/16 v4, 0x1

    .line 35
    .line 36
    sget-object v6, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->KEEP_ALIVE_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 37
    .line 38
    sget v3, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->NUMBER_OF_CORES:I

    .line 39
    .line 40
    move-object v1, v0

    .line 41
    move v2, v3

    .line 42
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final extractLocaleApks(Ljava/util/Set;Ljava/util/Set;Landroid/content/Context;Z)V
    .locals 6

    .line 1
    const-string v0, "ApkExtractionManager"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "extractLocaleApks() called with: targetPackages = ["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "], context = ["

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "]"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mCallback:Lcom/samsung/android/localeoverlaymanager/ExtractionCompleteCallback;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    new-instance p0, Ljava/util/HashSet;

    .line 45
    .line 46
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 47
    .line 48
    .line 49
    check-cast v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 50
    .line 51
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->onExtractionComplete(Ljava/util/Set;Z)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    .line 56
    .line 57
    check-cast v0, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    const-string v0, "ApkExtractionManager"

    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v3, "Cancelling extraction for packages: "

    .line 70
    .line 71
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v0, v2}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 87
    .line 88
    iget-object v2, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasksWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 89
    .line 90
    check-cast v2, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    new-array v3, v2, [Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;

    .line 97
    .line 98
    iget-object v4, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasksWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 99
    .line 100
    check-cast v4, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 101
    .line 102
    invoke-virtual {v4, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    monitor-enter v0

    .line 106
    move v4, v1

    .line 107
    :goto_0
    if-ge v4, v2, :cond_1

    .line 108
    .line 109
    :try_start_0
    aget-object v5, v3, v4

    .line 110
    .line 111
    iget-object v5, v5, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;->mExtractionTask:Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    sget-object v5, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 117
    .line 118
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    :try_start_1
    monitor-exit v5

    .line 120
    add-int/lit8 v4, v4, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :try_start_2
    throw p0

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    goto :goto_1

    .line 128
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    .line 130
    .line 131
    check-cast v0, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    throw p0

    .line 139
    :cond_2
    :goto_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 140
    .line 141
    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iput-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 145
    .line 146
    iget-object p3, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    .line 147
    .line 148
    check-cast p3, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    .line 152
    .line 153
    iget-object p3, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mExtractedLocales:Ljava/util/Set;

    .line 154
    .line 155
    check-cast p3, Ljava/util/HashSet;

    .line 156
    .line 157
    invoke-virtual {p3}, Ljava/util/HashSet;->clear()V

    .line 158
    .line 159
    .line 160
    iput-object p2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mLocalesToAdd:Ljava/util/Set;

    .line 161
    .line 162
    iput-boolean p4, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mShouldReplace:Z

    .line 163
    .line 164
    iput-boolean v1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mForceEnable:Z

    .line 165
    .line 166
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_6

    .line 175
    .line 176
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    check-cast p2, Ljava/lang/String;

    .line 181
    .line 182
    new-instance p3, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string/jumbo p4, "startExtraction() called with: targetPackage = ["

    .line 185
    .line 186
    .line 187
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string p4, "]"

    .line 194
    .line 195
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p3

    .line 202
    const-string p4, "ApkExtractionManager"

    .line 203
    .line 204
    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    sget-object p3, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->sInstance:Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;

    .line 208
    .line 209
    iget-object v0, p3, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasks:Ljava/util/Queue;

    .line 210
    .line 211
    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    check-cast v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 218
    .line 219
    if-nez v0, :cond_3

    .line 220
    .line 221
    new-instance v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;

    .line 222
    .line 223
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 224
    .line 225
    .line 226
    new-instance v1, Ljava/util/HashSet;

    .line 227
    .line 228
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 229
    .line 230
    .line 231
    iput-object v1, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractedLocaleApks:Ljava/util/Set;

    .line 232
    .line 233
    new-instance v1, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;

    .line 234
    .line 235
    new-instance v2, Lcom/samsung/android/localeoverlaymanager/SevenZFileCopier;

    .line 236
    .line 237
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-direct {v1, v0, v2}, Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;-><init>(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;Lcom/samsung/android/localeoverlaymanager/SevenZFileCopier;)V

    .line 241
    .line 242
    .line 243
    iput-object v1, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractorRunnable:Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;

    .line 244
    .line 245
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 246
    .line 247
    if-eqz v1, :cond_4

    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    check-cast v1, Landroid/content/Context;

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_4
    const/4 v1, 0x0

    .line 257
    :goto_4
    if-eqz v1, :cond_5

    .line 258
    .line 259
    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mLocalesToAdd:Ljava/util/Set;

    .line 260
    .line 261
    if-eqz v2, :cond_5

    .line 262
    .line 263
    iget-boolean p4, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mShouldReplace:Z

    .line 264
    .line 265
    iput-object p2, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mTargetPackage:Ljava/lang/String;

    .line 266
    .line 267
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 268
    .line 269
    invoke-direct {p2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    iput-object p2, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 273
    .line 274
    iput-object v2, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mLocaleLanguages:Ljava/util/Set;

    .line 275
    .line 276
    iput-boolean p4, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mShouldReplace:Z

    .line 277
    .line 278
    iget-object p2, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractedLocaleApks:Ljava/util/Set;

    .line 279
    .line 280
    check-cast p2, Ljava/util/HashSet;

    .line 281
    .line 282
    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 283
    .line 284
    .line 285
    iget-object p2, p3, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 286
    .line 287
    iget-object p3, v0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractorRunnable:Lcom/samsung/android/localeoverlaymanager/ApkExtractorRunnable;

    .line 288
    .line 289
    invoke-virtual {p2, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 290
    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string/jumbo p3, "startExtraction: Context is "

    .line 296
    .line 297
    .line 298
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string p3, ", localesToAdd is "

    .line 305
    .line 306
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget-object p3, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mLocalesToAdd:Ljava/util/Set;

    .line 310
    .line 311
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    invoke-static {p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    goto/16 :goto_3

    .line 322
    .line 323
    :cond_6
    return-void
.end method

.method public final declared-synchronized handleState(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;I)V
    .locals 3

    .line 1
    const-string v0, "handleState() called with: extractionTask = ["

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "ApkExtractionManager"

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, "], state = ["

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "]"

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    if-ne p2, v0, :cond_0

    .line 36
    .line 37
    iget-object p2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mExtractedLocales:Ljava/util/Set;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mExtractedLocaleApks:Ljava/util/Set;

    .line 40
    .line 41
    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->onFinishTask(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit p0

    .line 53
    throw p1
.end method

.method public final declared-synchronized onFinishTask(Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    .line 3
    .line 4
    iget-object v1, p1, Lcom/samsung/android/localeoverlaymanager/ApkExtractionTask;->mTargetPackage:Ljava/lang/String;

    .line 5
    .line 6
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTargetPackages:Ljava/util/List;

    .line 12
    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mCallback:Lcom/samsung/android/localeoverlaymanager/ExtractionCompleteCallback;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mExtractedLocales:Ljava/util/Set;

    .line 26
    .line 27
    iget-boolean v2, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mForceEnable:Z

    .line 28
    .line 29
    check-cast v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->onExtractionComplete(Ljava/util/Set;Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/ApkExtractionManager;->mTasks:Ljava/util/Queue;

    .line 38
    .line 39
    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit p0

    .line 47
    throw p1
.end method
