.class public final synthetic Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/search/SearchSessionId;

.field public final synthetic f$1:Landroid/app/search/ISearchCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;->f$0:Landroid/app/search/SearchSessionId;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;->f$1:Landroid/app/search/ISearchCallback;

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
    iget v0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;->f$0:Landroid/app/search/SearchSessionId;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;->f$1:Landroid/app/search/ISearchCallback;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/searchui/SearchUiPerUserService;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/android/server/searchui/SearchUiPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-direct {v2, v0, p0, v3}, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda3;-><init>(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2}, Lcom/android/server/searchui/SearchUiPerUserService;->resolveService(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "Removing callback for session Id="

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mSessionId:Landroid/app/search/SearchSessionId;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, " and callback="

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-interface {p0}, Landroid/app/search/ISearchCallback;->asBinder()Landroid/os/IBinder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v0, "SearchUiPerUserService"

    .line 64
    .line 65
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget-object p1, v1, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 69
    .line 70
    invoke-virtual {p1, p0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;->f$0:Landroid/app/search/SearchSessionId;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda3;->f$1:Landroid/app/search/ISearchCallback;

    .line 77
    .line 78
    check-cast p1, Lcom/android/server/searchui/SearchUiPerUserService;

    .line 79
    .line 80
    invoke-virtual {p1, v0, p0}, Lcom/android/server/searchui/SearchUiPerUserService;->registerEmptyQueryResultUpdateCallbackLocked(Landroid/app/search/SearchSessionId;Landroid/app/search/ISearchCallback;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
