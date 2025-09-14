.class public final synthetic Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/ScreenOnKeeper;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/ScreenOnKeeper;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/ScreenOnKeeper;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/ScreenOnKeeper;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/power/ScreenOnKeeper;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/ScreenOnKeeper;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/power/ScreenOnKeeper;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 25
    .line 26
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

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
