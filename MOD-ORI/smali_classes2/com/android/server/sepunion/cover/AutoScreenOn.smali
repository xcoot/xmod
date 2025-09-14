.class public final Lcom/android/server/sepunion/cover/AutoScreenOn;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAutoScreenOnFeature:Z

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mIsAutoScreenOn:Z

.field public final mLock:Ljava/lang/Object;

.field public final mNfcAuthEnabled:Z

.field public final mObserver:Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mIsAutoScreenOn:Z

    .line 13
    .line 14
    invoke-static {p2}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-boolean v0, Lcom/android/server/sepunion/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mNfcAuthEnabled:Z

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "com.sec.feature.cover.autoscreenon"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mAutoScreenOnFeature:Z

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->support()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iput-object p2, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mContentResolver:Landroid/content/ContentResolver;

    .line 48
    .line 49
    new-instance p2, Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;

    .line 50
    .line 51
    new-instance v0, Landroid/os/Handler;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p2, p0, v0}, Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;-><init>(Lcom/android/server/sepunion/cover/AutoScreenOn;Landroid/os/Handler;)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mObserver:Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mContentResolver:Landroid/content/ContentResolver;

    .line 62
    .line 63
    const-string p2, "auto_screen_on"

    .line 64
    .line 65
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iget-object v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mObserver:Lcom/android/server/sepunion/cover/AutoScreenOn$AutoScreenOnObserver;

    .line 70
    .line 71
    const/4 v1, -0x1

    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/AutoScreenOn;->update()V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "  mAutoScreenOn = "

    .line 2
    .line 3
    const-string v1, "  "

    .line 4
    .line 5
    const-string v2, " Current AutoScreenOn State:"

    .line 6
    .line 7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mNfcAuthEnabled:Z

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " "

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mAutoScreenOnFeature:Z

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mIsAutoScreenOn:Z

    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p0, "  "

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    monitor-exit v2

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method

.method public final off()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mIsAutoScreenOn:Z

    .line 5
    .line 6
    xor-int/lit8 p0, p0, 0x1

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final support()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mNfcAuthEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mAutoScreenOnFeature:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final update()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mContentResolver:Landroid/content/ContentResolver;

    .line 5
    .line 6
    const-string v2, "auto_screen_on"

    .line 7
    .line 8
    const/4 v3, -0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ne v1, v4, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v4, 0x0

    .line 18
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/sepunion/cover/AutoScreenOn;->mIsAutoScreenOn:Z

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method
