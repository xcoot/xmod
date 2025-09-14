.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic val$packageActiveAdmins:Ljava/util/List;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;->val$packageActiveAdmins:Ljava/util/List;

    .line 8
    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;->val$userId:I

    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;->val$packageName:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;->val$packageActiveAdmins:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/ComponentName;

    .line 19
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 21
    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;->val$userId:I

    .line 23
    invoke-virtual {v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeAdminArtifacts(ILandroid/content/ComponentName;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 29
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;->val$packageName:Ljava/lang/String;

    .line 31
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$7;->val$userId:I

    .line 33
    invoke-virtual {v0, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->startUninstallIntent(ILjava/lang/String;)V

    .line 36
    return-void
.end method
