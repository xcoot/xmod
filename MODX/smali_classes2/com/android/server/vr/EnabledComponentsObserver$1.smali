.class public final Lcom/android/server/vr/EnabledComponentsObserver$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$o:Lcom/android/server/vr/EnabledComponentsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/EnabledComponentsObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSomePackagesChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
