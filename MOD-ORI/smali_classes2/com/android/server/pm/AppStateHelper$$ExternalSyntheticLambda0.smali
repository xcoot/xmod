.class public final synthetic Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/ArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;->f$3:Landroid/util/ArraySet;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;->f$3:Landroid/util/ArraySet;

    .line 8
    .line 9
    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesLibrariesSorted()[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v3, v0}, Lcom/android/server/pm/AppStateHelper;->containsAny([Ljava/lang/String;Ljava/util/List;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesOptionalLibrariesSorted()[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3, v0}, Lcom/android/server/pm/AppStateHelper;->containsAny([Ljava/lang/String;Ljava/util/List;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesStaticLibrariesSorted()[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, v1}, Lcom/android/server/pm/AppStateHelper;->containsAny([Ljava/lang/String;Ljava/util/List;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesSdkLibrariesSorted()[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0, v2}, Lcom/android/server/pm/AppStateHelper;->containsAny([Ljava/lang/String;Ljava/util/List;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    return-void
.end method
