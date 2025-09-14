.class public final synthetic Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/people/PeopleService$LocalService;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/PeopleService$LocalService;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/PeopleService$LocalService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

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
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/PeopleService$LocalService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/app/prediction/IPredictionCallback;

    .line 11
    .line 12
    check-cast p1, Ljava/util/List;

    .line 13
    .line 14
    sget v1, Lcom/android/server/people/PeopleService$LocalService;->$r8$clinit:I

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    :try_start_0
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v0}, Landroid/app/prediction/IPredictionCallback;->onResult(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    const-string p1, "Failed to calling callback"

    .line 30
    .line 31
    const-string v0, "PeopleService"

    .line 32
    .line 33
    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/PeopleService$LocalService;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Landroid/app/prediction/AppPredictionSessionId;

    .line 42
    .line 43
    check-cast p1, Lcom/android/server/people/SessionInfo;

    .line 44
    .line 45
    sget v1, Lcom/android/server/people/PeopleService$LocalService;->$r8$clinit:I

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object p1, p1, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->kill()V

    .line 53
    .line 54
    .line 55
    iget-object p1, v0, Lcom/android/server/people/PeopleService$LocalService;->mSessions:Ljava/util/Map;

    .line 56
    .line 57
    check-cast p1, Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
