.class public final synthetic Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Integer;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;->mPackageMap:Ljava/util/Map;

    .line 10
    .line 11
    check-cast v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, -0x1

    .line 27
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eq v0, p2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method
