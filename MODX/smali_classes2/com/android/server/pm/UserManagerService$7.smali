.class public final Lcom/android/server/pm/UserManagerService$7;
.super Landroid/content/IIntentReceiver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$7;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/server/pm/UserManagerService$7;->val$userId:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/Thread;

    .line 2
    .line 3
    iget p2, p0, Lcom/android/server/pm/UserManagerService$7;->val$userId:I

    .line 4
    .line 5
    new-instance p3, Lcom/android/server/pm/UserManagerService$7$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {p3, p0, p2}, Lcom/android/server/pm/UserManagerService$7$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserManagerService$7;I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
