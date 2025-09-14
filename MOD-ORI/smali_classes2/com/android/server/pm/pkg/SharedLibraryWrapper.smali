.class public final Lcom/android/server/pm/pkg/SharedLibraryWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/pkg/SharedLibrary;


# instance fields
.field public cachedDependenciesList:Ljava/util/List;

.field public final mInfo:Landroid/content/pm/SharedLibraryInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/SharedLibraryInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getAllCodePaths()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getDeclaringPackage()Landroid/content/pm/VersionedPackage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getDependencies()Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->cachedDependenciesList:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->cachedDependenciesList:Ljava/util/List;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ge v2, v3, :cond_1

    .line 31
    .line 32
    new-instance v3, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Landroid/content/pm/SharedLibraryInfo;

    .line 39
    .line 40
    invoke-direct {v3, v4}, Lcom/android/server/pm/pkg/SharedLibraryWrapper;-><init>(Landroid/content/pm/SharedLibraryInfo;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->cachedDependenciesList:Ljava/util/List;

    .line 54
    .line 55
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->cachedDependenciesList:Ljava/util/List;

    .line 56
    .line 57
    return-object p0
.end method

.method public final getDependentPackages()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependentPackages()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getVersion()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final isNative()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
