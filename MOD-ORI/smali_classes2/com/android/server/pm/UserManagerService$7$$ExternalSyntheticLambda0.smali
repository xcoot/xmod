.class public final synthetic Lcom/android/server/pm/UserManagerService$7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService$7;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService$7;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$7$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerService$7;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/UserManagerService$7$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$7$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerService$7;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/pm/UserManagerService$7$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$7;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p0}, Landroid/app/ActivityManagerInternal;->onUserRemoved(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$7;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
