.class public final Lcom/android/server/pm/ShortcutPackage$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic val$cb:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$1;->this$0:Lcom/android/server/pm/ShortcutPackage;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$1;->val$cb:Ljava/util/function/Consumer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchBatchResult;->getSuccesses()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda38;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/util/List;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$1;->val$cb:Ljava/util/function/Consumer;

    .line 34
    .line 35
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onSystemError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const-string p0, "ShortcutService"

    .line 2
    .line 3
    const-string v0, "Error retrieving shortcuts"

    .line 4
    .line 5
    invoke-static {p0, v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method
