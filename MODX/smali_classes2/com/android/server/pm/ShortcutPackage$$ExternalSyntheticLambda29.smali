.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;Lcom/android/internal/infra/AndroidFuture;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda29;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda29;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda29;->f$1:Lcom/android/internal/infra/AndroidFuture;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda29;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda29;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda29;->f$1:Lcom/android/internal/infra/AndroidFuture;

    .line 9
    .line 10
    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda51;

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda51;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v1, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda43;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/pm/ShortcutPackage;I)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Ljava/util/List;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda29;->f$0:Lcom/android/server/pm/ShortcutPackage;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda29;->f$1:Lcom/android/internal/infra/AndroidFuture;

    .line 81
    .line 82
    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->getSearchSpec()Landroid/app/appsearch/SearchSpec;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, ""

    .line 89
    .line 90
    invoke-virtual {p1, v2, v1}, Landroid/app/appsearch/AppSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/SearchResults;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object v1, v0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 95
    .line 96
    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mExecutor:Ljava/util/concurrent/Executor;

    .line 97
    .line 98
    new-instance v2, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda29;

    .line 99
    .line 100
    const/4 v3, 0x1

    .line 101
    invoke-direct {v2, v0, p0, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/pm/ShortcutPackage;Lcom/android/internal/infra/AndroidFuture;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v1, v2}, Landroid/app/appsearch/SearchResults;->getNextPage(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
