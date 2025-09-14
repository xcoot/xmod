.class public final synthetic Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/smartspace/SmartspaceSessionId;

.field public final synthetic f$1:Landroid/app/smartspace/ISmartspaceCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;->f$1:Landroid/app/smartspace/ISmartspaceCallback;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;->f$1:Landroid/app/smartspace/ISmartspaceCallback;

    .line 9
    .line 10
    check-cast p1, Landroid/service/smartspace/ISmartspaceService;

    .line 11
    .line 12
    invoke-interface {p1, v0, p0}, Landroid/service/smartspace/ISmartspaceService;->registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;->f$1:Landroid/app/smartspace/ISmartspaceCallback;

    .line 19
    .line 20
    check-cast p1, Landroid/service/smartspace/ISmartspaceService;

    .line 21
    .line 22
    invoke-interface {p1, v0, p0}, Landroid/service/smartspace/ISmartspaceService;->unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
