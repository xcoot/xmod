.class public final synthetic Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/attention/AttentionManagerService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/attention/AttentionManagerService;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    .line 10
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    .line 12
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 15
    return-void

    .line 16
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v0, Landroid/content/Intent;

    .line 21
    const-string v1, "android.service.attention.AttentionService"

    .line 23
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    .line 34
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 36
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mConnection:Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;

    .line 38
    const v3, 0x4001001

    .line 41
    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
