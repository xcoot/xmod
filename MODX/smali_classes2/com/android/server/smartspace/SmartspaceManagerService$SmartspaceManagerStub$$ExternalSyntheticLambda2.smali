.class public final synthetic Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/smartspace/SmartspaceSessionId;


# direct methods
.method public synthetic constructor <init>(Landroid/app/smartspace/SmartspaceSessionId;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda2;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/smartspace/SmartspacePerUserService;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/server/smartspace/SmartspacePerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-direct {v0, p0, v1}, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda0;-><init>(Landroid/app/smartspace/SmartspaceSessionId;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/android/server/smartspace/SmartspacePerUserService;->resolveService$1(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)Z

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :pswitch_0
    invoke-virtual {p1, p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->onDestroyLocked(Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
