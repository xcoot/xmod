.class public final synthetic Lcom/android/server/content/ContentService$ObserverCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/ContentService$ObserverCollector$Key;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/ContentService$ObserverCollector$Key;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/content/ContentService$ObserverCollector$Key;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/content/ContentService$ObserverCollector$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/content/ContentService$ObserverCollector$Key;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/content/ContentService$ObserverCollector$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    .line 4
    .line 5
    :try_start_0
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    .line 6
    .line 7
    iget-boolean v2, v0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    new-array v3, v3, [Landroid/net/Uri;

    .line 14
    .line 15
    invoke-interface {p0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, [Landroid/net/Uri;

    .line 20
    .line 21
    iget v3, v0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    .line 22
    .line 23
    iget v0, v0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    .line 24
    .line 25
    invoke-interface {v1, v2, p0, v3, v0}, Landroid/database/IContentObserver;->onChangeEtc(Z[Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :catch_0
    return-void
.end method
