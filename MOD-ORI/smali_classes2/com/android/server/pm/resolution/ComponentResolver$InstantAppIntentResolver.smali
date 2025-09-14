.class public final Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mOrderResult:Landroid/util/ArrayMap;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final filterResults(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_4

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 24
    .line 25
    iget-object v2, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/util/Pair;

    .line 38
    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 43
    .line 44
    if-ne v4, v2, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    add-int/lit8 v0, v0, -0x1

    .line 64
    .line 65
    add-int/lit8 v1, v1, -0x1

    .line 66
    .line 67
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    :goto_2
    return-void
.end method

.method public final getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 2
    .line 3
    return-object p1
.end method

.method public final bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 6
    .line 7
    invoke-virtual {p1, p4}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 p3, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    :goto_0
    move-object p2, p3

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object p1, p2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->getOrder()I

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p5

    .line 30
    iget-object p6, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {p6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p6

    .line 36
    check-cast p6, Landroid/util/Pair;

    .line 37
    .line 38
    if-eqz p6, :cond_1

    .line 39
    .line 40
    iget-object p6, p6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p6, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p6

    .line 48
    if-lt p6, p4, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p3, p2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 52
    .line 53
    if-lez p4, :cond_2

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 56
    .line 57
    new-instance p4, Landroid/util/Pair;

    .line 58
    .line 59
    invoke-direct {p4, p5, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_1
    return-object p2
.end method
