.class public final Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/ActivityManager$OnUidImportanceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/association/DisassociationProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/association/DisassociationProcessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 6
    return-void
.end method


# virtual methods
.method public final onUidImportance(II)V
    .locals 4

    .line 1
    const/16 v0, 0xc8

    .line 3
    if-gt p2, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 8
    iget-object p2, p2, Lcom/android/server/companion/association/DisassociationProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 10
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    if-nez p2, :cond_1

    .line 16
    return-void

    .line 17
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 20
    move-result p1

    .line 21
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 23
    iget-object v0, v0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 25
    iget-object v1, v0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    new-instance v2, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;

    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-direct {v2, p1, v3, p2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda7;-><init>(IILjava/lang/String;)V

    .line 38
    invoke-static {v0, v2}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 41
    move-result-object p1

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object p1

    .line 47
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_2

    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Landroid/companion/AssociationInfo;

    .line 59
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 61
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    .line 64
    move-result p2

    .line 65
    invoke-virtual {v0, p2}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(I)V

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 71
    iget-object p1, p1, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 73
    iget-object p2, p1, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 75
    monitor-enter p2

    .line 76
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    .line 79
    move-result-object p1

    .line 80
    new-instance v0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda2;

    .line 82
    const/4 v1, 0x1

    .line 83
    invoke-direct {v0, v1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda2;-><init>(I)V

    .line 86
    invoke-static {p1, v0}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 89
    move-result-object p1

    .line 90
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_3

    .line 97
    iget-object p0, p0, Lcom/android/server/companion/association/DisassociationProcessor$OnPackageVisibilityChangeListener;->this$0:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    const-string p1, "CDM_DisassociationProcessor"

    .line 104
    const-string p2, "Stop listening to uid importance changes."

    .line 106
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :try_start_2
    new-instance p2, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;

    .line 111
    const/4 v0, 0x0

    .line 112
    invoke-direct {p2, p0, v0}, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/association/DisassociationProcessor;I)V

    .line 115
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    goto :goto_1

    .line 119
    :catch_0
    const-string p0, "Failed to stop listening to uid importance changes."

    .line 121
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_3
    :goto_1
    return-void

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    throw p0

    .line 128
    :catchall_1
    move-exception p0

    .line 129
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 130
    throw p0
.end method
