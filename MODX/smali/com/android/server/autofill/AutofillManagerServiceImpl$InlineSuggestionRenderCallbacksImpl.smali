.class public final Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 3
    const-string v0, "AutofillManagerServiceImpl"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v2, "remote service died: "

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 25
    iget-object p1, p1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 27
    monitor-enter p1

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$InlineSuggestionRenderCallbacksImpl;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 30
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetExtServiceLocked()V

    .line 33
    monitor-exit p1

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method
