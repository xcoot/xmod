.class public final synthetic Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/ProxyManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/ProxyManager;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/accessibility/ProxyManager;

    .line 6
    iput p2, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;->f$2:I

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/accessibility/ProxyManager;

    .line 3
    iget v1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;->f$1:I

    .line 5
    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda3;->f$2:I

    .line 7
    iget-object v2, v0, Lcom/android/server/accessibility/ProxyManager;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    new-instance v3, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;

    .line 12
    invoke-direct {v3, v1, p0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda10;-><init>(II)V

    .line 15
    invoke-static {v3}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/ProxyManager;->broadcastToClientsLocked(Ljava/util/function/Consumer;)V

    .line 22
    monitor-exit v2

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method
