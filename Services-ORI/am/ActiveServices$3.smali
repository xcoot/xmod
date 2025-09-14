.class public final Lcom/android/server/am/ActiveServices$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;

.field public final synthetic val$intent:Landroid/content/Intent;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$3;->val$intent:Landroid/content/Intent;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/am/ActiveServices$3;->val$userId:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$3;->this$0:Lcom/android/server/am/ActiveServices;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$3;->val$intent:Landroid/content/Intent;

    .line 8
    .line 9
    new-instance v2, Landroid/os/UserHandle;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/am/ActiveServices$3;->val$userId:I

    .line 12
    .line 13
    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
