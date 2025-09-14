.class public final synthetic Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/infra/AbstractMasterSystemService;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 6
    iput-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 3
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v0, "Updating for user "

    .line 10
    const-string v1, "Restriction did not change for user "

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p2, p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    move-result p0

    .line 17
    iget-object p2, p3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 19
    monitor-enter p2

    .line 20
    :try_start_0
    iget-object v2, p3, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    .line 22
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 25
    move-result v2

    .line 26
    if-ne v2, p0, :cond_0

    .line 28
    iget-boolean v2, p3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 30
    if-eqz v2, :cond_0

    .line 32
    iget-object p0, p3, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 34
    new-instance p3, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    monitor-exit p2

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget-object v1, p3, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v0, ": disabled="

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p3, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    .line 80
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 83
    invoke-virtual {p3, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 86
    invoke-virtual {p3, p1, p0}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceListLocked(IZ)V

    .line 89
    monitor-exit p2

    .line 90
    :goto_0
    return-void

    .line 91
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0
.end method
