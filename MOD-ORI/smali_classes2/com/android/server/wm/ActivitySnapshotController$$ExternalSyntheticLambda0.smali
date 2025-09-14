.class public final synthetic Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivitySnapshotController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivitySnapshotController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivitySnapshotController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivitySnapshotController;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
