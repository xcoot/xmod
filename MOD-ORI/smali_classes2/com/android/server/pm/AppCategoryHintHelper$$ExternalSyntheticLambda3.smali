.class public final synthetic Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppCategoryHintHelper;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppCategoryHintHelper;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda3;->f$1:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda3;->f$1:Ljava/util/Map;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    check-cast p2, Lcom/android/server/pm/PackageSetting;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getCategory()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget p2, p2, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {v0, p1}, Lcom/android/server/pm/AppCategoryHintHelper;->getAppCategoryHintUser(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v3, v0, Lcom/android/server/pm/AppCategoryHintHelper;->mAppCategoryFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 40
    .line 41
    invoke-virtual {v3, p1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->getPackageCategory(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, p1}, Lcom/android/server/pm/AppCategoryHintHelper;->getAppCategoryHintDeveloper(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    filled-new-array {v1, p2, v2, v3, v0}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method
