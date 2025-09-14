.class public final Lcom/android/server/am/mars/filter/filter/AODClockFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public isAodTypeCalendar:Z

.field public isUsingAODCalendarWidget:Z

.field public mAODCalendarWidgetObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

.field public mAODClockTypeObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

.field public mContext:Landroid/content/Context;


# virtual methods
.method public final deInit()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    const-string p0, "MARs:AODClockFilter"

    .line 40
    .line 41
    const-string v0, "IllegalArgumentException occurred in unregisterContentObserver()"

    .line 42
    .line 43
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->isUsingAODCalendarWidget:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->isAodTypeCalendar:Z

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    :cond_0
    const-string/jumbo p0, "com.samsung.android.calendar"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    const/16 p0, 0x19

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final getAODClockType()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const-string/jumbo v2, "content://com.samsung.android.app.aodservice.provider/settings/aod_clock_type"

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-lez v3, :cond_0

    .line 31
    .line 32
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 36
    .line 37
    .line 38
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v3

    .line 41
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception v2

    .line 46
    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    throw v3

    .line 50
    :catch_0
    move-exception v2

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_3
    const v2, 0xc351

    .line 62
    .line 63
    .line 64
    if-ne v1, v2, :cond_2

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    :cond_2
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->isAodTypeCalendar:Z

    .line 68
    .line 69
    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/AODClockFilter;Landroid/os/Handler;I)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    new-instance p1, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    .line 27
    .line 28
    new-instance v0, Landroid/os/Handler;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/AODClockFilter;Landroid/os/Handler;I)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    .line 38
    .line 39
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string/jumbo v0, "content://com.samsung.android.app.aodservice.provider/settings/aod_clock_type"

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string/jumbo v0, "content://settings/system/add_info_today_schedule"

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    .line 72
    .line 73
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->getAODClockType()V

    .line 82
    .line 83
    .line 84
    return-void
.end method
