.class public abstract Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static prefixImplicitDependency(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesLibraries()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesOptionalLibraries()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_2

    .line 14
    .line 15
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v2, "android.test.runner"

    .line 23
    .line 24
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {p0, v3, p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->addUsesLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-interface {p0, v3, p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method

.method public static prefixRequiredLibrary(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesLibraries()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getUsesOptionalLibraries()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    invoke-interface {p0, v0, p1}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->addUsesLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
.end method
