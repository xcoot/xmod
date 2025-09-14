.class public final Lcom/android/server/inputmethod/UserDataRepository$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/UserDataRepository;

.field public final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/UserDataRepository;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/UserDataRepository$1;->this$0:Lcom/android/server/inputmethod/UserDataRepository;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/UserDataRepository$1;->val$handler:Landroid/os/Handler;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 2
    .line 3
    new-instance p2, Lcom/android/server/inputmethod/UserDataRepository$1$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/inputmethod/UserDataRepository$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/UserDataRepository$1;II)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/inputmethod/UserDataRepository$1;->val$handler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onUserRemoved(Landroid/content/pm/UserInfo;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/inputmethod/UserDataRepository$1$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/inputmethod/UserDataRepository$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/UserDataRepository$1;II)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/inputmethod/UserDataRepository$1;->val$handler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
