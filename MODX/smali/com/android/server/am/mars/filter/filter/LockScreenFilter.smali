.class public final Lcom/android/server/am/mars/filter/filter/LockScreenFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public isLockTypeClockFace:Z

.field public isLockTypeClockFaceSub:Z

.field public mContext:Landroid/content/Context;

.field public mKeyguardPkg:Ljava/lang/String;

.field public mKeyguardPkgMap:Ljava/util/Map;

.field public mKeyguardPkgUid:I

.field public mLockClockFaceObserver:Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;

.field public mLockClockFaceSubObserver:Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;


# virtual methods
.method public final deInit()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 19
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 36
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    const-string p0, "MARs:LockScreenFilter"

    .line 41
    const-string v0, "IllegalArgumentException occurred in unregisterContentObserver()"

    .line 43
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->isLockTypeClockFace:Z

    .line 3
    const/16 v0, 0xd

    .line 5
    if-nez p1, :cond_0

    .line 7
    iget-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->isLockTypeClockFaceSub:Z

    .line 9
    if-eqz p1, :cond_1

    .line 11
    :cond_0
    const-string/jumbo p1, "com.samsung.android.app.clockface"

    .line 14
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 20
    return v0

    .line 21
    :cond_1
    iget p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgUid:I

    .line 23
    if-ne p1, p2, :cond_2

    .line 25
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkg:Ljava/lang/String;

    .line 27
    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 35
    return v0

    .line 36
    :cond_2
    const/16 p1, 0x11

    .line 38
    if-ne p3, p1, :cond_3

    .line 40
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mKeyguardPkgMap:Ljava/util/Map;

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object p1

    .line 46
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 48
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Ljava/lang/String;

    .line 54
    if-eqz p0, :cond_3

    .line 56
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_3

    .line 62
    return v0

    .line 63
    :cond_3
    const/4 p0, 0x0

    .line 64
    return p0
.end method

.method public final getLockClockFace()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object v2

    .line 8
    const-string/jumbo v1, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_clock_type"

    .line 11
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object v3

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-eqz v1, :cond_0

    .line 25
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 28
    move-result v2

    .line 29
    if-lez v2, :cond_0

    .line 31
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 34
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 37
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception v2

    .line 40
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    goto :goto_0

    .line 44
    :catchall_1
    move-exception v1

    .line 45
    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 48
    :goto_0
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    move v2, v0

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    move v2, v0

    .line 53
    :goto_1
    if-eqz v1, :cond_1

    .line 55
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 58
    goto :goto_3

    .line 59
    :catch_1
    move-exception v1

    .line 60
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    :cond_1
    :goto_3
    const v1, 0x9c40

    .line 66
    if-lt v2, v1, :cond_2

    .line 68
    const v1, 0x13880

    .line 71
    if-gt v2, v1, :cond_2

    .line 73
    const/4 v0, 0x1

    .line 74
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->isLockTypeClockFace:Z

    .line 76
    return-void
.end method

.method public final getLockClockFaceSub()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object v2

    .line 8
    const-string/jumbo v1, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_sub_clock_type"

    .line 11
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object v3

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-eqz v1, :cond_0

    .line 25
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 28
    move-result v2

    .line 29
    if-lez v2, :cond_0

    .line 31
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 34
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 37
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception v2

    .line 40
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    goto :goto_0

    .line 44
    :catchall_1
    move-exception v1

    .line 45
    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 48
    :goto_0
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    move v2, v0

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    move v2, v0

    .line 53
    :goto_1
    if-eqz v1, :cond_1

    .line 55
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 58
    goto :goto_3

    .line 59
    :catch_1
    move-exception v1

    .line 60
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    :cond_1
    :goto_3
    const v1, 0x9c40

    .line 66
    if-lt v2, v1, :cond_2

    .line 68
    const v1, 0x13880

    .line 71
    if-gt v2, v1, :cond_2

    .line 73
    const/4 v0, 0x1

    .line 74
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->isLockTypeClockFaceSub:Z

    .line 76
    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    .line 3
    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;

    .line 7
    if-nez p1, :cond_0

    .line 9
    new-instance p1, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;

    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/LockScreenFilter;Landroid/os/Handler;I)V

    .line 20
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;

    .line 24
    if-nez p1, :cond_1

    .line 26
    new-instance p1, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;

    .line 28
    new-instance v0, Landroid/os/Handler;

    .line 30
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/LockScreenFilter;Landroid/os/Handler;I)V

    .line 37
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;

    .line 39
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    move-result-object p1

    .line 45
    const-string/jumbo v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_clock_type"

    .line 48
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceObserver:Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 58
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    move-result-object p1

    .line 64
    const-string/jumbo v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_sub_clock_type"

    .line 67
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->mLockClockFaceSubObserver:Lcom/android/server/am/mars/filter/filter/LockScreenFilter$1;

    .line 73
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->getLockClockFace()V

    .line 84
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->getLockClockFaceSub()V

    .line 87
    return-void
.end method
