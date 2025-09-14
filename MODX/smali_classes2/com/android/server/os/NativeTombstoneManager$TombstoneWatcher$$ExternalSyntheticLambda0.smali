.class public final synthetic Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, ".tmp"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, v0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    .line 18
    .line 19
    new-instance v1, Ljava/io/File;

    .line 20
    .line 21
    sget-object v2, Lcom/android/server/os/NativeTombstoneManager;->TOMBSTONE_DIR:Ljava/io/File;

    .line 22
    .line 23
    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/android/server/os/NativeTombstoneManager;->handleTombstone(Ljava/io/File;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method
