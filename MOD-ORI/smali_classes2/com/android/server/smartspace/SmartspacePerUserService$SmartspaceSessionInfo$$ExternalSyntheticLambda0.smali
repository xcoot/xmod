.class public final synthetic Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

.field public final synthetic f$1:Lcom/android/server/smartspace/SmartspacePerUserService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/smartspace/SmartspacePerUserService;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/smartspace/SmartspacePerUserService;

    .line 4
    .line 5
    check-cast p1, Landroid/app/smartspace/ISmartspaceCallback;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v2, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v2, v0, p1, v3}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;-><init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService$1(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    iget-object p0, v1, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method
