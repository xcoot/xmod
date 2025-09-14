.class public final synthetic Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/association/AssociationStore;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/association/AssociationStore;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/companion/association/AssociationStore;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/companion/association/AssociationStore;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;->f$1:I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/android/server/companion/association/Associations;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    iget v3, v0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 17
    .line 18
    iput v3, v1, Lcom/android/server/companion/association/Associations;->mMaxId:I

    .line 19
    .line 20
    iget-object v3, v0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    .line 21
    .line 22
    check-cast v3, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    new-instance v4, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;

    .line 37
    .line 38
    const/4 v5, 0x2

    .line 39
    invoke-direct {v4, p0, v5}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;-><init>(II)V

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {v3}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iput-object v3, v1, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    .line 51
    .line 52
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    iget-object v0, v0, Lcom/android/server/companion/association/AssociationStore;->mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const-string v2, "CDM_AssociationDiskStore"

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v4, "Writing associations for user "

    .line 63
    .line 64
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v4, " to disk"

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p0}, Lcom/android/server/companion/association/AssociationDiskStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    monitor-enter p0

    .line 87
    :try_start_1
    new-instance v0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    invoke-direct {v0, v1}, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/association/Associations;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p0, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 93
    .line 94
    .line 95
    monitor-exit p0

    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    throw v0

    .line 100
    :catchall_1
    move-exception p0

    .line 101
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    throw p0
.end method
