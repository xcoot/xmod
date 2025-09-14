.class public final Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final mCocktailBarList:Ljava/util/ArrayList;

.field mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

.field public mContext:Landroid/content/Context;

.field public mRegisteredCocktailBarSettingsObserver:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    .line 14
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z

    .line 19
    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const-string p0, "MARs:EdgeAppFilter"

    .line 22
    const-string v0, "IllegalArgumentException occurred in unregisterEnabledCocktailBarChanged()"

    .line 24
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    :goto_0
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    .line 3
    if-eqz p1, :cond_3

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 12
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_2

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Ljava/lang/String;

    .line 24
    invoke-virtual {p2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 30
    const/4 p2, 0x4

    .line 31
    if-eq p3, p2, :cond_1

    .line 33
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->getScreenOnState()Z

    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_0

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    monitor-exit p1

    .line 43
    const/16 p0, 0x11

    .line 45
    return p0

    .line 46
    :cond_2
    monitor-exit p1

    .line 47
    goto :goto_2

    .line 48
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0

    .line 50
    :cond_3
    :goto_2
    const/4 p0, 0x0

    .line 51
    return p0
.end method

.method public final getCocktailBarPackage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object v1

    .line 13
    const-string/jumbo v2, "cocktail_bar_enabled_cocktails"

    .line 16
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 31
    const-string v2, ";"

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 39
    const-string v2, ";"

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    .line 47
    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :goto_0
    monitor-exit v1

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    .line 3
    iget-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z

    .line 5
    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;

    .line 9
    new-instance v0, Landroid/os/Handler;

    .line 11
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    invoke-direct {p1, p0, v0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;Landroid/os/Handler;)V

    .line 17
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    .line 19
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object p1

    .line 25
    const-string/jumbo v0, "cocktail_bar_enabled_cocktails"

    .line 28
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    .line 34
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 44
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->getCocktailBarPackage()V

    .line 50
    return-void
.end method
