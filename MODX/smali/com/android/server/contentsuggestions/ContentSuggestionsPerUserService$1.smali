.class public final Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;


# direct methods
.method public constructor <init>(Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 3
    const-string p1, "ContentSuggestionsPerUserService"

    .line 5
    const-string/jumbo v0, "remote content suggestions service died"

    .line 8
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    .line 13
    iget-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 15
    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    .line 23
    :cond_0
    return-void
.end method
