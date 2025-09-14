.class public final Lcom/android/server/autofill/ui/OverlayControl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Binder;

    .line 6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/autofill/ui/OverlayControl;->mToken:Landroid/os/IBinder;

    .line 11
    const-class v0, Landroid/app/AppOpsManager;

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/app/AppOpsManager;

    .line 19
    iput-object p1, p0, Lcom/android/server/autofill/ui/OverlayControl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 21
    return-void
.end method


# virtual methods
.method public final setOverlayAllowed(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/OverlayControl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    xor-int/lit8 p1, p1, 0x1

    .line 7
    iget-object v3, p0, Lcom/android/server/autofill/ui/OverlayControl;->mToken:Landroid/os/IBinder;

    .line 9
    const/4 v5, -0x1

    .line 10
    const/16 v1, 0x18

    .line 12
    const/4 v4, 0x0

    .line 13
    move v2, p1

    .line 14
    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    .line 17
    iget-object v1, p0, Lcom/android/server/autofill/ui/OverlayControl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 19
    iget-object v4, p0, Lcom/android/server/autofill/ui/OverlayControl;->mToken:Landroid/os/IBinder;

    .line 21
    const/4 v6, -0x1

    .line 22
    const/16 v2, 0x2d

    .line 24
    const/4 v5, 0x0

    .line 25
    move v3, p1

    .line 26
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    .line 29
    :cond_0
    return-void
.end method
