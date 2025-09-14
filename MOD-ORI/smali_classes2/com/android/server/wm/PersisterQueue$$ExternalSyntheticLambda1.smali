.class public final synthetic Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/PersisterQueue$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;->matches(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
