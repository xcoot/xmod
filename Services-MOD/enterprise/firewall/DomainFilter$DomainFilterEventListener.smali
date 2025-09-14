.class public final Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/net/IDomainFilterEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 6
    const-string/jumbo p1, "com.android.internal.net.IDomainFilterEventListener"

    .line 9
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11

    .line 1
    const-string/jumbo v0, "com.android.internal.net.IDomainFilterEventListener"

    .line 4
    const/4 v1, 0x1

    .line 5
    if-lt p1, v1, :cond_0

    .line 7
    const v2, 0xffffff

    .line 10
    if-gt p1, v2, :cond_0

    .line 12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    :cond_0
    const v2, 0x5f4e5446

    .line 18
    if-ne p1, v2, :cond_1

    .line 20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    return v1

    .line 24
    :cond_1
    if-eq p1, v1, :cond_2

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 34
    move-result p1

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 38
    move-result p3

    .line 39
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 42
    move-result-wide v2

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 46
    move-result-object p4

    .line 47
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 50
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    const-string/jumbo v0, "packageName"

    .line 58
    const-string v4, "activity"

    .line 60
    const-string v5, "DomainFilter"

    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    if-gez p3, :cond_3

    .line 66
    const-string/jumbo p2, "getPackageFromRunningProcesses() - Invalid PID provided: "

    .line 69
    invoke-static {p3, p2, v5}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    goto/16 :goto_1

    .line 74
    :cond_3
    if-gez p1, :cond_4

    .line 76
    const-string/jumbo p2, "getPackageFromRunningProcesses() - Invalid UID provided: "

    .line 79
    invoke-static {p1, p2, v5}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    goto/16 :goto_1

    .line 84
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 87
    move-result-wide v8

    .line 88
    :try_start_0
    iget-object v10, p2, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {v10, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    move-result-object v10

    .line 94
    check-cast v10, Landroid/app/ActivityManager;

    .line 96
    if-eqz v10, :cond_5

    .line 98
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 101
    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto/16 :goto_7

    .line 106
    :cond_5
    move-object v10, v7

    .line 107
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    if-eqz v10, :cond_b

    .line 112
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    move-result-object v8

    .line 116
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    move-result v9

    .line 120
    if-eqz v9, :cond_b

    .line 122
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    move-result-object v9

    .line 126
    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 128
    iget v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 130
    if-ne p3, v10, :cond_6

    .line 132
    iget-object p3, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 134
    if-nez p3, :cond_7

    .line 136
    goto :goto_1

    .line 137
    :cond_7
    array-length v7, p3

    .line 138
    if-ne v7, v1, :cond_8

    .line 140
    aget-object v7, p3, v6

    .line 142
    goto :goto_1

    .line 143
    :cond_8
    new-instance p3, Landroid/content/ContentValues;

    .line 145
    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 148
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 151
    move-result v7

    .line 152
    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 155
    move-result-object v7

    .line 156
    const-string v8, "#SelectClause#"

    .line 158
    invoke-virtual {p3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    filled-new-array {v0}, [Ljava/lang/String;

    .line 164
    move-result-object v7

    .line 165
    iget-object p2, p2, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 167
    const-string v8, "DomainFilterTable"

    .line 169
    invoke-virtual {p2, v8, v7, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 172
    move-result-object p2

    .line 173
    check-cast p2, Ljava/util/ArrayList;

    .line 175
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 178
    move-result p3

    .line 179
    if-nez p3, :cond_a

    .line 181
    iget-object p3, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 183
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 186
    move-result-object p3

    .line 187
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 190
    move-result-object p2

    .line 191
    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    move-result v7

    .line 195
    if-eqz v7, :cond_a

    .line 197
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    move-result-object v7

    .line 201
    check-cast v7, Landroid/content/ContentValues;

    .line 203
    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    move-result-object v7

    .line 207
    invoke-interface {p3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 210
    move-result v8

    .line 211
    if-eqz v8, :cond_9

    .line 213
    goto :goto_1

    .line 214
    :cond_a
    iget-object p2, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 216
    aget-object v7, p2, v6

    .line 218
    :cond_b
    :goto_1
    if-nez v7, :cond_c

    .line 220
    sget p0, Lcom/android/server/enterprise/firewall/DomainFilter;->MAX_LIST_SIZE_IN_BYTES:I

    .line 222
    const-string/jumbo p0, "failed to find application which was blocked"

    .line 225
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    goto/16 :goto_6

    .line 230
    :cond_c
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 233
    move-result-object p2

    .line 234
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 237
    move-result-object p1

    .line 238
    new-instance p3, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    .line 240
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p2, p3, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    .line 245
    iput-object p1, p3, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    .line 247
    iput-object p4, p3, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    .line 249
    move v2, v6

    .line 250
    move v3, v2

    .line 251
    :goto_2
    const/4 v8, 0x5

    .line 252
    if-ge v2, v8, :cond_17

    .line 254
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 256
    iget-object v8, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    .line 258
    aget-object v8, v8, v2

    .line 260
    if-eqz v8, :cond_16

    .line 262
    iget-object v9, p3, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    .line 264
    iget-object v10, v8, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    .line 266
    if-nez v10, :cond_d

    .line 268
    if-nez v9, :cond_16

    .line 270
    :cond_d
    if-eqz v10, :cond_e

    .line 272
    if-nez v9, :cond_e

    .line 274
    goto :goto_3

    .line 275
    :cond_e
    if-eqz v10, :cond_f

    .line 277
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    move-result v9

    .line 281
    if-nez v9, :cond_f

    .line 283
    goto :goto_3

    .line 284
    :cond_f
    iget-object v9, p3, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    .line 286
    iget-object v10, v8, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    .line 288
    if-nez v10, :cond_10

    .line 290
    if-nez v9, :cond_16

    .line 292
    :cond_10
    if-eqz v10, :cond_11

    .line 294
    if-nez v9, :cond_11

    .line 296
    goto :goto_3

    .line 297
    :cond_11
    if-eqz v10, :cond_12

    .line 299
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    move-result v9

    .line 303
    if-nez v9, :cond_12

    .line 305
    goto :goto_3

    .line 306
    :cond_12
    iget-object v9, p3, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    .line 308
    iget-object v8, v8, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    .line 310
    if-nez v8, :cond_13

    .line 312
    if-nez v9, :cond_16

    .line 314
    :cond_13
    if-eqz v8, :cond_14

    .line 316
    if-nez v9, :cond_14

    .line 318
    goto :goto_3

    .line 319
    :cond_14
    if-eqz v8, :cond_15

    .line 321
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    move-result v8

    .line 325
    if-nez v8, :cond_15

    .line 327
    goto :goto_3

    .line 328
    :cond_15
    move v3, v1

    .line 329
    :cond_16
    :goto_3
    add-int/2addr v2, v1

    .line 330
    goto :goto_2

    .line 331
    :cond_17
    if-nez v3, :cond_1a

    .line 333
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 335
    iget-object v3, v2, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    .line 337
    iget v9, v2, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    .line 339
    aput-object p3, v3, v9

    .line 341
    add-int/2addr v9, v1

    .line 342
    iput v9, v2, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    .line 344
    if-ne v9, v8, :cond_18

    .line 346
    iput v6, v2, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    .line 348
    :cond_18
    iget-object p3, v2, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 350
    invoke-virtual {p3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 353
    move-result-object p3

    .line 354
    check-cast p3, Landroid/app/ActivityManager;

    .line 356
    invoke-virtual {p3, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 359
    move-result-object p3

    .line 360
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 363
    move-result-object p3

    .line 364
    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 366
    new-instance v2, Landroid/content/Intent;

    .line 368
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.BLOCKED_DOMAIN"

    .line 371
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_PACKAGENAME"

    .line 377
    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_TIMESTAMP"

    .line 383
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_UID"

    .line 389
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_URL"

    .line 395
    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    iget-object p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 400
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 403
    move-result-object p3

    .line 404
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    move-result p3

    .line 408
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

    .line 411
    if-eqz p3, :cond_19

    .line 413
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    goto :goto_4

    .line 417
    :cond_19
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    :goto_4
    iget-object p3, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 422
    iget-object p3, p3, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 424
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 426
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    .line 429
    invoke-virtual {p3, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 432
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 434
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    const/4 p3, -0x1

    .line 438
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 441
    move-result p1

    .line 442
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 445
    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 446
    goto :goto_5

    .line 447
    :catch_0
    move-exception p1

    .line 448
    const-string/jumbo v2, "saveReportInDatabase() - Error parsing userId received from daemon."

    .line 451
    invoke-static {v5, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    move p1, p3

    .line 455
    :goto_5
    if-eq p1, p3, :cond_1a

    .line 457
    iget-object p3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 459
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 462
    move-result-object v2

    .line 463
    check-cast p3, Ljava/util/HashSet;

    .line 465
    invoke-virtual {p3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 468
    move-result p3

    .line 469
    if-eqz p3, :cond_1a

    .line 471
    const-string/jumbo p3, "time"

    .line 474
    invoke-static {p3, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 477
    move-result-object p2

    .line 478
    const-string/jumbo p3, "userId"

    .line 481
    invoke-static {p1, p2, p3, v0, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string/jumbo p1, "url"

    .line 487
    invoke-virtual {p2, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 492
    const-string p1, "DomainFilterReportTable"

    .line 494
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 497
    move-result-wide p0

    .line 498
    const-wide/16 p2, -0x1

    .line 500
    cmp-long p0, p0, p2

    .line 502
    if-nez p0, :cond_1a

    .line 504
    const-string/jumbo p0, "saveReportInDatabase() - Failed to save domain report in database"

    .line 507
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_1a
    :goto_6
    return v1

    .line 511
    :goto_7
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 514
    throw p0
.end method
