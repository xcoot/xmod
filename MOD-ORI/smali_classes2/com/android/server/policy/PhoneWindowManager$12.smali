.class public final Lcom/android/server/policy/PhoneWindowManager$12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field public final synthetic val$awakenFromDreams:Z

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$12;->val$displayId:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager$12;->val$awakenFromDreams:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onKeyguardExitResult(Z)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 8
    .line 9
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$12;->val$displayId:I

    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager$12;->val$awakenFromDreams:Z

    .line 12
    .line 13
    const-string/jumbo v3, "startDockOrHome"

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-virtual {p1, v3, v4, p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(Ljava/lang/String;ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_0
    :goto_0
    return-void
.end method
