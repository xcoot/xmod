.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final synthetic val$finalTargetId:I

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 5
    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->val$intent:Landroid/content/Intent;

    .line 7
    iput p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->val$finalTargetId:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 8
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 10
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->val$intent:Landroid/content/Intent;

    .line 12
    new-instance v2, Landroid/os/UserHandle;

    .line 14
    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->val$finalTargetId:I

    .line 16
    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 19
    const-string/jumbo p0, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 22
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 28
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 30
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->val$intent:Landroid/content/Intent;

    .line 32
    new-instance v2, Landroid/os/UserHandle;

    .line 34
    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->val$finalTargetId:I

    .line 36
    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 39
    const-string/jumbo p0, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 42
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
