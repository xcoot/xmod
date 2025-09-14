.class public final Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.UID_REMOVED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p1, "android.intent.extra.UID"

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object p2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 21
    .line 22
    iget-object p2, p2, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-static {p2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->-$$Nest$mcancel(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
