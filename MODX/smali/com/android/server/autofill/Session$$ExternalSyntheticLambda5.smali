.class public final synthetic Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/Session;

.field public final synthetic f$1:Ljava/util/function/Consumer;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/InlineSuggestionRequestConsumer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/autofill/Session;

    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/Consumer;

    .line 8
    iput p3, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/autofill/Session;

    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;->f$1:Ljava/util/function/Consumer;

    .line 5
    iget p0, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;->f$2:I

    .line 7
    check-cast p1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 15
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 25
    move-result-object p0

    .line 26
    iput-object p0, v0, Lcom/android/server/autofill/Session;->mLastInlineSuggestionsRequest:Landroid/util/Pair;

    .line 28
    monitor-exit v1

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method
