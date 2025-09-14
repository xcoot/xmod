.class public final synthetic Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerInternal;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/pm/PackageSetting;

.field public final synthetic f$3:Landroid/os/storage/StorageManagerInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerInternal;ILcom/android/server/pm/PackageSetting;Landroid/os/storage/StorageManagerInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/UserManagerInternal;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/pm/PackageSetting;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$3:Landroid/os/storage/StorageManagerInternal;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/pm/PackageSetting;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/AppDataHelper$$ExternalSyntheticLambda2;->f$3:Landroid/os/storage/StorageManagerInternal;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v0, v2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/os/UserHandle;->getUid(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p0, v1, v0}, Landroid/os/storage/StorageManagerInternal;->prepareAppDataAfterInstall(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
