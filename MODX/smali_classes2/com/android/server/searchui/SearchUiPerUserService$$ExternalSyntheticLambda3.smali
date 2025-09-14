.class public final synthetic Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/search/SearchSessionId;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$0:Landroid/app/search/SearchSessionId;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$0:Landroid/app/search/SearchSessionId;

    iput-object p2, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/app/search/SearchContext;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$0:Landroid/app/search/SearchSessionId;

    .line 11
    .line 12
    check-cast p1, Landroid/service/search/ISearchUiService;

    .line 13
    .line 14
    invoke-interface {p1, v0, p0}, Landroid/service/search/ISearchUiService;->onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$0:Landroid/app/search/SearchSessionId;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Landroid/app/search/ISearchCallback;

    .line 23
    .line 24
    check-cast p1, Landroid/service/search/ISearchUiService;

    .line 25
    .line 26
    invoke-interface {p1, v0, p0}, Landroid/service/search/ISearchUiService;->onUnregisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$0:Landroid/app/search/SearchSessionId;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Landroid/app/search/ISearchCallback;

    .line 35
    .line 36
    check-cast p1, Landroid/service/search/ISearchUiService;

    .line 37
    .line 38
    invoke-interface {p1, v0, p0}, Landroid/service/search/ISearchUiService;->onRegisterEmptyQueryResultUpdateCallback(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
