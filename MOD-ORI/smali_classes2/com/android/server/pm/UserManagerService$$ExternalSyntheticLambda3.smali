.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/KeyguardManager$KeyguardLockedStateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/UserManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKeyguardLockedStateChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->tryAutoLockingPrivateSpaceOnKeyguardChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
