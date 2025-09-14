.class public final synthetic Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/search/SearchSessionId;

.field public final synthetic f$1:Landroid/app/search/Query;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSessionId;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/app/search/Query;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSessionId;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/app/search/Query;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/app/search/ISearchCallback;

    .line 13
    .line 14
    check-cast p1, Landroid/service/search/ISearchUiService;

    .line 15
    .line 16
    invoke-interface {p1, v0, v1, p0}, Landroid/service/search/ISearchUiService;->onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSessionId;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$1:Landroid/app/search/Query;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Landroid/app/search/SearchTargetEvent;

    .line 27
    .line 28
    check-cast p1, Landroid/service/search/ISearchUiService;

    .line 29
    .line 30
    invoke-interface {p1, v0, v1, p0}, Landroid/service/search/ISearchUiService;->onNotifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
