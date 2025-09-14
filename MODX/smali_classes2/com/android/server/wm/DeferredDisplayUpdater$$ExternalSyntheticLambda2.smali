.class public final synthetic Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/DeferredDisplayUpdater;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DeferredDisplayUpdater;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/DeferredDisplayUpdater;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->continueScreenUnblocking()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v0, "DeferredDisplayUpdater"

    .line 16
    .line 17
    const-string v1, "Timeout waiting for the display switch transition to start"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->continueScreenUnblocking()V

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
