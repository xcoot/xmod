.class public final synthetic Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppCategoryHintHelper;

.field public final synthetic f$1:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppCategoryHintHelper;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda6;->f$1:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda6;->f$1:Ljava/util/HashMap;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, -0x1

    .line 28
    :goto_0
    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/AppCategoryHintHelper;->sendAppCategoryBroadcast(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
