.class public final synthetic Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;->this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableSet()Ljava/util/stream/Collector;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/util/Set;

    .line 23
    .line 24
    iput-object p0, v0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mAllowedPackages:Ljava/util/Set;

    .line 25
    .line 26
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const/4 p0, 0x0

    .line 28
    iput-object p0, v0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mUpdatePendingUntil:Ljava/time/Instant;

    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p0
.end method
