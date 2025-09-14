.class public final Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAppCategoryCallback:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$1;

.field public mEnabled:Z

.field public mLock:Ljava/lang/Object;

.field public mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;


# direct methods
.method public static -$$Nest$mmakeChangedAppList(Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p2, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v1, p1, p0}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;Ljava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    check-cast v0, Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    .line 19
    .line 20
    check-cast v0, Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object p2, p2, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    .line 27
    .line 28
    check-cast p2, Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {v0, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    iget-object p1, p1, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    .line 38
    .line 39
    check-cast p1, Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    return-object p0
.end method


# virtual methods
.method public clearItemsLocked()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    .line 4
    .line 5
    check-cast p0, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final getPackageCategory(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    .line 7
    .line 8
    check-cast p0, Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Integer;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, -0x1

    .line 24
    :goto_0
    monitor-exit v0

    .line 25
    return p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public loadItemsInternalLocked(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->parseAppCategoryList()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->parseAppCategoryList(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
