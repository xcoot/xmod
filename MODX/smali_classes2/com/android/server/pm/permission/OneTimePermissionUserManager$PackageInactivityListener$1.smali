.class public final Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;
.super Landroid/app/UidObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;->this$1:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUidGone(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;->this$1:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    .line 2
    .line 3
    iget p2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onUidStateChanged(IIJI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;->this$1:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    .line 2
    .line 3
    iget p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    .line 4
    .line 5
    if-ne p1, p3, :cond_1

    .line 6
    .line 7
    const/4 p1, 0x4

    .line 8
    if-le p2, p1, :cond_0

    .line 9
    .line 10
    const/16 p1, 0x14

    .line 11
    .line 12
    if-eq p2, p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x2

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method
