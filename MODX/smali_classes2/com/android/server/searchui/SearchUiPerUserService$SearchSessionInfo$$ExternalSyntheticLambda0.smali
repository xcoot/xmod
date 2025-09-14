.class public final synthetic Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

.field public final synthetic f$1:Lcom/android/server/searchui/SearchUiPerUserService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;Lcom/android/server/searchui/SearchUiPerUserService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/searchui/SearchUiPerUserService;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/searchui/SearchUiPerUserService;

    .line 4
    .line 5
    check-cast p1, Landroid/app/search/ISearchCallback;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/android/server/searchui/SearchUiPerUserService;->registerEmptyQueryResultUpdateCallbackLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
