.class public final synthetic Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/search/SearchSessionId;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSessionId;

    iput-object p3, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSessionId;

    iput-object p2, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/app/search/SearchContext;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSessionId;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroid/os/IBinder;

    .line 15
    .line 16
    check-cast p1, Lcom/android/server/searchui/SearchUiPerUserService;

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/searchui/SearchUiPerUserService;->onCreateSearchSessionLocked(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSessionId;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroid/app/search/Query;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Landroid/app/search/ISearchCallback;

    .line 31
    .line 32
    check-cast p1, Lcom/android/server/searchui/SearchUiPerUserService;

    .line 33
    .line 34
    iget-object v2, p1, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 41
    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v2, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v2}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSessionId;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Landroid/app/search/Query;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p0, Landroid/app/search/SearchTargetEvent;

    .line 64
    .line 65
    check-cast p1, Lcom/android/server/searchui/SearchUiPerUserService;

    .line 66
    .line 67
    iget-object v2, p1, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 74
    .line 75
    if-nez v2, :cond_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    new-instance v2, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-direct {v2, v0, v1, p0, v3}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v2}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 85
    .line 86
    .line 87
    :goto_1
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
