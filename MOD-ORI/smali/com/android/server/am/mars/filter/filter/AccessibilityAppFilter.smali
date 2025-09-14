.class public final Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mAccessibilityContentObserver:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;

.field public mContext:Landroid/content/Context;

.field public final mEnabledAccessibilityPackages:Ljava/util/ArrayList;

.field public mRegisteredAccessibilityContentObserver:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mAccessibilityContentObserver:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final addPackages(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "getEnabledAccessibilityPackage: add mEnabledAccessibilityPackages "

    .line 2
    .line 3
    .line 4
    const-string v1, "/"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    aget-object v2, p1, v1

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lez v2, :cond_1

    .line 18
    .line 19
    aget-object p1, p1, v1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    const-string p0, "MARs:AccessibilityAppFilter"

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    monitor-exit v1

    .line 62
    goto :goto_2

    .line 63
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0

    .line 65
    :cond_1
    :goto_2
    return-void
.end method

.method public final deInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mAccessibilityContentObserver:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const-string p0, "MARs:AccessibilityAppFilter"

    .line 30
    .line 31
    const-string v0, "IllegalArgumentException occurred in unregisterContentObserver()"

    .line 32
    .line 33
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-ne p1, p2, :cond_1

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    monitor-exit p1

    .line 27
    const/16 p0, 0x13

    .line 28
    .line 29
    return p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    monitor-exit p1

    .line 33
    goto :goto_1

    .line 34
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0

    .line 36
    :cond_1
    :goto_1
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method public final getEnabledAccessibilityPackage()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string/jumbo v1, "enabled_accessibility_services"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string v1, ":"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const-string v1, ":"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    array-length v1, v0

    .line 41
    const/4 v2, 0x0

    .line 42
    :goto_0
    if-ge v2, v1, :cond_3

    .line 43
    .line 44
    aget-object v3, v0, v2

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    const-string v4, "/"

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0, v3}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->addPackages(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const-string v1, "/"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->addPackages(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->getEnabledAccessibilityPackage()V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;

    .line 11
    .line 12
    new-instance v0, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, p0, v0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mAccessibilityContentObserver:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string/jumbo v0, "enabled_accessibility_services"

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mAccessibilityContentObserver:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mRegisteredAccessibilityContentObserver:Z

    .line 49
    .line 50
    :cond_0
    return-void
.end method
