.class public final synthetic Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/RemovePackageHelper;

.field public final synthetic f$1:Landroid/util/SparseBooleanArray;

.field public final synthetic f$2:Lcom/android/server/pm/PreferredActivityHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/RemovePackageHelper;Landroid/util/SparseBooleanArray;Lcom/android/server/pm/PreferredActivityHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/RemovePackageHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/PreferredActivityHelper;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/RemovePackageHelper;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseBooleanArray;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/PreferredActivityHelper;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    iget-object v2, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;Landroid/util/SparseBooleanArray;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, v0, Lcom/android/server/pm/RemovePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
