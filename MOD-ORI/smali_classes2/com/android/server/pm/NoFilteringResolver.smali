.class public final Lcom/android/server/pm/NoFilteringResolver;
.super Lcom/android/server/pm/CrossProfileResolver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final filterResolveInfoWithDomainPreferredActivity(ILjava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    return-object p2
.end method

.method public final resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;Ljava/util/List;ZLjava/util/function/Function;)Ljava/util/List;
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/server/pm/CrossProfileResolver;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 3
    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-wide v4, p6

    .line 8
    move v6, p5

    .line 9
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    move v3, v2

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-ge v3, v4, :cond_0

    .line 27
    .line 28
    new-instance v4, Lcom/android/server/pm/CrossProfileDomainInfo;

    .line 29
    .line 30
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 35
    .line 36
    move v6, p5

    .line 37
    invoke-direct {v4, v5, v2, p5}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v0, p4

    .line 47
    invoke-static {p4, v1}, Lcom/android/server/pm/CrossProfileResolver;->filterIfNotSystemUser(ILjava/util/List;)V

    .line 48
    .line 49
    .line 50
    return-object v1
.end method
