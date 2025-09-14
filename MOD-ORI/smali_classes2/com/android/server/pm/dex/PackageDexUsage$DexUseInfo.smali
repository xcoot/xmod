.class public final Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mClassLoaderContext:Ljava/lang/String;

.field public mIsUsedByOtherApps:Z

.field public final mLoaderIsas:Ljava/util/Set;

.field public final mLoadingPackages:Ljava/util/Set;

.field public final mOwnerUserId:I


# direct methods
.method public static -$$Nest$mmerge(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Z)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v3, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v3, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v3, v1

    .line 15
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    .line 18
    .line 19
    iget-object v4, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    .line 20
    .line 21
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-object v4, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    .line 26
    .line 27
    iget-object v5, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    .line 28
    .line 29
    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iget-object v5, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const-string p2, "=UnsupportedClassLoaderContext="

    .line 43
    .line 44
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    iget-object p2, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    const-string p1, "=VariableClassLoaderContext="

    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 68
    .line 69
    :cond_4
    :goto_2
    if-nez v3, :cond_6

    .line 70
    .line 71
    iget-boolean p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 72
    .line 73
    if-ne v0, p1, :cond_6

    .line 74
    .line 75
    if-nez v4, :cond_6

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v5, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_5

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_5
    move v1, v2

    .line 87
    :cond_6
    :goto_3
    return v1
.end method

.method public constructor <init>(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget-boolean v0, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    iput-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 10
    iget v0, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    iput v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    .line 11
    iget-object v0, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    .line 13
    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 3
    iput p2, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    .line 4
    iput-object p3, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    if-eqz p4, :cond_0

    .line 6
    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    return-void
.end method
