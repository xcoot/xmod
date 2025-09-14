.class public final synthetic Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/smartspace/SmartspaceSessionId;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    iput-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/app/smartspace/SmartspaceConfig;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    .line 11
    .line 12
    check-cast p1, Landroid/service/smartspace/ISmartspaceService;

    .line 13
    .line 14
    invoke-interface {p1, v0, p0}, Landroid/service/smartspace/ISmartspaceService;->onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Landroid/app/smartspace/SmartspaceTargetEvent;

    .line 23
    .line 24
    check-cast p1, Landroid/service/smartspace/ISmartspaceService;

    .line 25
    .line 26
    invoke-interface {p1, v0, p0}, Landroid/service/smartspace/ISmartspaceService;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
